<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Survey;
use App\Models\Question;
use App\Models\Answer;
use App\Models\Encuesta;
use App\Models\SurveyResponse;


class PreguntaController extends Controller
{
    
    public function create(Survey $newsurvey)
    {
        return view('preguntas.create',compact('newsurvey'));
    }
    public function store(Survey $newsurvey, Question $question)
    {
         
      $data = request()->validate([
      'question.question' => 'required',
      'answers.*.answer' => 'required'
      ]);

          $question = $newsurvey->questions()->create($data['question']);
          $question->answers()->createMany($data['answers']);
 
          return redirect('admin/' .$newsurvey->id);
    }
   
    public function destroy(Survey $newsurvey, Question $question)
{
    $question->answers()->delete();
    $question->delete();
    return redirect($newsurvey->path());
}

}
