<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Tutorial extends Model
{
    use HasFactory;

    protected $table = 'tutorials';
    
    protected $fillable =[
        'title',
        'description',
        'thumbnail_url',
        'video_url',
        'duration',
        'difficulty',
        'instructor_name',
        'rating',
        'view_count',
        'steps',
        'tags',
        'is_published',
    ];

    protected $casts = [
        'steps' => 'array',
        'tags' => 'array',
        'is_published' => 'boolean',
    ];

}
