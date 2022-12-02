
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Disponibilidades</title>
        <script src="https://kit.fontawesome.com/283335a286.js" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="proyecto/Estilos/EstiloDestino.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
    </head>
    <body>
        <!-- CABECERA -->
        <header>
            <nav class="main-nav">
                <div class="header-titulo">
                    <img src="proyecto/imagenes/logo.png">
                    <p> Viajes económicos <br>
                        siempre </p>
                </div>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="viajes.jsp">Destinos</a></li>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <li><a href="blog.jsp">Blog</a></li>
                </ul>
            </nav>
        </header>

        <section class="menu contenedor">

            <h2 class="texto-viajes">Pasajes Aéreos</h2>

            <div class="viajes">
                <jsp:useBean class="DAO.DestinosDAO" id="DestinosDAO"> </jsp:useBean>
                <c:forEach items="${DestinosDAO.Listar()}" var="destino">
                    <div class="viaje">
                    <img src="proyecto/imagenes/${destino.imagen}" alt="alt"/>
                    <h2> ${destino.destino} </h2>
                    <p>Desde Lima</p>
                    <div class="precio">
                        <p>$ ${destino.costo}</p>
                        <button><a href="pagoTarjeta.jsp" class="fas fa-shopping-basket"></a></button>
                    </div>
                    </div>
                </c:forEach>
            </div>
        </section>
        <div class="formulario-contacto contenedor">

            <div class="informacion-contacto">
                <h3>Contactanos</h3>
                <p><i class="fas fa-map-marker-alt"></i>Callao 07031</p>
                <p><i class="fas fa-envelope"></i> perutravels@gmail.com</p>
                <p><i class="fas fa-phone-alt"></i>+51 923410921</p>
                <div class="redes-sociales">
                    <i class="fab fa-facebook-square"></i>
                    <i class="fab fa-twitter-square"></i>
                    <i class="fab fa-instagram"></i>
                </div>
            </div>

            <form class="formulario" action="Registrar" method="POST">
                <div class="input-formulario">
                    <label for="Nombres">Nombre</label>
                    <input type="text" placeholder="Nombres" name="nombre">
                </div>
                <div class="input-formulario">
                    <label for="Apellidos">Apellido</label>
                    <input type="text" placeholder="Apellidos" name="apellidos">
                </div>
                <div class="input-formulario">
                    <label for="Correo">Correo</label>
                    <input type="email" placeholder="ejemplo@ejemplo.com" name="correo">
                </div>
                <div class="input-formulario">
                    <label for="telefono">Teléfono</label>
                    <input type="tel" placeholder="+51 999 999 999" name="telefono">
                </div>
                <div class="input-formulario">
                    <label for="mensaje">Mensaje</label>
                    <textarea name="texto"></textarea>
                </div>
                <div class="btn-formulario">
                    <input type="hidden" class="btn btn-verde" name="accion" value="Informe">
                    <button> Enviar </button>
                </div>

            </form>

        </div>
        <div class="pie-pagina ">
            <div class="contenedor-piepagina contenedor">
                <div class="info">
                    <h3>Productos</h3>
                    <p> <a href="#">Vuelos</a>
                    <p> <a href="#">Paquetes</a>
                    <p> <a href="nosotros.jsp">Nosotros</a>
                    <p> <a href="#">Blog: Mundo Viajero</a>
                </div>
                <div class="info">
                    <h3>Conócenos</h3>
                    <p> <a href="#">Nuestra Empresa PERÚ TRAVELS</a>
                    <p> <a href="#">Nuestras Agencias PERÚ TRAVELS</a>
                    <p> <a href="#">Trabaja con nosotros</a>
                    <p> <a href="#">Politica de Proteccion de datos Personales</a>
                    <p> <a href="#">Responsabilidad Social Corporativa</a>
                </div>
                <div class="info">
                    <h3>Contáctanos</h3>
                    <p>Agencias de Viajes en Lima Perú</p>
                    <p>Av. Elmer Faucett s/n, Callao 07031 - Lima, Perú</p>
                </div>
                <div class="info">
                    <h3>Libro de Reclamaciones</h3>
                    <a href="Reclamaciones.jsp"> <img src="proyecto/imagenes/libro.png">
                        </div>
                        </div>
                        </div>

                        <hr>
                        <footer class="footer">
                            <p>Todos los derechos reservados &copy; 2022 PERÚ TRAVELS , desarrollado por el grupo 4</p>
                        </footer>
                        </body>
                        </html>
