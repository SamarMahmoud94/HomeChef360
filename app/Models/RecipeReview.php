<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class RecipeReview extends Model
{
    protected $table = 'recipe_reviews';

    protected $fillable =[
        'user_id',
        'recipe_id',
        'rating',
        'review_text',
    ];

    public function recipe(){
        return $this->belongsTo(Recipes::class,'recipe_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
}
