<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\SignUpController;
use App\Http\Controllers\User\LoginController;
use App\Http\Controllers\User\LogoutController;
use App\Http\Controllers\User\ChangePasswordController;
use App\Http\Controllers\User\UpdateProfileController;
use App\Http\Controllers\IngredientsController;
use App\Http\Controllers\PantryController;
use App\Http\Controllers\Recipe\RecipeController;
use App\Http\Controllers\Recipe\RecipeIngredientCpntroller;
use App\Http\Controllers\Recipe\RecipeReviewController;
use App\Http\Controllers\Recipe\UserFavoriteController;
use App\Http\Controllers\User\PreferenceController;
use App\Http\Controllers\User\UserSettingController;
use App\Models\RecipeReview;

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
    Route::get('/ingredients/search',[IngredientsController::class,'search']);
    Route::get('/ingredients/{id}',[IngredientsController::class,'show']);
    Route::post('/AddIngredient',[IngredientsController::class,'store']);
    Route::put('/UpdateIngredient/{id}',[IngredientsController::class,'update']);
    Route::delete('/deleteIngredient/{id}',[IngredientsController::class,'destroy']);
    
});

// CRUD Pantry
Route::middleware('auth:api')->group(function(){
    Route::get('/pantry',[PantryController::class,'index']);
    Route::post('/pantry',[PantryController::class,'store']);
    Route::get('/pantry/search',[PantryController::class,'search']);
    Route::put('/pantry/{id}',[PantryController::class,'update']);
    Route::delete('/pantry/{id}',[PantryController::class,'destroy']);
    
});

//Recipe
Route::middleware('auth:api')->group(function(){
    Route::get('/recipes',[RecipeController::class,'index']);
    Route::get('/recipes/search',[RecipeController::class,'search']);
    Route::get('/recipes/{id}',[RecipeController::class,'show']);
    Route::post('/recipes',[RecipeController::class,'store']);
    Route::put('/recipes/{id}',[RecipeController::class,'update']);
    Route::delete('/recipes/{id}',[RecipeController::class,'destroy']);
    Route::get('/recipes/categories',[RecipeController::class,'getCategories']);
    Route::get('/recipes/cuisines',[RecipeController::class,'getCuisines']);
});

//Recipe Ingredients
Route::middleware('auth:api')->group(function(){
    Route::post('/recipe-ingredients',[RecipeIngredientCpntroller::class,'store']);
    Route::put('/recipe-ingredients/{id}',[RecipeIngredientCpntroller::class,'update']);
    Route::delete('/recipe-ingredients/{id}',[RecipeIngredientCpntroller::class,'destroy']);
});

//favorites 
Route::middleware('auth:api')->group(function(){
    Route::get('/favorites',[UserFavoriteController::class,'index']);
    Route::post('/favorites',[UserFavoriteController::class,'store']);
    Route::delete('/favorites/{id}',[UserFavoriteController::class,'destroy']);
});

//recipe reviews 
Route::middleware('auth:api')->group(function(){
    Route::get('/recipes/{recipeId}/reviews',[RecipeReviewController::class,'index']);
    Route::post('/recipes/{recipeId}/reviews',[RecipeReviewController::class,'store']);
});
