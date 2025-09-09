<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Models\User;

class LogoutController extends Controller
{
    public function logout(Request $request)
    {
        try
        {
            JWTAuth::invalidate(JWTAuth::parseToken());

            return response()->json([
                 'success' => true,
                 'message' => 'Successfully logged out'
            ],200);
        } catch(JWTException $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to logout, token invalid'
            ],401);
        }
    }
}
