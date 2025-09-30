<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\MealPlan;
use App\Models\Recipes;

class MealPlanController extends Controller
{
    // GET all meal plans
    public function index()
    {
        $user = JWTAuth::parseToken()->authenticate();
        $plans = MealPlan::where('user_id', $user->id)->get();

        return response()->json($plans, 200);
    }

    // POST create new meal plan
    public function store(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $validated = $request->validate([
            'name'        => 'required|string|max:255',
            'description' => 'nullable|string',
            'start_date'  => 'required|date',
            'end_date'    => 'required|date|after_or_equal:start_date',
        ]);

        $plan = MealPlan::create([
            'user_id'        => $user->id,
            'name'           => $validated['name'],
            'description'    => $validated['description'] ?? null,
            'start_date'     => $validated['start_date'],
            'end_date'       => $validated['end_date'],
            'meals'          => [],
            'is_ai_generated'=> false,
        ]);

        return response()->json($plan, 201);
    }

    // PUT update meals
    public function updateMeals(Request $request, $id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $validated = $request->validate([
            'date'       => 'required|date',
            'meal_type'  => 'required|string|in:breakfast,lunch,dinner,snacks',
            'meal_data'  => 'required|array',
        ]);

        $plan = MealPlan::where('user_id', $user->id)->findOrFail($id);

        // check date between start & end
        if ($validated['date'] < $plan->start_date || $validated['date'] > $plan->end_date) {
            return response()->json(['error' => 'Date is out of plan range'], 422);
        }

        $mealData = $validated['meal_data'];

        // if exist recipe id => bring recipe data
        if (isset($mealData['recipe_id'])) {
            $recipe = Recipes::with('ingredients', 'steps')->find($mealData['recipe_id']);
            if (!$recipe) {
                return response()->json(['error' => 'Recipe not found'], 404);
            }

            $mealData = [
                'recipe_id'    => $recipe->id,
                'name'         => $recipe->name,
                'calories'     => $recipe->calories_per_serving,
                'prep_time'    => $recipe->prep_time,
                'ingredients'  => $recipe->ingredients->pluck('name'),
                'instructions' => $recipe->steps->pluck('instruction'),
            ];
        }

        $meals = $plan->meals ?? [];

        // if day not exist => add
        if (!isset($meals[$validated['date']])) {
            $meals[$validated['date']] = [];
        }

        $meals[$validated['date']][$validated['meal_type']] = $mealData;

        $plan->update(['meals' => $meals]);

        return response()->json([
            'success' => true,
            'message' => 'Meal updated successfully',
            'data'    => [
                'date'      => $validated['date'],
                'meal_type' => $validated['meal_type'],
                'meal_data' => $mealData,
            ]
        ], 200);
    }

    // DELETE a meal plan
    public function destroy($id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $plan = MealPlan::where('user_id', $user->id)->findOrFail($id);
        $plan->delete();

        return response()->json(['message' => 'Meal plan deleted successfully'], 200);
    }
}
