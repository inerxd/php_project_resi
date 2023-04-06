<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>evitemos la desercion</title>
<link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 <link href="https://fonts.googleapis.com/css?family=Anton|Montserrat&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/dc7acab7cc.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="{{asset('proyecto/contenido/css/estilos.css') }}"  />
</head>



    <body>

 <header class="header">
        <div class="bg-dark ">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                      <div class=" navg navbar-nav w-100 justify-content-center " >

                        <a class="nav-item nav-link active" href="#"><i class="fas fa-home"><br>Inicio</i></a>

                        <a class="nav-item nav-link" href="#"><i class="fas fa-poll-h"></i><br>Encuesta</a>

                        <a class="nav-item nav-link" href="#"><i class="fas fa-address-card"><br>Nosotros</i> </a>
                      </div>
                    </div>
                  </nav>
            </div>
        </div>

        <div class="text-header d-flex align-items-center text-center">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 ">
                        <h2> Bievenido <span><br>
                        Te estábamos esperando</span> </h2>
                        <p>ORGULLASAMENTE ITVH</p>
                    </div>

                </div>
            </div>
        </div>

    </header>




 @yield('contenido')






 <!-- footer -->
 <footer>

       <div class="container-footer-all">

            <div class="container-body">

                <div class="colum1">
                    <h1>Mas informacion de la pagina web</h1>

                    <p>Esta pagina web esta dedicada apoyar alos estudiantes de la modalidad a distancia que no deserten de sus respetivas carreras.</p>

                </div>

                <div class="colum2">

                    <h1>Redes Sociales</h1>

                    <div class="row">
                          <a  href="https://www.facebook.com/TecNMCampusVhsa/"target="_blank"><i class="fab fa-facebook-square"></i></a>
                        <label>Siguenos en Facebook</label>
                     </div>
                    <div class="row">
                      <a href="https://twitter.com/TecNMCampusVhsa"target="_blank"><i class="fab fa-twitter-square"></i></a>
                        <label>Siguenos en Twitter</label>
                    </div>
                    <div class="row">
                       <a href="https://www.instagram.com/p/B3xT1DEgf8e/?utm_source=ig_embed"target="_blank"><i class="fab fa-instagram"></i></a>
                        <label>Siguenos en Instagram</label>
                    </div>



                </div>

                <div class="colum3">

                    <h1>Informacion Contactos</h1>

                    <div class="row2">
                        <img src="{{ asset('images/casa.png') }}">
                        <label>Carretera Villahermosa - Frontera Km. 3.5 Ciudad Industrial Villahermosa, Tabasco, Mexico. C.P. 86010
</label>
                    </div>


                    <div class="row2">
                        <img src="{{ asset('images/contacto.png') }}" >
                         <label>contacto@tecnm.mx </label>
                    </div>

                       <div class="row2">
                        <img src="{{ asset('images/cel.png') }}" >
                         <label>Conmutador: 9933530259 </label>
                    </div>

                </div>

            </div>

        </div>


    </footer>
        <div class="container-footer ">
               <div class="footer ">
                    <div class="copyright ">
                        © Copyright 2020 TecNM - Todos los Derechos Reservados
                    </div>



            </div>
   </div>

<!-- Option 2: jQuery, Popper.js, and Bootstrap JS -->
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>


</html>
