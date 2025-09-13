<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Models\User;

class UpdateProfileController extends Controller
{
    public function updateProfile(Request $request){
        $user = JWTAuth::parseToken()->authenticate();

        $request->validate([
            'name'        => ['sometimes','required','regex:/^[a-zA-Z\s]+$/u','max:255'],
            'email'    => ['sometimes','required','email','unique:user,email'],
        ],[

            'name.regex'     => 'Full Name must not contain special characters',
            'email.email'    => 'Email must be valid',
            'email.unique'   => 'This email is already in use',
            'name.required'  => 'Full Name must not be blank',
            'email.required'  => 'Email must not be blank',
        ]
        );
        if ($request->has('name')) {
            $user->name = $request->name;
        }
        if ($request->has('email')) {
            $user->email = $request->email;
        }
        
        $user->save();

        return response()->json([
            'message' => 'Profile updated successfully',
            'data' => $user
        ], 200);
    }
    

}
