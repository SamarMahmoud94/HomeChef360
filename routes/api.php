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
use App\Http\Controllers\Recipe\RecipeIngredientController;
use App\Http\Controllers\Recipe\RecipeReviewController;
use App\Http\Controllers\Recipe\RecipeStepController;
use App\Http\Controllers\Recipe\RecipeVideoController;
use App\Http\Controllers\Recipe\UserFavoriteController;
use App\Http\Controllers\ShoppingListController;
use App\Http\Controllers\TutorialController;
use App\Http\Controllers\User\NutritionTrackingController;
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
    Route::get('/recipes/categories',[RecipeController::class,'getCategories']);
    Route::get('/recipes/cuisines',[RecipeController::class,'getCuisines']);
    Route::get('/recipes/{id}',[RecipeController::class,'show']);
    Route::post('/recipes',[RecipeController::class,'store']);
    Route::put('/recipes/{id}',[RecipeController::class,'update']);
    Route::delete('/recipes/{id}',[RecipeController::class,'destroy']);
});

//Recipe Ingredients
Route::middleware('auth:api')->group(function(){
    Route::post('/recipe-ingredients',[RecipeIngredientController::class,'store']);
    Route::put('/recipe-ingredients/{id}',[RecipeIngredientController::class,'update']);
    Route::delete('/recipe-ingredients/{id}',[RecipeIngredientController::class,'destroy']);
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

//tutorial
Route::middleware('auth:api')->group(function(){
    Route::get('/tutorials',[TutorialController::class,'index']);
    Route::get('/tutorials/search',[TutorialController::class,'search']);
    Route::get('/tutorials/{id}',[TutorialController::class,'show']);
    Route::post('/tutorials',[TutorialController::class,'store']);
    Route::put('/tutorials/{id}',[TutorialController::class,'update']);
    Route::delete('/tutorials/{id}',[TutorialController::class,'destroy']);
});

// recipe videos
Route::middleware('auth:api')->group(function(){
    Route::get('/recipe-videos', [RecipeVideoController::class, 'index']);
    Route::get('/recipe-videos/{id}', [RecipeVideoController::class, 'show']);
    Route::post('/recipe-videos', [RecipeVideoController::class, 'store']);
    Route::put('/recipe-videos/{id}', [RecipeVideoController::class, 'update']);
    Route::delete('/recipe-videos/{id}', [RecipeVideoController::class, 'destroy']);
});

// recipe steps
Route::middleware('auth:api')->group(function () {
    Route::post('/recipe-steps', [RecipeStepController::class, 'store']);
    Route::put('/recipe-steps/{id}', [RecipeStepController::class, 'update']);
    Route::delete('/recipe-steps/{id}', [RecipeStepController::class, 'destroy']);
});

//nutrition tracking
Route::middleware('auth:api')->group(function () {
    Route::post('/nutrition', [NutritionTrackingController::class, 'store']);         // Log daily nutrition
    Route::get('/nutrition', [NutritionTrackingController::class, 'show']);           // Get daily nutrition (by date param)
    Route::put('/nutrition/{id}', [NutritionTrackingController::class, 'update']);    // Update daily nutrition
    Route::get('/nutrition/weekly', [NutritionTrackingController::class, 'weekly']);  // Get weekly nutrition
    Route::get('/nutrition/monthly', [NutritionTrackingController::class, 'monthly']); // Get monthly nutrition
});

Route::middleware('auth:api')->group(function () {
    Route::get('/shopping-list', [ShoppingListController::class, 'index']); // Get all shopping list items for user
    Route::post('/shopping-list', [ShoppingListController::class, 'store']); // Add new item
    Route::put('/shopping-list/{id}', [ShoppingListController::class, 'update']); // Update (status, quantity, unit.)
    Route::delete('/shopping-list/{id}', [ShoppingListController::class, 'destroy']); // Delete item
    Route::post('/shopping-list/add-missing/{recipeId}', [ShoppingListController::class, 'addMissingFromRecipe']); // Add missing from recipe
});