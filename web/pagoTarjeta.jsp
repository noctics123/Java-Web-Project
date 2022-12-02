<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pago tarjeta</title>
        <link rel="stylesheet" href="proyecto/Estilos//miestilotarjeta.css">
        <script type="text/javascript" src="../js/validarTarjeta.js"></script>
        <script type="text/javascript" src="../js/mostrarTarjeta.js"></script>
    </head>
    <body>

        <!-- Tarjeta -->
        <section class="tarjeta">
            <div class="logo-marca">
                <img src="proyecto/imagenes/visa.png" alt="">
            </div>
            <img src="proyecto/imagenes/chip-tarjeta.png" class="chip" alt="">
            <div class="datos">
                <div class="grupo" id="numero">
                    <label>Número Tarjeta</label>
                    <p id="mostrarnumero"> #### #### #### ####</p>
                </div>
                <div class="flexbox">
                    <div class="grupo" id="nombre">
                        <label>Nombre Tarjeta</label>
                        <p id="mostrarnombre">Sergio Alvarez</p>
                    </div>

                    <div class="grupo" id="expiracion">
                        <label>Expiracion</label>
                        <p class="expiracion">
                            <span id="mostrarmes">MM</span> / <span id="mostraraño">AA</span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Formulario -->
        <form class="formulario" name="form" onsubmit="return ValidarDatos()" method="POST" action="../procesos/procesoPago.php">
       
        <div class="grupo">
            <label>Número de la Tarjeta</label>
            <input type="text" onkeyup="escribirnumero()" id="inputNumero" maxlength="16" autocomplete="off" name="numero">
        </div>
        <div class="grupo">
            <label>Nombre del Titular</label>
            <input type="text" onkeyup="escribirnombre()" id="inputNombre" maxlength="19" autocomplete="off" name="titular">
        </div>
        <div class="flexbox">
            <div class="grupo expira">
                <label>Fecha de Expiración</label>
                <div class="flexbox">
                    <div class="grupo-select">
                        <select id="mes" onclick="escribirmes()">
                            <option>Mes</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                    </div>
                    <div class="grupo-select" onclick="escribiraño()">
                        <select id="year">
                            <option>Año</option>
                            <option>2023</option>
                            <option>2024</option>
                            <option>2025</option>
                            <option>2026</option>
                            <option>2027</option>
                            <option>2028</option>
                            <option>2029</option>
                            <option>2030</option>
                            <option>2031</option>
                            <option>2032</option>
                            <option>2033</option>
                            <option>2034</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="grupo ccv">
                <label>CCV</label>
                <input type="text" maxlength="3" autocomplete="off" name="css">
            </div>
        </div>
        <input type="hidden" name="accion" value="agregar"><br>
        <button type="submit" onclick="ValidarDatos()" class="">GUARDAR</button>
        <center><a href="destinos.html">Volver</a></center>
        
    </form>
</body>
</html>
