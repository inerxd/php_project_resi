<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Survey;
use App\Models\Question;
use App\Models\Answer;
use App\Models\Encuesta;
use App\Models\SurveyResponse;
class PruebaController extends Controller
{
    public function show(){
       
        $survey = Survey::all();
        
        return view ('Encuesta');
    }
}
