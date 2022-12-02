<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
                <link rel="stylesheet" type="text/css" href="../../proyecto/Estilos/miestilolista.css">
                <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
                
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Listado Blog </title>
	</head>
        <body style="background-image: url('../../proyecto/imagenes/login.jpg');background-size: cover; min-height: 800px">

	<center><h1>Lista de Entradas del Blog</h1>
	<table border="2">
                <tr>
                    <th>IdBlog</th>
                    <th>Destino</th>
                    <th>Descripcion</th>
                    <th>Imagen</th>
		</tr>
			
                <jsp:useBean class="DAO.BlogDAO" id="BlogDAO"> </jsp:useBean>
                <c:forEach items="${BlogDAO.Listar()}" var="blog">
                    <tr>
                        <td> ${blog.id} </td>
                        <td> ${blog.destino} </td>
                        <td> ${blog.descripcion} </td>
                        <td> ${blog.imagen} </td>
                        <td> <a href="../../Actualizar?accion=EditBlog&id=${blog.id}"> <button> Modificar </button> </a>
                            <a href="../../Eliminar?accion=DelBlog&id=${blog.id}"> <button> Eliminar </button> </a> </td>
                    </tr>
                </c:forEach>
                </table>
                <br>
                <a href="../../administrador.jsp" class="negro">Volver</a>
     </body>
</html>	
