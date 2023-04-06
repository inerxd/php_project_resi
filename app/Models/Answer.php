<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    use HasFactory;
    
    public $guarded = [];
    public function questions()
    {
            return $this->belongsTo(Question::class);
    
    }
    public function response(){
        return $this->hasmany(SurveyResponse::class);
    
    }
}
