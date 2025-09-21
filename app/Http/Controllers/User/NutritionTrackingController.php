<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\NutritionTracking;
use Carbon\Carbon;

class NutritionTrackingController extends Controller
{
    //log daily nutrition(create new record)
    public function store(Request $request){
        $user = JWTAuth::parsetoken()->authenticate();

        $validated = $request->validate([
            'date'     => 'required|date',
            'calories' => 'nullable|numeric|min:0',
            'protein'  => 'nullable|numeric|min:0',
            'carbs'    => 'nullable|numeric|min:0',
            'fat'      => 'nullable|numeric|min:0',
        ],[
            'date.required' => 'date is required',
            'date.date'     => 'date is must be date formate yyyy-mm-dd',
        ]);

        $validated['user_id'] = $user->id;

        $nutrition = NutritionTracking::create($validated);

        return response()->json([
            'message'   => 'Daily nutrition logged successfully',
            'nutrition' => $nutrition
        ], 201);
    }

    //get daily nutrition bt date
    public function show(Request $request){

        $user = JWTAuth::parseToken()->authenticate();

        $date = $request->query('date',Carbon::today()->toDateString());

        $nutrition = NutritionTracking::where('user_id',$user->id)
            ->whereDate('date',$date)
            ->first();

        if(!$nutrition){
            return response()->json(['message' => 'No nutrition data found for this date'], 404);
        }
        return response()->json($nutrition, 200);
    }

    //update daily nutrition
    public function update(Request $request,$id){
        $user = JWTAuth::parseToken()->authenticate();

        $nutrition = NutritionTracking::where('user_id',$user->id)->findOrFail($id);

        $validated = $request->validate([
            'calories' => 'nullable|numeric|min:0',
            'protein'  => 'nullable|numeric|min:0',
            'carbs'    => 'nullable|numeric|min:0',
            'fat'      => 'nullable|numeric|min:0',
        ]);

        $nutrition->update($validated);

        return response()->json([
            'message'   => 'Daily nutrition updated successfully',
            'nutrition' => $nutrition
        ], 200);
    }

    //get weekly nutrition (last 7 days)
    public function weekly(){
        $user = JWTAuth::parseToken()->authenticate();

        $start = Carbon::now()->subDays(6)->startOfDay(); // last 7 days including today
        $end = Carbon::now()->endOfDay();

        $data = NutritionTracking::where('user_id',$user->id)
            ->whereBetween('date',[$start,$end])
            ->orderBy('date','asc')
            ->get();
        return response()->json([
            'start_date' => $start->toDateString(),
            'end_date'   => $end->toDateString(),
            'data'       => $data
        ], 200);
    }

    //get monthly nutrition (current month)
    public function monthly(){
        $user = JWTAuth::parseToken()->authenticate();

        $start = Carbon::now()->startOfMonth();
        $end = Carbon::now()->endOfMonth();

        $data = NutritionTracking::where('user_id',$user->id)
            ->whereBetween('date',[$start,$end])
            ->get();

        return response()->json([
            'start_date' => $start->toDateString(),
            'end_date'   => $end->toDateString(),
            'data'       => $data
        ], 200);
    }
}
