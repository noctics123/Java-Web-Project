<%@page import="Modelo.Categoria"%>
<%@page import="DAO.CategoriaDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="../../proyecto/Estilos/miestilocategoria.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Nuevas Categorias </title>
	</head>
        <body style="min-height: 800px">
                        
		<nav>
			<form class="form" name="Categoria" action="../../Registrar" method="POST">
				<h2>CREAR NUEVA CATEGORIA</h2>
				<div class="contenido">
					<label> Nombre </label>
                                        <input type="text" name="destino" maxlength="15">
				</div>				
				<input type="submit" value="Enviar" name="accion">
                                </form>
                <center><h1>Lista de Categorias</h1>
                                    
                <table border="2">
                <tr>
                    <th>IdCategoria</th>
                    <th>Nombre</th>
                    <th>Acciones</th>
		</tr>
			
                <jsp:useBean class="DAO.CategoriaDAO" id="CategoriaDAO"> </jsp:useBean>
                <c:forEach items="${CategoriaDAO.Listar()}" var="cat">
                    <tr>
                        <td> ${cat.id} </td>
                        <td> ${cat.categoria} </td>
                        <td> <a href="../../Actualizar?accion=EditCateg&id=${cat.id}"> <button> Modificar </button> </a>
                            <a href="../../Eliminar?accion=DelCateg&id=${cat.id}"> <button> Eliminar </button> </a> </td>
                    </tr>
                </c:forEach>
                        </table>
                
                        <br>
                        <a href="../../administrador.jsp">Volver</a>
                  </center>
		</nav>
                
                
                <div class="imagen">
                    <img class="imagen" src="../../proyecto/imagenes/cate.jpg" style="min-height: 800px">
		</div>
	</body>
</html>	
