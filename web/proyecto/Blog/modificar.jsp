<%@page import="Modelo.Blog"%>
<%@page import="DAO.BlogDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="proyecto/Estilos/miestilologin.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Modificar Entradas del Blog </title>
	</head>
        <body style="min-height: 800px">
		<div class="imagen">
                    <img class="imagen" src="proyecto/imagenes/viaje.jpg" style="min-height: 800px">
		</div>
		<nav>
                    <%  BlogDAO bdao=new BlogDAO();
                String id = (String) request.getAttribute("idB");
                Blog b = bdao.Buscar(id);
                        %>
			<form class="form" name="formBlog" action="Actualizar" method="GET">
				<h2>MODIFICAR POST</h2>
				<div class="contenido">
					<label> Destino </label>
                                        <input type="text" name="destino" maxlength="25" value="<%=b.getDestino()%>">
				</div>
				
				<div class="contenido">
					<label> Descripción </label>
                                        <textarea name="descripcion" maxlength="100"><%=b.getDescripcion()%></textarea>
				</div>
                                
                                <div class="contenido">
					<label> Imagen </label>
					<input type="file" name="imagen">
				</div>
				
                                        <input type="hidden" name="idBlog" value="<%=b.getId()%>">
				<input type="hidden" value="ActBlog" name="accion">
                                <p>
                                <button> Enviar </button>
                                <p>
                                <center> <a href="administrador.jsp"> Volver al Modo Administrador </a> </center>
			</form>
		</nav>
	</body>
</html>	
