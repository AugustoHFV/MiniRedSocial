
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicia Sesión</h1>
        <form action="Srvldatos" method="POST">
            <h4>Usuario:</h4>
            <input type="text" name="usuario"  />
            <br><br>
            <h4>Contraseña</h4>
            <input type="password" name="contra"  />
            <br><br>
            <input type="submit" value="Ingresar" />
            <br><br>
            <h4>Si no tienes una cuenta: </h4>
            <a class="btn btn-primary" href="Controlador?accion=registrar">Crea una Cuenta</a>
        </form>
        <br><br><br><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>