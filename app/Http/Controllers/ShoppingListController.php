<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\ShoppingList;
use App\Models\Recipes;
use App\Models\RecipeIngredients;
use App\Models\Pantry;

class ShoppingListController extends Controller
{
    //get all shopping list items for logged in user
    public function index(){
        $user = JWTAuth::parseToken()->authenticate();

        $items=ShoppingList::where('user_id',$user->id)->with(['recipe','ingredient'])->get();

        return response()->json($items,200);
    }

    //add new item (manual or linked to recipe/ingredient)
    public function store(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $validated = $request->validate([
            'recipe_id'     => 'nullable|exists:recipes,id',
            'ingredient_id' =>'nullable|exists:ingredients,id',
            'name'          =>'required|string|max:255',
            'quantity'      => 'nullable|numeric|min:0',
            'unit'          =>'nullable|string|max:50',
        ]);
        $validated['user_id'] = $user->id;

        $item = ShoppingList::create($validated);
        
        return response()->json([
            'message' => 'Item added to shopping list',
            'item'    => $item
        ], 201);
    }

    //update item 
    public function update(Request $request ,$id){
        $user = JWTAuth::parseToken()->authenticate();
        $item = ShoppingList::where('user_id',$user->id)->findOrFail($id);

        $validated = $request->validate([
            'quantity' => 'nullable|numeric|min:0',
            'unit'     => 'nullable|string|max:50',
            'status'   => 'nullable|in:Pending,Bought',
        ],[
            'status.in' => 'status is must be Pending or Bought',
        ]);
        
        $item->update($validated);

        return response()->json([
            'message' => 'Shopping list item updated successfully',
            'item'    => $item
        ], 200);
    }

    //delete item
    public function destroy($id){
        $user = JWTAuth::parseToken()->authenticate();

        $item = ShoppingList::where('user_id', $user->id)->findOrFail($id);
        $item->delete();

        return response()->json(['message' => 'Item deleted from shopping list'], 200);
    }

    //add missing ingredients from recipe
    public function addMissingFromRecipe($recipeId){
        $user = JWTAuth::parseToken()->authenticate();

        $recipe = Recipes::findOrFail($recipeId);
        $ingredients = RecipeIngredients::where('recipe_id',$recipeId)->get();
        $added = [];
        foreach($ingredients as $ingredient){
            $pantryItem = Pantry::where('user_id',$user->id)
                ->where('ingredient_id',$ingredient->ingredient_id)
                ->first();

            $needsAdding = false;
            $missingQty = $ingredient->quantity;

            if(!$pantryItem){ //ingredient not exist in pantry
                $needsAdding = true;
            }
            elseif($pantryItem->quantity < $ingredient->quantity){
                $needsAdding = true;
                $missingQty = $ingredient->quantity - $pantryItem->quantity;
            }
            if($needsAdding){
                $item = ShoppingList::updateOrCreate(
                    [
                        'user_id'       => $user->id,
                        'recipe_id'     => $recipeId,
                        'ingredient_id' => $ingredient->ingredient_id,
                    ],
                    [
                        'name'     => $ingredient->name,
                        'quantity' => $missingQty, // ✅ النقص بس
                        'unit'     => $ingredient->unit,
                        'status'   => 'Pending',
                    ]   
                );
                $added[] = $item;
            }
        }
        return response()->json([
            'message' => 'Missing ingredients added to shopping list',
            'items'   => $added
        ], 200);
    }
}
