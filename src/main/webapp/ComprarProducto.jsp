<%-- 
    Document   : ComprarProducto
    Created on : 02-03-2025, 3:22:02 p. m.
    Author     : CPU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comprar Productos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    </head>
    <body class="bg-dark"> 


    <div class="text-bg-dark p-3">
        <div class="container mt-5"> 
            <div class="text-center"> 
                <div class="row"> 
                    <div class="col">

                        <tr>
                            <th scope="col" colspan="5" class="text-center" ><p class="fs-1"> JKL INC</p></th>
                        </tr>
                        
                        <h3>MAPAS:</h3>

                        <img src="images/icono.jpg" class="img-thumbnail">

                        <div class="mt-3">
                            <a href="ComprarMapa.jsp"> <p class="btn btn-primary"> COMPRAR </p></a>
                        </div>
                    </div>
                </div>
            </div> 
        </div>

        <div class="container mt-5">
            <div class="text-center"> 
                <div class="row">
                    <div class="col">

                        <h3>EQUIPO:</h3>

                        <img src="images/equipamiento.jpg" class="img-thumbnail" alt="alt"/>

                        <div class="mt-3">
                            <a href="ComprarEquipo.jsp"> <p class="btn btn-primary"> COMPRAR </p></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body> 
</html>
