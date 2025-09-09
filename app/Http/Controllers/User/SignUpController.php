<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Tymon\JWTAuth\Facades\JWTAuth;

class SignUpController extends Controller
{
    public function register(Request $request){
        //Validation
        $request->validate(
        [
            'name'=>
            [
                'required',
                'regex:/^[a-zA-Z\s]+$/u', //only chars and spaces
                'max:255',
            ],
            'email'=>
            [
                'required',
                'email',
                'unique:user,email',//in table user column Email
            ],
            'password'=>
            [
                'required',
                'min:8',
                'regex:/[0-9]/',//required number at least one
                'regex:/[@#$!%&*?]/',//required special char
                'confirmed',
            ],
            'role'=>[
                'nullable',
                'in:user,admin,User,Admin,ADMIN,USER'
            ],
        ],
        [
            'name.required'  => 'Full Name must not be blank',
            'email.required'  => 'Email must not be blank',
            'password.required'  => 'Password must not be blank',
            'password.min'   => 'password must be at least 8 characters',
            'password.confirmed' => 'confirmed Password must be match',
            'password.regex' => 'Password must contain at least one number and one symbol',
            'name.regex'     => 'Full Name must not contain special characters',
            'email.email'    => 'Email must be valid',
            'email.unique'   => 'This email is already in use',
            'role.in'        => 'Role must be one of: user or admin',
        ]);

        $user = User::create([
            'name'     => $request->name,
            'email'    =>$request->email,
            'password' => bcrypt($request->password),
            'role'     =>$request->role??'user',
        ]);

        $token = JWTAuth::fromUser($user);

        return response()->json([
            'message' =>'User registered successfully',
            'user'    =>$user,
            'token'   => $token,
        ],201);
    }
}
