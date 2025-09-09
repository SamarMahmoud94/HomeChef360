<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\Ingredients;
use App\Models\Pantry;
use Carbon\Carbon;

class IngredientsController extends Controller
{
    //Get all ingredients in pantry (for the logged-in user)
    public function index(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $ingredients = Pantry::with('ingredient')
            ->where('user_id',$user->id)
            ->get()
            ->pluck('ingredient');

            return response()->json($ingredients,200);
    }

    //Add ingredient (and add to pantry for user)
    public function store(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $request->validate([
            'name' => 
            [
                'required',
                'regex:/^[a-zA-Z\s]+$/u',
                'max:255',
            ],
            'quantity' => 
            [
                'required',
                'numeric',
                'gt:0',
            ],
            'unit' =>
            [
                'required',
                'string',
            ],
            'expiry_date' =>
            [
                'required',
                'date',
                'after:today',
            ], 
        ],
        [
            'name.required'     => 'Ingredient name must not be blank',
            'name.regex'        => 'Ingredient name must not contain numbers or symbols',
            'quantity.required' => 'Quantity must not be blank',
            'quantity.numeric'  => 'Quantity must be numeric',
            'quantity.gt'       => 'Quantity must be greater than 0',
            'unit.required'     => 'Unit must not be blank',
            'expiry_date.after' => 'Expiry date must be a future date',
        ]);

        $ingredient = Ingredients::create([
            'name'        => $request->name,
            'quantity'    => $request->quantity,
            'unit'        =>$request->unit,
            'expiry_date' => $request->expiry_date,

        ]);

        Pantry::create([
            'user_id'       => $user->id,
            'ingredient_id' => $ingredient->id,
        ]);

        return response()->json([
            'message' => 'Ingredient added successfully',
            'data'    => $ingredient
        ],201);
    }

    //Update ingredient (updates globally)
    public function update(Request $request ,$id){
        $user = JWTAuth::parseToken()->authenticate();

        $pantryItem = Pantry::where('user_id', $user->id)
        ->where('ingredient_id', $id)
        ->firstOrFail();

        $ingredient = $pantryItem->ingredient;

        $request->validate([
            'name'        => ['sometimes','required','regex:/^[a-zA-Z\s]+$/u','max:255'],
            'quantity'    => ['sometimes','required','numeric','gt:0'],
            'unit'        => ['sometimes','required','string'],
            'expiry_date' => ['sometimes','required','date','after:today'],
        ]);
         

        $ingredient->update($request->only(['name','quantity','unit','expiry_date']));

        return response()->json([
            'message' => 'Ingredient updated successfully',
            'data'    => $ingredient
        ],200);
    }

    //Delete ingredient (removes from pantry automatically)
    public function destroy($id){
        $user = JWTAuth::parseToken()->authenticate();

        $pantryItem = Pantry::where('user_id', $user->id)
        ->where('ingredient_id', $id)
        ->firstOrFail();
        
        $ingredient = $pantryItem->ingredient;

        $ingredient->delete();
        $pantryItem->delete();

        return response()->json([
            'message' => 'Ingredient deleted successfully'
        ], 200);
    }
}
