<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="proyecto/Estilos/miestiloblog.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
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
        <section>
            <nav class="pre">
                <ul>
                    <p> Reseñas: </p>
                    <jsp:useBean class="DAO.BlogDAO" id="BlogDAO"> </jsp:useBean>
                    <c:forEach items="${BlogDAO.Listar()}" var="bl">
                        <li> <a class="pp" href="#${bl.destino}"> ${bl.destino} </a> </li>
                    </c:forEach>
                </ul>
            </nav>
        </section>
                    
        <jsp:useBean class="DAO.BlogDAO" id="BlogD"> </jsp:useBean>
        <c:forEach items="${BlogD.Listar()}" var="blo">
            <article class="contenedor-1">
            <div class="contenedor-2">     
                <section id="${blo.destino}">
                <h1 class="titulo"> ${blo.destino} </h1>
                <div class="imagen">
                    <img src="proyecto/imagenes/${blo.imagen}" class="img">
                </div>
                <p> ${blo.descripcion} </p>
                </section>
        	</div>
            </article>
        </c:forEach>
        
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

            <form class="formulario">
                <div class="input-formulario">
                    <label for="Nombres">Nombre</label>
                    <input type="text" placeholder="Nombres" id="nombre">
                </div>
                <div class="input-formulario">
                    <label for="Apellidos">Apellido</label>
                    <input type="text" placeholder="Apellidos" id="apellidos">
                </div>
                <div class="input-formulario">
                    <label for="Correo">Correo</label>
                    <input type="email" placeholder="ejemplo@ejemplo.com" id="correo">
                </div>
                <div class="input-formulario">
                    <label for="telefono">Teléfono</label>
                    <input type="tel" placeholder="+51 999 999 999" id="telefono">
                </div>
                <div class="input-formulario">
                    <label for="mensaje">Mensaje</label>
                    <textarea></textarea>
                </div>
                <div class="btn-formulario">
                    <input type="submit" class="btn btn-verde" value="Enviar">
                </div>

            </form>

        </div>
        <div class="pie-pagina ">
            <div class="contenedor-piepagina contenedor">
                <div class="info">
                    <h3>Productos</h3>
                    <p> <a href="#">Vuelos</a>
                    <p> <a href="#">Paquetes</a>
                    <p> <a href="nosotros.html">Nosotros</a>
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
                    <a href="Reclamaciones.html"> <img src="proyecto/imagenes/libro.png"> </a>
                </div>
            </div>
        </div>

        <hr>
        <footer class="footer">
            <p>Todos los derechos reservados &copy; 2022 PERÚ TRAVELS , desarrollado por el grupo 4</p>
        </footer>
</body>
</html>
