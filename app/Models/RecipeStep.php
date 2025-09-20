<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class RecipeStep extends Model
{
    use HasFactory;

    protected $table = 'recipesteps';

    protected $fillable = [
        'recipe_id',
        'step_number',
        'instruction',
    ];

    public function recipe(){
        return $this->belongsTo(Recipes::class,'recipe_id');
    }
}
