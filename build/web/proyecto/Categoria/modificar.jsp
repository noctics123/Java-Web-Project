<%@page import="Modelo.Categoria"%>
<%@page import="DAO.CategoriaDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" type="text/css" href="proyecto/Estilos/miestilocategoria.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Modificar Categoria </title>
	</head>
        <body style="min-height: 800px">
            
            <%  CategoriaDAO Cdao=new CategoriaDAO();
                String id = (String) request.getAttribute("idCateg");
                Categoria c = Cdao.Buscar(id);
                        %>
                        
		<nav>
			<form class="form" name="Categoria" action="Actualizar" method="GET">
				<h2>MODIFICAR CATEGORIA</h2>
				<div class="contenido">
					<label> Nombre </label>
                                        <input type="text" name="destino" maxlength="15" value="<%=c.getCategoria()%>">
                                        <input type="hidden" name="idCategoria" value="<%=c.getId()%>">
				</div>				
				<input type="submit" value="Enviar" name="accion">
                                <center><br>
                        <a href="../../administrador.jsp">Volver</a>
                  </center>
                                </form>                
                        
		</nav>
                
                <div class="imagen">
                    <img class="imagen" src="proyecto/imagenes/cate.jpg" style="min-height: 800px">
		</div>
	</body>
</html>	
