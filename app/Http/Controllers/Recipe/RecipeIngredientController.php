<?php

namespace App\Http\Controllers\Recipe;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RecipeIngredients;
use Tymon\JWTAuth\Facades\JWTAuth;

class RecipeIngredientController extends Controller
{
    // Create recipe ingredient (admin only)
    public function store(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();

        if ($user->role !== 'admin') {
            return response()->json(['error' => 'Only admin can add recipe ingredient'], 403);
        }

        $validated = $request->validate([
            'recipe_id'     => 'required|exists:recipes,id',
            'ingredient_id' => 'required|exists:ingredients,id',
            'name'          => 'required|string|max:255',
            'quantity'      => 'required|numeric|min:0',
            'unit'          => 'required|string|max:50',
        ], [
            'recipe_id.required'     => 'Recipe ID is required.',
            'recipe_id.exists'       => 'Recipe does not exist.',
            'ingredient_id.required' => 'Ingredient ID is required.',
            'ingredient_id.exists'   => 'Ingredient does not exist.',
            'name.required'          => 'Ingredient name is required.',
            'quantity.required'      => 'Quantity is required.',
            'unit.required'          => 'Unit is required.',
        ]);

        $ingredient = RecipeIngredients::create($validated);

        return response()->json(['message' => 'Recipe ingredient created successfully', 'ingredient' => $ingredient], 201);
    }

    // Update recipe ingredient (admin only)
    public function update(Request $request, $id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        if ($user->role !== 'admin') {
            return response()->json(['error' => 'Only admin can update recipe ingredient'], 403);
        }

        $ingredient = RecipeIngredients::find($id);
        if (!$ingredient) {
            return response()->json(['error' => 'Recipe ingredient not found'], 404);
        }

        $validated = $request->validate([
            'recipe_id'     => 'sometimes|required|exists:recipes,id',
            'ingredient_id' => 'sometimes|required|exists:ingredients,id',
            'name'          => 'sometimes|required|string|max:255',
            'quantity'      => 'sometimes|required|numeric|min:0',
            'unit'          => 'sometimes|required|string|max:50',
        ]);

        $ingredient->update($validated);

        return response()->json(['message' => 'Recipe ingredient updated successfully', 'ingredient' => $ingredient]);
    }

    // Delete recipe ingredient (admin only)
    public function destroy($id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        if ($user->role !== 'admin') {
            return response()->json(['error' => 'Only admin can delete recipe ingredient'], 403);
        }

        $ingredient = RecipeIngredients::find($id);
        if (!$ingredient) {
            return response()->json(['error' => 'Recipe ingredient not found'], 404);
        }

        $ingredient->delete();

        return response()->json(['message' => 'Recipe ingredient deleted successfully']);
    }
}
