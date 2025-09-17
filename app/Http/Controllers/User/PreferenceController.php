<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserPreference;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class PreferenceController extends Controller
{
    public function savePreferences(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $preferences = UserPreference::updateOrCreate(
            ['user_id' => $user->id],
            [
                'dietary_type' => $request->input('dietary_type'),
                'allergies' => $request->input('allergies', []),
                'dislikes' => $request->input('dislikes', []),
                'servings' => $request->input('servings'),
            ]
            );
        $user->update(['onboardingComplete' => true]);

        return response()->json([
            'message' => 'Preferences saved successfully',
            'preferences' => $preferences,
            'user' => $user,
        ]);
    }

    // Get preferences for logged-in user
    public function getPreferences(){
        $user = JWTAuth::parseToken()->authenticate();

        $preferences = $user->preferences;

        return response()->json([
            'message' => 'Preferences retrieved successfully',
            'preferences' => $preferences,
        ]);
    }
    
    public function updatePreferences(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $request->validate([
            'dietary_type' => ['sometimes','string','max:255'],
            'allergies'    => ['sometimes','array'],
            'dislikes'     => ['sometimes','array'],
            'servings'     => ['sometimes','integer','min:1'],
        ],[
            'dietary_type.string' => 'Dietary type must be text.',
            'dietary_type.max'    => 'Dietary type cannot exceed 255 characters.',
            'allergies.array'     => 'Allergies must be a list (array).',
            'dislikes.array'      => 'Dislikes must be a list (array).',
            'servings.integer'    => 'Servings must be a number.',
            'servings.min'        => 'Servings must be at least 1.',
        ]);

        $preferences = UserPreference::where('user_id', $user->id)->firstOrFail();

        // ✅ Update only sent fields
        if ($request->has('dietary_type')) {
            $preferences->dietary_type = $request->dietary_type;
        }
        if ($request->has('allergies')) {
            $preferences->allergies = $request->allergies;
        }
        if ($request->has('dislikes')) {
            $preferences->dislikes = $request->dislikes;
        }
        if ($request->has('servings')) {
            $preferences->servings = $request->servings;
        }

        $preferences->save();

        return response()->json([
            'message'     => 'Preferences updated successfully',
            'preferences' => $preferences,
        ], 200);
    }
}
