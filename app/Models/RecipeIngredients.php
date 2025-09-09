<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecipeIngredients extends Model
{
    use HasFactory;

    protected $table = 'recipeingredients';

    protected $fillable = [
        'recipe_id',
        'ingredient_id',
        'name',
        'quantity',
        'unit',
    ];

    //relations

    public function recipe()
    {
        return $this->belongsTo(Recipes::class, 'recipe_id');
    }

    public function ingredient()
    {
        return $this->belongsTo(Ingredients::class, 'ingredient_id');
    }
}