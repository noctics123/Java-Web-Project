<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="Estilos/Style.css">
                <link rel="stylesheet" href="proyecto/Estilos/miestiloadmin.css"/>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Administrador </title>
	</head>
	<body>
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
            
            <nav class="contenedor">
                <center>    
                <form name="form">
                        <h2> Modo Administrador  </h2>
                            <div class="contenido">
                                <label> Gestionar Destinos: </label> <br>
                                    <a href="proyecto/Destino/destino.jsp"> Agregar Destinos </a> <br>
                                    <a href="proyecto/Destino/listar.jsp"> Listar Destinos </a> <br>
                            </div>

                            <div class="contenido">
                                    <label> Gestionar Categorias </label> <br>
                                    <a href="proyecto/Categoria/categoria.jsp"> Agregar y ver categorias </a> <br>
                            </div>
                            
                            <div class="contenido">
                                    <label> Gestionar Entradas de Blog </label> <br>
                                    <a href="proyecto/Blog/blog.jsp"> Agregar nuevas entradas </a> <br>
                                    <a href="proyecto/Blog/listar.jsp"> Listar entradas </a> <br>
                            </div>
                            
                            <div class="contenido">
                                    <label> Gestionar Administradores </label> <br>
                                    <a href="proyecto/Empleado/empleado.jsp"> Agregar nuevo administrador </a> <br>
                                    <a href="proyecto/Empleado/listar.jsp"> Lista de administradores </a> <br>
                                    <a href=""
                            </div>
                        
                            <div class="contenido">
                                    <label> Solicitudes de Contacto </label> <br>
                                    <a href="proyecto/Informes/listar.jsp"> Listar Solicitudes </a> <br>
                            </div>
                        
                            <div class="contenido">
                                    <label> Libro de Reclamaciones </label> <br>
                                    <a href="proyecto/Reclamos/listar.jsp"> Listar Reclamos </a> <br>
                            </div>
                            <br><br>
                    </form>
                </center>
                <div class="imagen">
			<img class="imagen" src="proyecto/imagenes/admin.webp">
                </div>
            </nav>
	</body>
</html>	
