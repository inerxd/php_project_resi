<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Survey;
use App\Models\Question;
use App\Models\Answer;
use App\Models\Encuesta;
use App\Models\SurveyResponse;

class SurveyController extends Controller
{
    public function show (Survey $newsurvey, $slug)
    {
      $newsurvey->load('questions.answers');
      return view('survey.show',compact('newsurvey'));
    }
    
    public function store(Survey $newsurvey)
    {
        $data = request()->validate([
            'responses.*.answer_id' => 'required',
            'responses.*.question_id' => 'required',
            'survey.name' => 'required',
            'survey.control' => 'required'
            ]);
           
         $survey = $newsurvey->encuestas()->create($data['survey']);
         $survey->responses()->createMany($data['responses']);
         return  redirect()->back();
    }
}
