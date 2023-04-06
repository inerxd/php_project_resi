<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Survey;
use App\Models\Question;
use App\Models\Answer;
use App\Models\Encuesta;
use App\Models\SurveyResponse;

class HomeController extends Controller
{
    
  
    
    public function index(){
       
        $newsurvey = auth()->user()->surveys;
        
        return view ('home',compact('newsurvey'));
    }

    



    
    public function barra(){
       
        $users = Encuesta::select (Encuesta::raw("COUNT(*) as count"))
           ->whereYear('created_at',date('Y'))
           ->groupBy(Encuesta::raw("Month(created_at)"))
           ->pluck('count');   
           
           $months = Encuesta::select (Encuesta::raw("Month(created_at)as month"))
           ->whereYear('created_at',date('Y'))
           ->groupBy(Encuesta::raw("Month(created_at)"))
           ->pluck('month');
           
           $datas = array(0,0,0,0,0,0,0,0,0,0,0,0);
           foreach ($months as $index => $months)
          {
              $datas[$months] = $users[$index];
          }       
  
  
          return view ('chart',compact('datas'));
      
      }


}



  