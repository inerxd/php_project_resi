@extends('adminlte::page')



@section('content')
    <p>MOSTRAR ENCUESTAS</p>
 
 <div class="container">
    <div class="row justify-content-center">
       <div class="col-md-8">
             <div class="card">
                <div class="card-header"><strong>Nombre de la encuesta</Strong> <br>{{ $newsurvey->title }}</div>

                <div class="card-body">
                  
                
                <a class="btn btn-primary" href="/admin/{{$newsurvey->id}}/pregunta/create" role="button">Crear preguntas </a>
                <a class="btn btn-primary" href="/surveys/{{$newsurvey->id}}-{{ Str::slug ($newsurvey->title)}}" role="button">Tomar encuesta </a>
                </div>

              </div>
                @foreach($newsurvey->questions as $question) 
                <div class="card mt-4">
                    <div class="card-header"><strong>La pregunta</strong><br>{{$question->question}}</div>


                      <div class="card-body">
                         <ul class="list-group">
                          @foreach($question->answers as $answer)
                             <li class="list-group-item d-flex justify-content-between">
                                 <div><strong>La respuesta</strong><br>{{$answer->answer}}</div>
                                 @if($question->response->count())
                                 <div>{{ intval(( $answer->response->count() * 100) / $question->response->count()  )}}% </div>
                             
                             @endif
                             </li>
                          @endforeach
                      </ul>
                      </div>
                 
                            <div class="card-footer">
                            <form action="/admin/{{$newsurvey->id}}/pregunta/{{ $question->id  }}"method="post">
                            @method('DELETE')
                            @csrf
                        


                            <button type="submit" class="btn btn-sm btn-outline-danger">Eliminar Pregunta </button>
                            </form>
                            </div>
                    
                            @endforeach
                    </div>
                   
                    
         </div>
      
       </div>
            
@endsection


