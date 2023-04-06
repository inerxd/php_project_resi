@extends('adminlte::page')



@section('content')
    
 
    
    <a href="admin/create " class="btn btn-primary">Crear encuesta</a>
              

    <div class="card mt-4">
       <div class="card-header"> </div>

             <div class="card-body"> 
                 <ul class="list-group">
                       @foreach($newsurvey as $newsurvey)
                           <li class="list-group-item">
                           <strong>Nombre de la encuesta</strong><br> 
                                <a href="{{ $newsurvey->path() }}"> {{ $newsurvey->title }}   </a>
                            <div class="mt-2">
                               <small class="font-weight-bold">url de la encuesta</small>
                               <p>    
                                  <a href="{{$newsurvey->publicpath()}}">                  
                                  {{$newsurvey->publicpath()}}
                                  </a>
                              </p>

                              <div class="card-footer">
                            <form action="/admin/{{$newsurvey->id}}"method="post">
                            @method('DELETE')
                            @csrf
                        


                            <button type="submit" class="btn btn-sm btn-outline-danger">Eliminar Encuesta </button>
                            </form>
                            </div>
       






                            </div>
                            
                            </li>
                        @endforeach
                    
                    </ul>
               </div>
        </div>
    </div>
                    


    
@endsection
