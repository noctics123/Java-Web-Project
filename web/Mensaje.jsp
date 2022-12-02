<%-- 
    Document   : Mensaje
    Created on : 16 oct. 2022, 01:45:50
    Author     : Noctics
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Mensaje</title>
    </head>
    <body>
        <h1> <%=request.getAttribute("msj") %> </h1>
         <script>
         setTimeout(myURL, 5000);
         function myURL(){
            window.open("index.jsp","_self");
         }
      </script>
      <p>Sera redireccionado luego de 5 s</p>
</html>
