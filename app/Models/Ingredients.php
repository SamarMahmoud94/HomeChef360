<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ingredients extends Model{
    use HasFactory;

    protected $table = 'ingredients';
    

    protected $fillable = [
        'name',
        'unit',
        'calories_per_unit',
        'protein_per_unit',
        'carbs_per_unit',
        'fat_per_unit',
        'fiber_per_unit',
        'sugar_per_unit',
        'sodium_per_unit',
        'image_url',
        'description',
        'category',
    ];

    //Relations

    public function recipeIngredients(){
        return $this->hasMany(RecipeIngredients::class,'ingredient_id');
    }

    public function pantry(){
        return $this->hasMany(Pantry::class,'ingredient_id');
    }
}