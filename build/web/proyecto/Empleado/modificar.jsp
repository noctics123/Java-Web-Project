<%@page import="Modelo.Empleado"%>
<%@page import="DAO.EmpleadoDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="proyecto/Estilos/miestilologin.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Administradores </title>
	</head>
        <body style="min-height: 800px">
		<div class="imagen">
                    <img class="imagen" src="proyecto/imagenes/viaje.jpg" style="min-height: 800px">
		</div>
		<nav>
                    <%  EmpleadoDAO edao=new EmpleadoDAO();
                        String id = (String) request.getAttribute("idEmp");
                        Empleado e = edao.Buscar(id);
                        System.out.println("el id es "+id);
                        %>
                        
			<form class="form" name="formAdmin" action="Actualizar" method="GET">
				<h2>MODIFICAR ADMINISTRADOR</h2>
				<div class="contenido">
					<label> Nombre </label>
                                        <input type="text" name="nombre" maxlength="20" value="<%=e.getNom()%>">
				</div>
				
				<div class="contenido">
					<label> Apellido </label>
                                        <input type="text" name="apellido" maxlength="50" value="<%=e.getApe()%>">
				</div>
                                
                                <div class="contenido">
					<label> DNI </label>
                                        <input type="number" name="dni" maxlength="8" value="<%=e.getDni()%>">
                                </div>
                                
                                <div class="contenido">
					<label> Telefono </label>
                                        <input type="number" name="telefono" maxlength="9" value="<%=e.getTel()%>">
				</div>
                                
                                <div class="contenido">
					<label> Email </label>
                                        <input type="text" name="email" maxlength="50" value="<%=e.getUser()%>">
				</div>
                                
                                <div class="contenido">
					<label> Contraseña </label>
                                        <input type="text" name="passw" maxlength="15" value="<%=e.getPasw()%>">
				</div>
                                
                                <input type="hidden" name="idEmpleado" value="<%=e.getId()%>">
				<input type="hidden" value="ActEmp" name="accion">
                                <p>
                                <button> GUARDAR </button>
                                <p>
                                <center><a href="administrador.jsp" class="blanco"> Volver al Modo Administrador </a> </center>
			</form>
		</nav>
	</body>
</html>	
