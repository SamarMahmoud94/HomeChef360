<?php

namespace App\Http\Controllers\Recipe;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\RecipeStep;

class RecipeStepController extends Controller
{
    //add new step
    public function store(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if ($user->role !== 'admin') {
            return response()->json(['error' => 'Only admin can add steps'], 403);
        }

        $validated = $request->validate([
            'recipe_id'   => 'required|exists:recipes,id',
            'step_number' => 'required|integer|min:1|unique:recipesteps,step_number,NULL,id,recipe_id,' . $request->recipe_id,
            'instruction' => 'required|string',
        ], [
            'recipe_id.required'   => 'Recipe ID is required',
            'recipe_id.exists'     => 'Recipe does not exist',
            'step_number.required' => 'Step number is required',
            'instruction.required' => 'Instruction is required',
        ]);

        $step = RecipeStep::create($validated);

        return response()->json([
            'message' => 'Recipe step created successfully',
            'step'    => $step
        ], 201);
    }

    //update step
    public function update(Request $request, $id)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if ($user->role !== 'admin') {
            return response()->json(['error' => 'Only admin can update steps'], 403);
        }

        $step = RecipeStep::findOrFail($id);

        $validated = $request->validate([
            'recipe_id'   => 'sometimes|required|exists:recipes,id',
            'step_number' => 'sometimes|required|integer|min:1|unique:recipesteps,step_number,' . $id . ',id,recipe_id,' . $request->recipe_id,
            'instruction' => 'sometimes|required|string',
        ]);

        $step->update($validated);

        return response()->json([
            'message' => 'Recipe step updated successfully',
            'step'    => $step
        ], 200);
    }

    //delete step
    public function destroy($id)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if ($user->role !== 'admin') {
            return response()->json(['error' => 'Only admin can delete steps'], 403);
        }

        $step = RecipeStep::findOrFail($id);
        $step->delete();

        return response()->json([
            'message' => 'Recipe step deleted successfully'
        ], 200);
    }
}
