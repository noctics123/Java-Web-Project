<%@page import="DAO.MensajeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <h:head>
        <title>Perú Travels</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Estilos/Style.css">
        <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <link rel="stylesheet" href="proyecto/Estilos/Style.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
    </h:head>
    <body>
        <!-- CABECERA -->
        <header>
            <nav class="main-nav">
                <div class="header-titulo">
                    <img src="proyecto/imagenes/logo.png" width="23%">
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

        <section class="loguito">
            <div class="container-form">
                <div class="welcome-back">
                    <div class="message">
                        <h2>PERÚ TRAVEL</h2>
                        <p>Si ya tienes una cuenta, inicia sesion aqui</p>
                        <button class="sign-up-btn" onclick="location.href = 'login.jsp'">Iniciar Sesion</button>
                    </div>
                </div>
                <form class="formulario" name="frmAcc" action="Registrar" method="POST">
                    <h2 class="create-account">Crear una cuenta</h2>
                    <div class="iconos">
                        <div class="border-icon">
                            <img src="proyecto/imagenes/logoIg.png" alt=""/>
                        </div>
                        <div class="border-icon">
                            <img src="proyecto/imagenes/logoTw.png" alt=""/>
                        </div>
                        <div class="border-icon">
                            <img src="proyecto/imagenes/logoFb.png" alt=""/>
                        </div>
                    </div>
                   
                    <br>
                    <div>
                      <input type="text" placeholder="Nombres" name="Nombres">
                      <input type="text" placeholder="Apellidos" name="Apellidos">
                      <input type="email" placeholder="Email" name="Email">
                      <input type="password" placeholder="Contraseña" name="Password"> 
                    </div>
                    <input type="hidden" value="Registrar" name="accion">  
                    <button> Registrar </button>
                </form>
            </div>
        </section>

        <div class="pie-pagina">
            <div class="contenedor-piepagina contenedor">
                <div class="info">
                    <h3>Productos</h3>
                    <p> <a href="#">Vuelos</a>
                    <p> <a href="#">Paquetes</a>
                    <p> <a href="nosotros.jsp">Nosotros</a>
                    <p> <a href="blog.jsp">Blog: Mundo Viajero</a>
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
                    <a href="reclamaciones.jsp"> <img src="proyecto/imagenes/libro.png" width="50%">
                </div>
            </div>
        </div>
        <footer class="footer">
            <p>Todos los derechos reservados &copy; 2022 PERÚ TRAVELS , desarrollado por el grupo 4</p>
        </footer>
    </body>
</html>
