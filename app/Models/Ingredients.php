<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ingredients extends Model{
    use HasFactory;

    protected $table = 'ingredients';
    
    public $timestamps = false;

    protected $fillable = [
        'name',
        'quantity',
        'unit',
        'expiry_date',
    ];

    //Relations

    public function recipeIngredients(){
        return $this->hasMany(RecipeIngredients::class,'ingredient_id');
    }

    public function pantry(){
        return $this->hasMany(Pantry::class,'ingredient_id');
    }
}