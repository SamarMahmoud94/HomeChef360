<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class RecipeVideo extends Model
{
    use HasFactory;

    protected $table = 'recipevideos';

    protected $fillable = [
        'recipe_id',
        'video_url',
        'caption',
    ];

    public function recipe(){
        return $this->belongsTo(Recipes::class,'recipe_id');
    }
}
