@extends('adminlte::page')

@section('content')
<div class="container">
    <div class="row justify-content-center">
       <div class="col-md-8">
             <div class="card">
                <div class="card-header">Crear nuevas preguntas</div>

                <div class="card-body">
              
                <form action="/admin/{{$newsurvey->id}}/pregunta" method="post">
                  @csrf
                  <div class="form-group">
                    <label for="question"> Pregunta</label>
                    <input name="question[question]" type="text" class="form-control" id="question" aria-describedby="questionhelp" placeholder="Escriba la pregunta">
                     <small id="questionhelp" class="form-text text-muted">escriba su pregunta.</small>
                 
                     @error('question.question')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror


                  </div>

                  <div class="form group">
                     <fieldset>
                      
                      <legend>Escriba las opciones de la respuesta</legend>
                          <div>
                                      <div class="form group">
             <label for="answers">Respuestas</label>
             <input name="answers[][answer]" type="text" class="form-control"
              id="answers" aria-describedby="answerhelp" placeholder="Ingrese la respuesta">
               <small id="answershelp" class="form-text text-muted">Opciones de respuesta</small>

                         
                     @error('answers.0.answer')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror
                         
                         
                          </div>              

                          <div class="form group">
             <label for="answers">Respuestas</label>
             <input name="answers[][answer]" type="text" class="form-control" id="answers" aria-describedby="answershelp" placeholder="Ingrese la respuesta">
                     <small id="answershelp" class="form-text text-muted">Opciones de respuesta</small>

                         
                     @error('answers.1.answer')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror
                         
                         
                          </div>              


                          <div class="form group">
             <label for="answers">Respuestas</label>
             <input name="answers[][answer]" type="text" class="form-control" id="answers" aria-describedby="answershelp" placeholder="Ingrese la respuesta">
                     <small id="answershelp" class="form-text text-muted">Opciones de respuesta</small>

                         
                     @error('answers.2.answer')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror
                         
                         
                          </div>             

                                      </div>
                   </fieldset>
                   </div>
             
                  <button type="submit" class="btn btn-primary">Crear preguntas</button>
             </form>











                </div>
         </div>
         </div>
                   
    </div>
  </div>
         
@endsection


