<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Tymon\JWTAuth\Contracts\JWTSubject;


class User extends Authenticatable implements JWTSubject
{

    use HasFactory, Notifiable;

    protected $table = 'user';

    protected $fillable = [
        'name',
        'email',
        'password',
        'role',
        'onboardingComplete',
        'is_active',
        'email_verified_at',
        'profile_image_url',
    ];


    protected $hidden = [
        'password',
    ];

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }

    public function getAuthPassword()
    {
        return $this->password; 
    }


    //relations
    public function pantry()
    {
        return $this->hasMany(Pantry::class, 'user_id');
    }

    public function preferences()
    {
        return $this->hasOne(UserPreference::class, 'user_id');
    }

    public function settings(){
        return $this->hasOne(UserSetting::class,'user_id');
    }

    public function reviews()
    {
        return $this->hasMany(RecipeReview::class, 'user_id');
    }

    public function favorites()
    {
        return $this->hasMany(UserFavorite::class, 'user_id');
    }

    public function nutritiontracking(){
        return $this->hasMany(NutritionTracking::class,'user_id');
    }
    public function shoppingList()
    {
        return $this->hasMany(ShoppingList::class, 'user_id');
    }

    public function mealplans()
    {
        return $this->hasMany(MealPlan::class, 'user_id');
    }
}
