<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recipes extends Model{
    use HasFactory;
    
    protected $table='recipes';

    protected $fillable = [
       'Title',
       'description',
       'cuisine_origin',
       'preparation_time',
       'status',
       'created_by',
    ];

    //Relations

    public function user(){
        return $this->belongsTo(User::class,'created_by');
    }

    public function recipeIngredients(){
        return $this->hasMany(RecipeIngredients::class,'recipe_id');
    }
}