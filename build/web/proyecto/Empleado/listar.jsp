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
		<title> Listado de Administradores </title>
	</head>
        <body style="background-image: url('../../proyecto/imagenes/desti.jpg');background-size: cover; min-height: 800px">

        <center><h1 style="color: #009999"> <b>Lista de Administradores</b> </h1>
            <table border="2" style="background-color: rgba(255,255,255,0.7)">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>DNI</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Contraseña</th>
		</tr>
			
                <jsp:useBean class="DAO.EmpleadoDAO" id="EmpleadoDAO"> </jsp:useBean>
                <c:forEach items="${EmpleadoDAO.Listar()}" var="empleado">
                    <tr>
                        <td> ${empleado.id} </td>
                        <td> ${empleado.nom} </td>
                        <td> ${empleado.ape} </td>
                        <td> ${empleado.dni} </td>
                        <td> ${empleado.tel} </td>
                        <td> ${empleado.user} </td>
                        <td> ${empleado.pasw} </td>
                        
                        <td> <a href="../../Actualizar?accion=EditEmp&id=${empleado.id}"> <button> Modificar </button> </a>
                            <a href="../../Eliminar?accion=DelEmpleado&id=${empleado.id}"> <button> Eliminar </button> </a> </td>
                    </tr>
                </c:forEach>
                </table>
                <br>
                <a href="../../administrador.jsp" class="negro">Volver</a>
     </body>
</html>	
