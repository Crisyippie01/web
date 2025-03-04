<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Equipamiento</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-dark text-white">
        <div class="container mt-5">
            
            <h2 class="text-center">Selecciona tu Equipamiento </h2> 

            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/chaleco_antibalas.png" class="card-img-top" alt="Chaleco Antibalas">
                        <div class="card-body text-center">
                            <h5 class="card-title">Chaleco Antibalas</h5>
                            <p class="card-text">$5.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="chaleco_antibalas">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="5000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/DNI.png" class="card-img-top" alt="DNI">
                        <div class="card-body text-center">
                            <h5 class="card-title">DNI Falso</h5>
                            <p class="card-text">$10.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="DNI">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="10000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/Licencia.png" class="card-img-top" alt="Licencia">
                        <div class="card-body text-center">
                            <h5 class="card-title">Licencia</h5>
                            <p class="card-text">$10.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="Licencia">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="10000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/Mascara de Gas.png" class="card-img-top" alt="Mascara de Gas">
                        <div class="card-body text-center">
                            <h5 class="card-title">Mascara de Gas</h5>
                            <p class="card-text">$5.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="Mascara de Gas">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="5000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/bomba.png" class="card-img-top" alt="Bomba">
                        <div class="card-body text-center">
                            <h5 class="card-title">Bomba</h5>
                            <p class="card-text">$30.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="Bomba">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="30000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/molotov.png" class="card-img-top" alt="molotov">
                        <div class="card-body text-center">
                            <h5 class="card-title">Molotov</h5>
                            <p class="card-text">$2.500</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="molotov">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="2500">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/esposas.png" class="card-img-top" alt="esposas">
                        <div class="card-body text-center">
                            <h5 class="card-title">Esposas</h5>
                            <p class="card-text">$1.500</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="esposas">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="1500">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/katana.png" class="card-img-top" alt="katana">
                        <div class="card-body text-center">
                            <h5 class="card-title">Katana</h5>
                            <p class="card-text">$25.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="katana">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="25000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/mascara.png" class="card-img-top" alt="mascara1">
                        <div class="card-body text-center">
                            <h5 class="card-title">Mascara Blanca</h5>
                            <p class="card-text">$5.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="mascara1">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="5000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/mascara2.png" class="card-img-top" alt="mascara2">
                        <div class="card-body text-center">
                            <h5 class="card-title">Mascara Roja</h5>
                            <p class="card-text">$5.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="mascara2">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="5000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/mascara3.png" class="card-img-top" alt="mascara3">
                        <div class="card-body text-center">
                            <h5 class="card-title">Mascara Verde</h5>
                            <p class="card-text">$5.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="mascara3">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="5000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/walkie.png" class="card-img-top" alt="radio">
                        <div class="card-body text-center">
                            <h5 class="card-title">Radio</h5>
                            <p class="card-text">$500</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="radio">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="500">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/9mm.png" class="card-img-top" alt="9mm">
                        <div class="card-body text-center">
                            <h5 class="card-title">Pistola 9mm</h5>
                            <p class="card-text">$5.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="9mm">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="5000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/dk.png" class="card-img-top" alt="dk">
                        <div class="card-body text-center">
                            <h5 class="card-title">Desert Eagle</h5>
                            <p class="card-text">$7.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="dk">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="7000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/tec-9.png" class="card-img-top" alt="tec-9">
                        <div class="card-body text-center">
                            <h5 class="card-title">Tec-9</h5>
                            <p class="card-text">$15.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="Tec-9">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="15000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/uzi.png" class="card-img-top" alt="uzi">
                        <div class="card-body text-center">
                            <h5 class="card-title">Micro Uzi</h5>
                            <p class="card-text">$20.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="uzi">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="20000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/escopeta.png" class="card-img-top" alt="Escopeta">
                        <div class="card-body text-center">
                            <h5 class="card-title">Escopeta</h5>
                            <p class="card-text">$15.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="Escopeta">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="15000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/ak-47.png" class="card-img-top" alt="ak-47">
                        <div class="card-body text-center">
                            <h5 class="card-title">Ak-47</h5>
                            <p class="card-text">$35.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="ak-47">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="35000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/silenciada.png" class="card-img-top" alt="silenciada">
                        <div class="card-body text-center">
                            <h5 class="card-title">Pistola Silenciada</h5>
                            <p class="card-text">$10.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="silenciada">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="10000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/CajaCargador.png" class="card-img-top" alt="CajaCargador1">
                        <div class="card-body text-center">
                            <h5 class="card-title">Caja con 6 cargadores de Pistola</h5>
                            <p class="card-text">$3.500</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="CajaCargador1">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="3500">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/CajaCargador.png" class="card-img-top" alt="CajaCargador2">
                        <div class="card-body text-center">
                            <h5 class="card-title">Caja con 6 cargadores de Desert Eagle</h5>
                            <p class="card-text">$9.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="CajaCargador2">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="9000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/CajaCargador.png" class="card-img-top" alt="CajaCargador3">
                        <div class="card-body text-center">
                            <h5 class="card-title">Caja con 6 cargadores de Tec-9</h5>
                            <p class="card-text">$15.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="CajaCargador3">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="15000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/CajaCargador.png" class="card-img-top" alt="CajaCargador4">
                        <div class="card-body text-center">
                            <h5 class="card-title">Caja con 6 cargadores de Micro Uzi</h5>
                            <p class="card-text">$15.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="CajaCargador4">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="15000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/CajaCargador.png" class="card-img-top" alt="CajaCargador5">
                        <div class="card-body text-center">
                            <h5 class="card-title">Caja con 6 cargadores de Escopeta</h5>
                            <p class="card-text">$10.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="CajaCargador5">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="10000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row mt-4">

                <div class="col-md-6">
                    <div class="card bg-secondary text-white">
                        <img src="images/CajaCargador.png" class="card-img-top" alt="CajaCargador6">
                        <div class="card-body text-center">
                            <h5 class="card-title">Caja con 6 cargadores de Ak-47</h5>
                            <p class="card-text">$24.000</p>
                            <form action="AgregarCarrito.jsp" method="GET">
                                <input type="hidden" name="nombre" value="CajaCargador6">
                                <input type="number" class="form-control text-center" name="cantidad" min="1" value="1">
                                <input type="hidden" name="precio" value="24000">
                                <button type="submit" class="btn btn-primary mt-2">Agregar al carrito</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="text-center mt-4">
                <a href="AgregarCarrito.jsp" class="btn btn-success">Ver Carrito</a>
                <a href="ComprarProducto.jsp" class="btn btn-danger">Salir</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
