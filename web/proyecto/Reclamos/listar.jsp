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
		<title> Lista de Reclamos </title>
	</head>
        <body style="background-image: url('../../proyecto/imagenes/login.jpg');background-size: cover; min-height: 800px">

	<center><h1>Lista de Reclamos</h1>
	<table border="2">
                <tr>
                    <th>IdReclamo</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Documento</th>
                    <th>Domicilio</th>
                    <th>Correo</th>
                    <th>Telefono</th>
                    <th>Descripcion</th>
		</tr>
			
                <jsp:useBean class="DAO.ReclamosDAO" id="ReclamoDAO"> </jsp:useBean>
                <c:forEach items="${ReclamoDAO.Listar()}" var="reclamo">
                    <tr>
                        <td> ${reclamo.id} </td>
                        <td> ${reclamo.nombre} </td>
                        <td> ${reclamo.apellido} </td>
                        <td> ${reclamo.documento} </td>
                        <td> ${reclamo.domicilio} </td>
                        <td> ${reclamo.email} </td>
                        <td> ${reclamo.telefono} </td>
                        <td> ${reclamo.descripcion} </td>
                    </tr>
                </c:forEach>
                             </table>
                <br>
<a href="../../administrador.jsp">Volver al Modo Administrador</a>
     </body>
</html>	
