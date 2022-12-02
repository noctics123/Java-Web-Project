<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="../../proyecto/Estilos/miestilologin.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Administradores </title>
	</head>
        <body style="min-height: 800px">
		<div class="imagen">
                    <img class="imagen" src="../../proyecto/imagenes/viaje.jpg" style="min-height: 800px">
		</div>
		<nav>
			<form class="form" name="formDestino" action="../../Registrar" method="POST">
				<h2>NUEVO ADMINISTRADOR</h2>
				<div class="contenido">
					<label> Nombre </label>
                                        <input type="text" name="nombre" maxlength="20">
				</div>
				
				<div class="contenido">
					<label> Apellido </label>
                                        <input type="text" name="apellido" maxlength="50">
				</div>
                                
                                <div class="contenido">
					<label> DNI </label>
                                        <input type="number" name="dni" maxlength="8">
                                </div>
                                
                                <div class="contenido">
					<label> Telefono </label>
                                        <input type="number" name="telefono" maxlength="9">
				</div>
                                
                                <div class="contenido">
					<label> Email </label>
                                        <input type="text" name="email" maxlength="50">
				</div>
                                
                                <div class="contenido">
					<label> Contraseña </label>
                                        <input type="text" name="passw" maxlength="15">
				</div>
                                
				
				<input type="hidden" value="RegistroEmpleado" name="accion">
                                <p>
                                <button> GUARDAR </button>
                                <p>
                                <center><a href="../../administrador.jsp" class="blanco"> Volver al Modo Administrador </a> </center>
			</form>
		</nav>
	</body>
</html>	
