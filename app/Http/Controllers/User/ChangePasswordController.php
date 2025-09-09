<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
class ChangePasswordController extends Controller
{
    public function changePassword(Request $request){

        $request->validate(
            [
                'old_password'=>'required',
                'new_password'=>
                [
                    'required',
                    'min:8',
                    'regex:/[0-9]/',
                    'regex:/[!@#$%&*?]/',
                    'confirmed',
                ],
            ],
            [
                'old_password.required'=>'old password must not be blank',
                'new_password.required'  => 'New Password must not be blank',
                'new_password.min'   => 'New password must be at least 8 characters',
                'new_password.confirmed' => 'confirmed Password must be match',
                'new_password.regex' => 'New Password must contain at least one number and one symbol',

            ]);

            $user = JWTAuth::parseToken()->authenticate();

            if(!Hash::check($request->old_password,$user->password)){
                return response()->json(['message' => 'Password is incorrect'],400);
            }

            $user->password = bcrypt($request->new_password);
            $user->save();

            return response()->json(['message'=>'Password changed successfully'],200);
    }
}
