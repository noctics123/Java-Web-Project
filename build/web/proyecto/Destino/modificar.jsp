<%@page import="DAO.DestinosDAO"%>
<%@page import="Modelo.Destino"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="proyecto/Estilos/miestilologin.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Modificar destinos </title>
	</head>
        <body style="min-height: 800px">
		<div class="imagen">
                    <img class="imagen" src="proyecto/imagenes/viaje.jpg" style="min-height: 800px">
		</div>
		<nav>
                    <%  DestinosDAO Ddao=new DestinosDAO();
                        String id = (String) request.getAttribute("idDest");
                        Destino d = Ddao.Buscar(id);
                        System.out.println("el id es "+id);
                        %>
			<form class="form" name="formDestino" action="Actualizar" method="GET">
				<h2>MODIFICAR DESTINOS</h2>
				<div class="contenido">
					<label> Destino </label>
                                        <input type="text" name="destino" value="<%=d.getDestino()%>">
				</div>
				
				<div class="contenido">
					<label> Fecha de Arribo </label>
                                        <input type="datetime-local" name="fecha" value="<%=d.getFecha()%>">
				</div>
                                
                                <div class="contenido">
					<label> Costo </label>
                                        <input type="text" name="costo" value="<%=d.getCosto()%>">
				</div>
                                
                                <div class="contenido">
					<label> Imagen </label>
                                        <input type="file" name="imagen" value="<%=d.getImagen()%>">
				</div>
                                
                                <input type="hidden" name="idDestino" value="<%=d.getId()%>">
                                    
                                <div class="contenido">
					<label> Categoria </label>
					<div class="grupo-select">
                                            <select name="categoria">
                                                <option>Seleccionar</option>
                                                <jsp:useBean class="DAO.CategoriaDAO" id="CategoriaDAO"> </jsp:useBean>
                                                <c:forEach items="${CategoriaDAO.Listar()}" var="cat">
                                                    <option> ${cat.id} - ${cat.categoria}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
				</div>
				
				<input type="hidden" value="ActDestino" name="accion">
                                <p>
                                <button> Enviar </button>
                                <a href="../../administrador.jsp"> Volver al Modo Administrador </a>
			</form>
		</nav>
	</body>
</html>	
