<?php

namespace App\Http\Controllers\Recipe;

use App\Http\Controllers\Controller;
use App\Models\UserFavorite;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class UserFavoriteController extends Controller
{
    //Get all user favorites
    public function index(){
        $user = JWTAuth::parseToken()->authenticate();

        $favorites = UserFavorite::with('recipe')
            ->where('user_id',$user->id)
            ->get();

        return response()->json(['favorites'=>$favorites],200);
    }

    //Add a recipe to favorites
    public function store(Request $request){

        $user = JWTAuth::parseToken()->authenticate();

        $validated = $request->validate([
            'recipe_id' => 'required|exists:recipes,id',
        ], [
            'recipe_id.required' => 'Recipe ID is required.',
            'recipe_id.exists'   => 'Recipe does not exist.',
        ]);

        //prevent duplicate
        $exists = UserFavorite::where('user_id',$user->id)
            ->where('recipe_id',$validated['recipe_id'])
            ->exists();
        if($exists){
            return response()->json(['message' => 'Recipe already in favorites'], 409);
        }

        $favorite = UserFavorite::create([
            'user_id'   =>$user->id,
            'recipe_id' =>$validated['recipe_id'],
        ]);

        return response()->json(['message'=>'Recipe added to favorites', 'favorite' => $favorite], 201);
    }

    //remove recipe from favorites
    public function destroy($id){

        $user = JWTAuth::parseToken()->authenticate();

        $favorite = UserFavorite::where('user_id',$user->id)
            ->where('id',$id)
            ->first();
        
        if(!$favorite){
            return response()->json(['error' => 'Favorite not found'], 404);
        }
        $favorite->delete();
        return response()->json(['message'=>'Recipe removed from favorites']);
    }

}
