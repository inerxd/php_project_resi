@extends('adminlte::page')

@section('content')


<div class="container">
  <div class="row justify-content-center">
     <div class="col-md-8">
         <h1>{{$newsurvey->title}}</h1>

         <form action="/surveys/{{$newsurvey->id}}-{{ Str::slug ($newsurvey->title)}}" method="post">
          @csrf
          @foreach($newsurvey->questions as $key => $question)
          <div class="card mt-4">
                    <div class="card-header"><strong>{{$key + 1}}  </strong>{{$question->question}}</div>

                      <div class="card-body">


                      @error('responses.'. $key .'.answer_id')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror

                         <ul class="list-group">
                          @foreach($question->answers as $answer)
                            <label for="answer{{$answer->id}}">
                               <li class="list-group-item">
                                       <input type="radio" name="responses[{{$key}}][answer_id]"id="answer{{$answer->id}}"
                                        {{ (old('responses.'. $key .'.answer_id') == $answer->id) ? 'checked' : ''    }}
                                        class="mr-2" value="{{$answer->id}}">
                                      {{$answer->answer}}
                                      <input type="hidden" name="responses[{{$key}}][question_id]"value="{{$question->id}}">
                               </li>
                               </label>
                          @endforeach
                      </ul>
                      </div>
                    </div>
                    @endforeach
                    
        



       <div class="card mt-4">
        <div class="card-header">datos personales </div>
          
          <div class="card-body">
             
                  <div class="form-group">
                    <label for="name">tu nombre</label>
                    <input name="survey[name]" type="text" class="form-control" id="name" aria-describedby="namehelp" placeholder="tu nombre">
                     <small id="nombrehelp" class="form-text text-muted">cual es tu nombre?</small>
                 
                     @error('name')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror


                  </div>
                  <div class="form-group">
                    <label for="control">tu numero de control</label>
                    <input name="survey[control]" type="text" class="form-control" id="control" aria-describedby="controlhelp" placeholder="tu numero de control">
                     <small id="controlhelp" class="form-text text-muted">ingresa tu numero de control por favor</small>
                    
                     @error('control')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror
                  </div>
                 
         
                            <div>

                            <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>



          </div>
        
          </form>
        
        
        </div>
       
       
       
        
       </div>
     
     
     
     
     
     
     </div>
     @endsection
