<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Encuesta extends Model
{
    use HasFactory;
    protected $guarded = [];
        
    public function res()
    {
        return $this->belongsTo(Survey::class);
    }
    public function responses(){
        return $this->hasmany(SurveyResponse::class);
    
    }
}
