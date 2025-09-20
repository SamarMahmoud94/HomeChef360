<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class NutritionTracking extends Model
{
    use HasFactory;

    protected $table = 'nutritiontracking';

    protected $fillable = [
        'user_id',
        'date',
        'calories',
        'protein',
        'carbs',
        'fat',
    ];

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
}
