<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\UserSetting;

class UserSettingController extends Controller
{
    public function getSettings(){
        $user = JWTAuth::parseToken()->authenticate();

        $settings = $user->settings;

        return response()->json([
            'message' => 'User settings fetched successfully',
            'settings' => $settings
        ], 200);
    }

    public function updateSettings(Request $request){

        $user = JWTAuth::parseToken()->authenticate();

        $validated = $request->validate([
            'language'           => 'sometimes|string|in:en,ar,fr',
            'theme'              => 'sometimes|string|in:light,dark,auto',
            'measurement_units'  => 'sometimes|string|in:metric,imperial',
            'default_cuisine'    => 'sometimes|string|max:100',
            'default_servings'   => 'sometimes|integer|min:1',
            'notifications'      => 'sometimes|array',
        ], [
            'language.in'         => 'Language must be one of: en, ar, fr.',
            'theme.in'            => 'Theme must be one of: light, dark, auto.',
            'measurement_units.in'=> 'Units must be either metric or imperial.',
            'default_cuisine.max' => 'Cuisine must not exceed 100 characters.',
            'default_servings.integer' => 'Servings must be a number.',
            'default_servings.min'     => 'Servings must be at least 1.',
            'notifications.array'      => 'Notifications must be in array format.',
        ]);

        $settings = UserSetting::updateOrCreate(
            ['user_id' => $user->id],
            $validated
        );

        return response()->json([
            'message' => 'User settings updated successfully',
            'settings' => $settings
        ], 200);
    }
}
