<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\Ingredients;
use Carbon\Carbon;

class IngredientsController extends Controller
{
    //Get all ingredients 
    public function index(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $ingredients = Ingredients::all();
            return response()->json($ingredients,200);
    }

    // Get single ingredient
    public function show($id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $ingredient = Ingredients::findOrFail($id);
        return response()->json($ingredient, 200);
    }

    //Add ingredient 
    public function store(Request $request){
        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'Only admin can add ingredients'],403);
        }

        $request->validate([
            'name'              => 'required|string|max:255|unique:ingredients,name',
            'unit'              => 'nullable|string|max:50',
            'calories_per_unit' => 'nullable|numeric',
            'protein_per_unit'  => 'nullable|numeric',
            'carbs_per_unit'    => 'nullable|numeric',
            'fat_per_unit'      => 'nullable|numeric',
            'fiber_per_unit'    => 'nullable|numeric',
            'sugar_per_unit'    => 'nullable|numeric',
            'sodium_per_unit'   => 'nullable|numeric',
            'image_url'         => 'nullable|url',
            'description'       => 'nullable|string',
            'category'          => 'required|in:Vegetables,Fruits,Meat & Poultry,Seafood,Dairy & Eggs,Grains & Cereals,Spices & Herbs,Condiments & Sauces,Baking & Desserts,Beverages,Frozen Foods,Canned & Preserved,Nuts & Seeds,Oils & Fats,Other',
        ], [
            'name.required'     => 'Ingredient name is required.',
            'name.max'          => 'Ingredient name must not exceed 255 characters.',
            'unit.max'          => 'Unit must not exceed 50 characters.',
            'category.required' => 'Category is required.',
            'category.in'       => 'Category must be one of the predefined values.',
            'image_url.url'     => 'Image URL must be a valid URL.',
            'calories_per_unit.numeric' => 'Calories must be a number.',
            'protein_per_unit.numeric'  => 'Protein must be a number.',
            'carbs_per_unit.numeric'    => 'Carbs must be a number.',
            'fat_per_unit.numeric'      => 'Fat must be a number.',
            'fiber_per_unit.numeric'    => 'Fiber must be a number.',
            'sugar_per_unit.numeric'    => 'Sugar must be a number.',
            'sodium_per_unit.numeric'   => 'Sodium must be a number.',
        ]);

        $ingredient = Ingredients::create($request->all());

        return response()->json([
            'message' => 'Ingredient created successfully',
            'data'    => $ingredient
        ],201);
    }

    //Update ingredient 
    public function update(Request $request ,$id){
        $user = JWTAuth::parseToken()->authenticate();

        if($user->role !== 'admin'){
            return response()->json(['error'=>'Only admin can update ingredients'],403);
        }

        $ingredient = Ingredients::findOrFail($id);

        $request->validate([
            'name'              => 'sometimes|required|string|max:255|unique:ingredients,name,'.$ingredient->id,
            'unit'              => 'sometimes|nullable|string|max:50',
            'calories_per_unit' => 'sometimes|nullable|numeric',
            'protein_per_unit'  => 'sometimes|nullable|numeric',
            'carbs_per_unit'    => 'sometimes|nullable|numeric',
            'fat_per_unit'      => 'sometimes|nullable|numeric',
            'fiber_per_unit'    => 'sometimes|nullable|numeric',
            'sugar_per_unit'    => 'sometimes|nullable|numeric',
            'sodium_per_unit'   => 'sometimes|nullable|numeric',
            'image_url'         => 'sometimes|nullable|url',
            'description'       => 'sometimes|nullable|string',
            'category'          => 'sometimes|required|in:Vegetables,Fruits,Meat & Poultry,Seafood,Dairy & Eggs,Grains & Cereals,Spices & Herbs,Condiments & Sauces,Baking & Desserts,Beverages,Frozen Foods,Canned & Preserved,Nuts & Seeds,Oils & Fats,Other',
        ], [
            'name.required'     => 'Ingredient name is required.',
            'name.max'          => 'Ingredient name must not exceed 255 characters.',
            'unit.max'          => 'Unit must not exceed 50 characters.',
            'category.required' => 'Category is required.',
            'category.in'       => 'Category must be one of the predefined values.',
            'image_url.url'     => 'Image URL must be a valid URL.',
            'calories_per_unit.numeric' => 'Calories must be a number.',
            'protein_per_unit.numeric'  => 'Protein must be a number.',
            'carbs_per_unit.numeric'    => 'Carbs must be a number.',
            'fat_per_unit.numeric'      => 'Fat must be a number.',
            'fiber_per_unit.numeric'    => 'Fiber must be a number.',
            'sugar_per_unit.numeric'    => 'Sugar must be a number.',
            'sodium_per_unit.numeric'   => 'Sodium must be a number.',
        ]);

        $ingredient->update($request->all());

        return response()->json([
            'message' => 'Ingredient updated successfully',
            'data'    => $ingredient
        ],200);
    }

    //Delete ingredient (removes from pantry automatically)
    public function destroy($id){
        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'Only admin can delete ingredients'],403);
        }
        
        $ingredient = Ingredients::findOrFail($id);
        $ingredient->delete();


        return response()->json([
            'message' => 'Ingredient deleted successfully'
        ], 200);
    }

    //Search ingredients by name (for the logged-in user)
    public function search(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $query = $request->input('q');
        
        $ingredients = Ingredients::where('name', 'LIKE', "%{$query}%")->get();
        
        return response()->json($ingredients,200);
    }
}
