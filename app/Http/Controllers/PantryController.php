<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\Pantry;
use Carbon\Carbon;

class PantryController extends Controller
{
    //Get all ingredients in pantry (for the logged-in user)
    public function index(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $ingredients = Pantry::with('ingredient')
            ->where('user_id',$user->id)
            ->get();

            return response()->json($ingredients,200);
    }

    //Add ingredient to pantry
    public function store(Request $request){

        $user = JWTAuth::parseToken()->authenticate();

        $request->validate([
            'ingredient_id' => 'required|exists:ingredients,id',
            'quantity'      => 'required|numeric|gt:0',
            'unit'          => 'required|string|max:50',
            'expiry_date'   => 'nullable|date|after:today',
            'category'      => 'nullable|string|max:100',
            'notes'         => 'nullable|string',
        ], [
            'ingredient_id.required' => 'Ingredient is required.',
            'ingredient_id.exists'   => 'The selected ingredient does not exist.',
            'quantity.required'      => 'Quantity is required.',
            'quantity.numeric'       => 'Quantity must be a number.',
            'quantity.gt'            => 'Quantity must be greater than 0.',
            'unit.required'          => 'Unit is required.',
            'unit.max'               => 'Unit must not exceed 50 characters.',
            'expiry_date.date'       => 'Expiry date must be a valid date.',
            'expiry_date.after'      => 'Expiry date must be a future date.',
            'category.max'           => 'Category must not exceed 100 characters.',
            ]);

        $pantryItem = Pantry::create([
            'user_id'       => $user->id,
            'ingredient_id' => $request->ingredient_id,
            'quantity'      => $request->quantity,
            'unit'          => $request->unit,
            'category'      => $request->category,
            'expiry_date'   => $request->expiry_date,
            'notes'         => $request->notes,
        ]);

        return response()->json([
            'message' => 'Ingredient added to pantry successfully',
            'data'    => $pantryItem->load('ingredient')
        ],201);
    }

    //Update ingredient in pantry
    public function update(Request $request ,$id){
        $user = JWTAuth::parseToken()->authenticate();

        $pantryItem = Pantry::where('user_id', $user->id)
        ->where('id', $id)
        ->firstOrFail();

        $request->validate([
            'quantity'    => 'sometimes|required|numeric|gt:0',
            'unit'        => 'sometimes|required|string|max:50',
            'expiry_date' => 'sometimes|nullable|date|after:today',
            'category'    => 'sometimes|nullable|string|max:100',
            'notes'       => 'sometimes|nullable|string',
        ], [
            'quantity.numeric'  => 'Quantity must be a number.',
            'quantity.gt'       => 'Quantity must be greater than 0.',
            'unit.max'          => 'Unit must not exceed 50 characters.',
            'expiry_date.date'  => 'Expiry date must be a valid date.',
            'expiry_date.after' => 'Expiry date must be a future date.',
            'category.max'      => 'Category must not exceed 100 characters.',
        ]);
         

        $pantryItem->update($request->only(['quantity', 'unit', 'category', 'expiry_date', 'notes']));

        return response()->json([
            'message' => 'Ingredient in pantry updated successfully',
            'data'    => $pantryItem->load('ingredient')
        ],200);
    }

    //Delete ingredient (removes from pantry automatically)
    public function destroy($id){
        $user = JWTAuth::parseToken()->authenticate();

        $pantryItem = Pantry::where('user_id', $user->id)
        ->where('id', $id)
        ->firstOrFail();
        
        $pantryItem->delete();

        return response()->json([
            'message' => 'Ingredient in pantry deleted successfully'
        ], 200);
    }

    //Search ingredient in pantry by name (for the logged-in user)
    public function search(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $query = $request->input('q');

        $pantryItems = Pantry::with('ingredient')
            ->where('user_id',$user->id)
            ->whereHas('ingredient', function($q) use ($query){
                $q->where('name','LIKE',"%{$query}%");
            })
            ->get();
            
            return response()->json($pantryItems,200);
    }
}
