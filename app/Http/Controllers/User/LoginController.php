<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Models\User;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email'    => 'required|email',
            'password' => 'required|min:8',
        ],[
            'email.required'    => 'Email must not be blank',
            'email.email'       => 'Email must be in valid format',
            'password.required' => 'Password must not be blank',
            'password.min'      => 'Password must be at least 8 characters', 
        ]);

        $credentails = $request->only('email','password');

        try
        {
            if(!$token = JWTAuth::attempt([
                'email'    => $credentails['email'],
                'password' => $credentails['password']
            ])){
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid email or password'
                ],401);
            }
        } catch(JWTException $e){
            return response()->json(['error' => 'Could not create token'],500);
        }
        
        $user = User::where('email', $request->email)->first();

        return response()->json([
            'success' => true,
            'token' => $token,
            'user' => $user,
        ],200);
    }

}
