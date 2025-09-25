<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ShoppingList extends Model
{
    use HasFactory;

    protected $table = 'shopping_list';

    protected $fillable = [
        'user_id',
        'recipe_id',
        'ingredient_id',
        'name',
        'quantity',
        'unit',
        'status',
    ];

    //relations
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function recipe()
    {
        return $this->belongsTo(Recipes::class,'recipe_id');
    }

    public function ingredient()
    {
        return $this->belongsTo(Ingredients::class,'ingredient_id');
    }
}
