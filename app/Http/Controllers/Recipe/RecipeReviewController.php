<?php

namespace App\Http\Controllers\Recipe;

use App\Http\Controllers\Controller;
use App\Models\Recipes;
use App\Models\RecipeReview;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class RecipeReviewController extends Controller
{   
    //reviews for recipe
    public function index($recipeId){
        $user = JWTAuth::parseToken()->authenticate();

        $recipe = Recipes::find($recipeId);
        if(!$recipe){
            return response()->json(['error' => 'Recipe not found'], 404);
        }
        
        $reviews = $recipe->reviews()->with('user:id,name')->get();

        return response()->json([
            'recipe'  => $recipe->name,
            'reviews' => $reviews,
        ], 200); 
    }

    //add a review to a recipe 
    public function store(Request $request,$recipeId){
         $user = JWTAuth::parseToken()->authenticate();

        $recipe = Recipes::find($recipeId);
        if (!$recipe) {
            return response()->json(['error' => 'Recipe not found'], 404);
        }

        $validated = $request->validate([
            'rating'      => 'required|integer|min:1|max:5',
            'review_text' => 'nullable|string|max:1000',
        ], [
            'rating.required' => 'Rating is required.',
            'rating.integer'  => 'Rating must be an integer.',
            'rating.min'      => 'Rating must be at least 1.',
            'rating.max'      => 'Rating cannot be more than 5.',
            'review_text.max' => 'Review text cannot exceed 1000 characters.',
        ]);

        $review = RecipeReview::create([
            'user_id'     => $user->id,
            'recipe_id'   => $recipeId,
            'rating'      => $validated['rating'],
            'review_text' => $validated['review_text'] ?? null,
        ]);

        // Update recipe rating and review count
        $recipe->review_count = $recipe->reviews()->count();
        $recipe->rating = $recipe->reviews()->avg('rating');
        $recipe->save();

        return response()->json([
            'message' => 'Review added successfully',
            'review'  => $review
        ], 201);
    }
}
