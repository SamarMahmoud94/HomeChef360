<?php

namespace App\Http\Controllers\Recipe;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Recipes;
use Tymon\JWTAuth\Facades\JWTAuth;

class RecipeController extends Controller
{
    //get all recipes
    public function index(){

        $user = JWTAuth::parseToken()->authenticate();

        $recipes = Recipes::with('ingredients', 'videos', 'steps')->get();

        return response()->json($recipes);
    }

    //get specefic recipes by id
    public function show($id){
        $user = JWTAuth::parseToken()->authenticate();

        $recipe = Recipes::with('ingredients', 'videos', 'steps')->findOrFail($id);
        
        return response()->json($recipe);
    }

    //create recipe by admin
    public function store(Request $request){

        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'only admin can add recipe'],403);
        }

        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'cuisine' => 'nullable|string|max:100',
            'category' => 'nullable|string|max:100',
            'difficulty' => 'nullable|string|max:20',
            'prep_time' => 'nullable|integer|min:0',
            'cook_time' => 'nullable|integer|min:0',
            'servings' => 'nullable|integer|min:1',
            'calories_per_serving' => 'nullable|numeric|min:0',
            'protein_per_serving' => 'nullable|numeric|min:0',
            'carbs_per_serving' => 'nullable|numeric|min:0',
            'fat_per_serving' => 'nullable|numeric|min:0',
            'image_url' => 'nullable|url|max:500',
            'video_url' => 'nullable|url|max:500',
        ], [
            'name.required' => 'Recipe name is required',
            'name.max' => 'Recipe name must not exceed 255 characters.',
            'image_url.url' => 'Image URL must be a valid URL.',
            'video_url.url' => 'Video URL must be a valid URL.',
        ]);

        $recipe = Recipes::create($request->only([
            'name',
            'description',
            'cuisine',
            'category',
            'difficulty',
            'prep_time',
            'cook_time',
            'servings',
            'calories_per_serving',
            'protein_per_serving',
            'carbs_per_serving',
            'fat_per_serving',
            'image_url',
            'video_url',
        ]));
        return response()->json(['message' => 'Recipe created successfully', 'recipe' => $recipe], 201);

    }

    public function update(Request $request,$id){
        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'only admin can update recipe'],403);
        }

        $recipe = Recipes::find($id);
        if(!$recipe){
            return response()->json(['error'=>'Recipe not exist'],404);
        }

        $validated = $request->validate([
            'name' => 'sometimes|required|string|max:255',
            'description' => 'nullable|string',
            'cuisine' => 'nullable|string|max:100',
            'category' => 'nullable|string|max:100',
            'difficulty' => 'nullable|string|max:20',
            'prep_time' => 'nullable|integer|min:0',
            'cook_time' => 'nullable|integer|min:0',
            'servings' => 'nullable|integer|min:1',
            'calories_per_serving' => 'nullable|numeric|min:0',
            'protein_per_serving' => 'nullable|numeric|min:0',
            'carbs_per_serving' => 'nullable|numeric|min:0',
            'fat_per_serving' => 'nullable|numeric|min:0',
            'image_url' => 'nullable|url|max:500',
            'video_url' => 'nullable|url|max:500',
        ],[
            'name.required' => 'Recipe name can not be blank',
        ]);

        $recipe->update($request->only([
            'name',
            'description',
            'cuisine',
            'category',
            'difficulty',
            'prep_time',
            'cook_time',
            'servings',
            'calories_per_serving',
            'protein_per_serving',
            'carbs_per_serving',
            'fat_per_serving',
            'image_url',
            'video_url',
        ]));

        return response()->json(['message' => 'recipe updated successfully', 'recipe' => $recipe]);
    }

    //delete recipe by admin
    public function destroy($id){

        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'only admin can delete recipe'],403);
        }

        $recipe = Recipes::find($id);
        if(!$recipe){
            return response()->json(['error'=>'Recipe not exist'],404);
        }

        $recipe->delete();

        return response()->json(['message' => 'recipe deleted successfully']);
    }

    //search by name
    public function search(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $query = $request->input('q');
        
        $recipe = Recipes::with('ingredients', 'videos', 'steps')
            ->where('name', 'LIKE', "%{$query}%")
            ->get();
        
        if ($recipe->isEmpty()) {
            return response()->json(['message' => 'No recipes found'], 404);
        }
    
        return response()->json($recipe,200);
    }
     
    // get recipe catogories
    public function getCategories()
    {
        $user = JWTAuth::parseToken()->authenticate();

        $categories = Recipes::select('category')
            ->distinct()
            ->pluck('category')
            ->filter()
            ->values();

        return response()->json(['categories'=>$categories]);
    }

    //get recipe cuisines
    public function getCuisines()
    {
        $user = JWTAuth::parseToken()->authenticate();

        $cuisines = Recipes::select('cuisine')
            ->distinct()
            ->pluck('cuisine')
            ->filter()
            ->values();

        return response()->json(['cuisines'=>$cuisines]);
    }

}
