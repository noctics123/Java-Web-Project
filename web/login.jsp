<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
	<head>
		<meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
                <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="proyecto/Estilos/miestilologin.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
		<title> Inicio de Sesion </title>
	</head>
        <body style="background-image: url('proyecto/imagenes/login.jpg');background-size: cover; min-height: 800px">
            <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body text-center">
                    <form clas="form-sign" action="Validar" method="POST">
                        <div class="form-group">
                            <h3>Login</h3>
                            <a href='index.jsp'> <img src="img/logo.png" alt="70" width="170"/> </a>
                            <br>
                            <label>¡Bienvenidos al sistema!</label>
                            <br>
                            <br>
                        </div>
                        <div class="form-group">
                            <label>Correo:</label>
                            <input type="text" name="txtuser" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña:</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div>
                        <br>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div> 
     </body>
</html>	
