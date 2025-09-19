<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UserFavorite extends Model
{
    protected $table = 'user_favorites';
     protected $fillable = [
        'user_id',
        'recipe_id',
     ];

    public function user(){
        return  $this->belongsTo(User::class,'user_id');
    }

    public function recipe(){
        return $this->belongsTo(Recipes::class,'recipe_id');
    }
}
