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
		<title> Listado de Informes </title>
	</head>
        <body style="background-image: url('../../proyecto/imagenes/desti.jpg');background-size: cover; min-height: 800px">

        <center><h1 style="color: #009999"> <b>Atender a los clientes de la lista</b> </h1>
            <table border="2" style="background-color: rgba(255,255,255,0.7)">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo</th>
                    <th>Telefono</th>
                    <th>Mensaje</th>
		</tr>
			
                <jsp:useBean class="DAO.InformesDAO" id="InformesDAO"> </jsp:useBean>
                <c:forEach items="${InformesDAO.Listar()}" var="informes">
                    <tr>
                        <td> ${informes.id} </td>
                        <td> ${informes.nombre} </td>
                        <td> ${informes.apellido} </td>
                        <td> ${informes.correo} </td>
                        <td> ${informes.telefono} </td>
                        <td> ${informes.mensaje} </td>
                    </tr>
                </c:forEach>
                </table>
                <br>
                <a href="../../administrador.jsp" class="negro">Volver</a>
     </body>
</html>	
