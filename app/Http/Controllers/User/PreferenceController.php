<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserPreference;
use Illuminate\Http\Request;

class PreferenceController extends Controller
{
    public function savePreferences(Request $request,$id){
        $user =User::findOrFail($id);

        $preferences = UserPreference::updateOrCreate(
            ['user_id' => $user->id],
            [
                'dietaryType' => $request->input('dietaryType'),
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
}
