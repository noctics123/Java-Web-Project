<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
	<head>
		<title> Libro de Reclamaciones </title>
		<link rel="stylesheet" type="text/css" href="proyecto/Estilos/miestiloreclamos.css">
	</head>
	<body>
		<div class="imagen">
			<img class="imagen" src="proyecto/imagenes/reclamos.jpg">
		</div>
		<nav>
                            <form class="form" name="formReclamo" action="Registrar" method="POST">
				<h2>LIBRO DE RECLAMACIONES</h2>
				<div class="contenido">
					<label> NOMBRES</label>
					<input type="text" name="nombres">
					
				</div>

				<div class="contenido">
					<label> APELLIDOS</label>
					<input type="text" name="apellidos">
					
				</div>
				
				<div class="contenido">
					<label> DOCUMENTO DE IDENTIDAD </label>
					<input type="text" name="dni">
					
				</div>

                <div class="contenido">
					<label> DOCMICILIO </label>
					<input type="text" name="docmicilio">
					
				</div>

                <div class="contenido">
					<label> CORREO ELECTRONICO </label>
					<input type="email" name="correo">
					
				</div>

                <div class="contenido">
					<label> TELÉFONO </label>
					<input type="text" name="telefono">
					
				</div>

                <div class="contenido">
					<label> RECLAMO </label> <br>
					<textarea name="reclamo"></textarea>

				</div>
                                <input type="hidden" value="RegistroReclamo" name="accion"><br>
                                <button> Enviar </button>
			<p> Servlet: <%=request.getAttribute("msj") %> </p>	
                        <br><br>
				<center><a href="index.jsp">Volver a Inicio</a></center>
			</form>
		</nav>
	</body>
</html>
