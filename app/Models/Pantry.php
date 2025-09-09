<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pantry extends Model
{
    use HasFactory;

    protected $table = 'pantry';

    public $timestamps = false;
    
    protected $fillable = [
        'user_id',
        'ingredient_id',
    ];

    //relations

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function ingredient()
    {
        return $this->belongsTo(Ingredients::class, 'ingredient_id');
    }
}
