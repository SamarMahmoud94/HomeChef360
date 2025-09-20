<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recipes extends Model{
    use HasFactory;
    
    protected $table='recipes';

    protected $fillable = [
        'name',
        'description',
        'cuisine',
        'category',
        'difficulty',
        'prep_time',
        'cook_time',
        'servings',
        'calories_per_serving',
        'protein_per_serving',
        'carbs_per_serving',
        'fat_per_serving',
        'image_url',
        'video_url',
        'rating',
        'review_count',
        'view_count',
    ];

    //Relations

    public function ingredients(){
        return $this->hasMany(RecipeIngredients::class,'recipe_id');
    }

    public function reviews(){
        return $this->hasMany(RecipeReview::class,'recipe_id');
    }

    public function favorites(){
        return $this->hasMany(UserFavorite::class,'recipe_id');
    }

    public function videos(){
        return $this->hasMany(RecipeVideo::class,'recipe_id');
    }
    public function steps(){
        return $this->hasMany(RecipeStep::class,'recipe_id');
    }
}