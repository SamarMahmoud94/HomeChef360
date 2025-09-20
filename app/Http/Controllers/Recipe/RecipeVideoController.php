<?php

namespace App\Http\Controllers\Recipe;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\RecipeVideo;

class RecipeVideoController extends Controller
{
    //get all recipe videos
    public function index(){
        $user = JWTAuth::parseToken()->authenticate();
        $videos = RecipeVideo::all();
        return response()->json($videos,200);
    }

    //get a single video by id 
    public function show($id){
        $user = JWTAuth::parseToken()->authenticate();
        $video = RecipeVideo::findOrFail($id);
        return response()->json($video,200);
    }

    //add video to recipe
    public function store(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        if($user->role !== 'admin'){
            return response()->json(['error'=>'only admin can add videos'],403);
        }

        $validated = $request->validate([
            'recipe_id' => 'required|exists:recipes,id',
            'video_url' => 'required|url|max:500',
            'caption'   => 'nullable|string|max:255',
        ],[
            'recipe_id.required' => 'Recipe ID is required',
            'recipe_id.exists'   => 'Recipe does not exist',
            'video_url.required' => 'Video URL is required',
            'video_url.url'      => 'Video URL must be valid',
        ]);

        $video = RecipeVideo::create($validated);

        return response()->json([
            'message' => 'Recipe video created successfully',
            'video'   => $video
        ], 201);
    }
    //update a video
    public function update(Request $request, $id)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'only admin can update videos'],403);
        }

        $video = RecipeVideo::findOrFail($id);

        $validated = $request->validate([
            'recipe_id' => 'sometimes|required|exists:recipes,id',
            'video_url' => 'sometimes|required|url|max:500',
            'caption'   => 'nullable|string|max:255',
        ]);

        $video->update($validated);

        return response()->json([
            'message' => 'Recipe video updated successfully',
            'video'   => $video
        ], 200);
    }
    //delete a video
    public function destroy($id)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if($user->role !== 'admin'){
            return response()->json(['error'=>'only admin can delete videos'],403);
        }

        $video = RecipeVideo::findOrFail($id);
        $video->delete();

        return response()->json([
            'message' => 'Recipe video deleted successfully'
        ], 200);
    }
}
