<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tutorial;
use Tymon\JWTAuth\Facades\JWTAuth;

class TutorialController extends Controller
{
    //get all titorials
    public function index(){

    $user = JWTAuth::parseToken()->authenticate();

    $tutorials =Tutorial::all();

    return response()->json($tutorials);
    }

    //get a specific tutorial by id
    public function show($id){

        $user = JWTAuth::parseToken()->authenticate();

        $tutorial = Tutorial::findOrFail($id);

        return response()->json($tutorial);
    }

    //add tutorial 
    public function store(Request $request){

        $user = JWTAuth::parseToken()->authenticate();

        $validated = $request->validate([
            'title'         => 'required|string|max:255|unique:tutorials,title',
            'description'   => 'nullable|string',
            'thumbnail_url' => 'required|url|max:500',
            'video_url'     => 'required|url|max:500',
            'duration'      => 'nullable|integer',
            'difficulty'    => 'required|string|max:20|in:Beginner,Intermediate,Advanced,Expert',
            'instructor_name' => 'nullable|string|max:255',
            'rating' => 'nullable|numeric|min:1|max:5',
            'view_count' => 'nullable|integer|min:0',
            'steps' => 'nullable|array',
            'tags' => 'nullable|array',
            'is_published' => 'boolean',
        ],[
            'title.required' => 'title is required',
            'title.max' => 'title must not exceed 255 characters.',
            'thumbnail_url.url' => 'Image URL must be a valid URL.',
            'video_url.url' => 'Video URL must be a valid URL.',
            'difficulty.required' => 'difficulty is required',
            'difficulty.in' => 'Category must be one of (Beginner, Intermediate, Advanced, Expert).',
            'rating.numeric'  => 'Rating must be an integer.',
            'rating.min'      => 'Rating must be at least 1.',
            'rating.max'      => 'Rating cannot be more than 5.',
        ]);

        $tutorial = Tutorial::create($validated);

        return response()->json([
            'message'=>'tutorial created successfully.',
            'tutorial' => $tutorial
        ],201);
    }
    
    //update tutorial
    public function update(Request $request,$id){

        $user = JWTAuth::parseToken()->authenticate();

        $tutorial = Tutorial::findOrFail($id);

        $validated = $request->validate([
            'title'           => 'sometimes|required|string|max:255|unique:tutorials,title,'.$tutorial->id,
            'description'     => 'nullable|string',
            'thumbnail_url'   => 'sometimes|required|url|max:500',
            'video_url'       => 'sometimes|required|url|max:500',
            'duration'        => 'nullable|integer',
            'difficulty'      => 'sometimes|required|string|max:20|in:Beginner,Intermediate,Advanced,Expert',
            'instructor_name' => 'nullable|string|max:255',
            'rating'          => 'nullable|numeric|min:1|max:5',
            'view_count'      => 'nullable|integer|min:0',
            'steps'           => 'nullable|array',
            'tags'            => 'nullable|array',
            'is_published'    => 'boolean',
        ],[
            'title.required' => 'title is required',
            'title.max' => 'title must not exceed 255 characters.',
            'thumbnail_url.url' => 'Image URL must be a valid URL.',
            'video_url.url' => 'Video URL must be a valid URL.',
            'difficulty.required' => 'difficulty is required',
            'difficulty.in' => 'difficulty must be one of (Beginner, Intermediate, Advanced, Expert).',
            'rating.numeric'  => 'Rating must be an integer.',
            'rating.min'      => 'Rating must be at least 1.',
            'rating.max'      => 'Rating cannot be more than 5.',
        ]);

        $tutorial->update($validated);

        return response()->json([
            'message'=>'tutorial updated successfully.',
            'tutorial' => $tutorial
        ]);
    }

    //delete tutorial 
    public function destroy($id){
        $tutorial = Tutorial::findOrFail($id);
        $tutorial->delete();
        return response()->json([
            'message'=>'tutorial deleted successfully.']);
    }

    //search by title 
    public function search(Request $request){

        $user = JWTAuth::parseToken()->authenticate();

        $query = $request->input('q');
        
        $tutorial = Tutorial::where('title', 'LIKE', "%{$query}%")
            ->get();
        
        if ($tutorial->isEmpty()) {
            return response()->json(['message' => 'No tutorials found'], 404);
        }
    
        return response()->json($tutorial,200);
    }
     
}
