@extends('adminlte::page')

@section('content')


<div class="container">
  <div class="row justify-content-center">
     <div class="col-md-8">
       <div class="card">
        <div class="card-header">crear una nueva encuesta
          
          <div class="card-body">
             <form action="{{route('admin.store')}}" method="post">
                  @csrf
                  <div class="form-group">
                    <label for="title">Tipo de Encuesta</label>
                    <input name="title" type="text" class="form-control" id="title" aria-describedby="titlehelp" placeholder="Ingrese el nombre del tipo de la encuest">
                     <small id="titlehelp" class="form-text text-muted">Que tipo de encuesta sera</small>
                 
                     @error('title')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror


                  </div>
                  <div class="form-group">
                    <label for="description">Nombre de la encuesta</label>
                    <input name="description" type="text" class="form-control" id="description" aria-describedby="descriptionhelp" placeholder="Ingrese el nombre de la encuesta">
                     <small id="descriptionhelp" class="form-text text-muted">que nombre tendra la encuesta</small>
                    
                     @error('description')
                        <small class="text-danger"> {{$message}} </small>    
                       @enderror
                  </div>
                  <button type="submit" class="btn btn-primary">crear encuesta</button>
             </form>
         
          </div>
        
        
        
        
        </div>
       
       
       
        
       </div>
     
     
     
     
     
     
     </div>
     @endsection
