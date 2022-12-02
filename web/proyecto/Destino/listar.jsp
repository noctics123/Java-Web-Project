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
        <body style="background-image: url('../../proyecto/imagenes/desti.jpg');background-size: cover; min-height: 800px">

        <center><h1 style="color: #009999"> <b>Lista de Destinos</b> </h1>
            <table border="2" style="background-color: rgba(255,255,255,0.7)">
                <tr>
                    <th>IdDestino</th>
                    <th>Destino</th>
                    <th>Costo</th>
                    <th>Fecha Salida</th>
                    <th>Imagen</th>
                    <th>Categoria</th>
                    <th>Acciones</th>
		</tr>
			
                <jsp:useBean class="DAO.DestinosDAO" id="DestinosDAO"> </jsp:useBean>
                <c:forEach items="${DestinosDAO.Listar()}" var="destino">
                    <tr>
                        <td> ${destino.id} </td>
                        <td> ${destino.destino} </td>
                        <td> ${destino.costo} </td>
                        <td> ${destino.fecha} </td>
                        <td> ${destino.imagen} </td>
                        <td> ${destino.categoria} </td>
                        <td> <a href="../../Actualizar?accion=editDestino&id=${destino.id}"> <button> Modificar </button> </a>
                            <a href="../../Eliminar?accion=DelDestino&id=${destino.id}"> <button> Eliminar </button> </a> </td>
                    </tr>
                </c:forEach>
                </table>
                <br>
                <a href="../../administrador.jsp" class="negro">Volver</a>
     </body>
</html>	
