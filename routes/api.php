<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\SignUpController;
use App\Http\Controllers\User\LoginController;
use App\Http\Controllers\User\LogoutController;
use App\Http\Controllers\User\ChangePasswordController;
use App\Http\Controllers\User\UpdateProfileController;
use App\Http\Controllers\IngredientsController;
use App\Models\Ingredients;

//SignUp API
Route::post('user/signup',[SignUpController::class,'register']);

//Login API
Route::post('user/login',[LoginController::class,'login']);

// Logout API
Route::post('user/logout',[LogoutController::class,'logout'])->middleware('auth:api');

//change password
Route::post('/user/password/change',[ChangePasswordController::class,'changePassword'])->middleware('auth:api');

//update profile(name/email)
Route::post('/user/update',[UpdateProfileController::class,'updateProfile'])->middleware('auth:api');

//CRUD Ingredients
Route::middleware('auth:api')->group(function () {
    Route::get('/AllIngredients',[IngredientsController::class,'index']);
    Route::post('/AddIngredient',[IngredientsController::class,'store']);
    Route::put('/UpdateIngredient/{id}',[IngredientsController::class,'update']);
    Route::delete('/deleteIngredient/{id}',[IngredientsController::class,'destroy']);
});

