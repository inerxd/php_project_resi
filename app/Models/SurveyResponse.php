<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyResponse extends Model
{
    use HasFactory;
    protected $guarded = [];

       public function encuestas()
       {
        return $this->belongsTo(Encuesta::class);
       }
}
