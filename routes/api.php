<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\SignUpController;
use App\Http\Controllers\User\LoginController;
use App\Http\Controllers\User\LogoutController;
use App\Http\Controllers\User\ChangePasswordController;
use App\Http\Controllers\User\UpdateProfileController;
use App\Http\Controllers\IngredientsController;
use App\Http\Controllers\PantryController;
use App\Http\Controllers\User\PreferenceController;
use App\Http\Controllers\User\UserSettingController;

//SignUp API
Route::post('user/signup',[SignUpController::class,'register']);

// Preferences APIs
Route::middleware('auth:api')->group(function () {
    Route::post('user/savePreferences', [PreferenceController::class, 'savePreferences']);
    Route::get('user/getPreferences', [PreferenceController::class, 'getPreferences']);
    Route::put('user/updatePreferences', [PreferenceController::class, 'updatePreferences']);
});

//Login API
Route::post('user/login',[LoginController::class,'login']);

// Logout API
Route::post('user/logout',[LogoutController::class,'logout'])->middleware('auth:api');

//change password
Route::put('/user/password/change',[ChangePasswordController::class,'changePassword'])->middleware('auth:api');

//update profile(name/email)
Route::put('/user/update',[UpdateProfileController::class,'updateProfile'])->middleware('auth:api');

Route::middleware('auth:api')->group(function () {
    Route::get('user/getSettings', [UserSettingController::class, 'getSettings']);
    Route::put('user/updateSettings', [UserSettingController::class, 'updateSettings']);
});

//CRUD Ingredients
Route::middleware('auth:api')->group(function () {
    Route::get('/AllIngredients',[IngredientsController::class,'index']);
    Route::get('ingredients/{id}',[IngredientsController::class,'show']);
    Route::post('/AddIngredient',[IngredientsController::class,'store']);
    Route::put('/UpdateIngredient/{id}',[IngredientsController::class,'update']);
    Route::delete('/deleteIngredient/{id}',[IngredientsController::class,'destroy']);
    Route::get('ingredients/search',[IngredientsController::class,'search']);
});

// CRUD Pantry
Route::middleware('auth:api')->group(function(){
    Route::get('/pantry',[PantryController::class,'index']);
    Route::post('/pantry',[PantryController::class,'store']);
    Route::put('/pantry/{id}',[PantryController::class,'update']);
    Route::delete('/pantry/{id}',[PantryController::class,'destroy']);
    Route::get('/pantry/search',[PantryController::class,'search']);
});

