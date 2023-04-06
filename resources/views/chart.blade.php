@extends('adminlte::page')
@section('content')
     <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <
    </head>
    <body>
             <div id="chart-container"></div>
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script>
        var datas = <?php echo json_encode ($datas) ?>

                 Highcharts.chart('chart-container' , {
               title : {
                      text: 'Usuarios registrado'
                      },
                subtitle :{
                      
                       text: 'fuente: medios de ITVH'
                },
                xAxis: {
                    categories: ['Ene','Feb','Mzo','Abr','May','Jun','Jul','Agt','Sep','Oct','Nov','Dic']
                },
                yAxis: {
                     title: {
                         text: 'Numero de nuevo usuario'
                     }

                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle'
                },
                plotOptions: {
                    series:{
                        allowPointSelect: true
                    }
                },
                series: [{
                    name: 'Usuario registrado y contestado las encuestas',
                    data: datas
                }]
             
            })
        </script>

    </body>
    </html>
                    


    
@endsection


