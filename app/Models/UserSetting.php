<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UserSetting extends Model
{
    use HasFactory;

    protected $table = 'user_settings';
    protected $fillable = [
        'user_id',
        'language',
        'theme',
        'measurement_units',
        'default_cuisine',
        'default_servings',
        'notifications',
    ];

    protected $casts =[
        'notifications' => 'array',
    ];

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
}
