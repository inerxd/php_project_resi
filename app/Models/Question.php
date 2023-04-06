<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    public $guarded = [];
    public function survey()
    {
            return $this->belongsTo(Survey::class);
    
    }

    public function answers(){
        return $this->hasmany(Answer::class);
    
    }
    public function response(){
        return $this->hasmany(SurveyResponse::class);
    
    }
}
