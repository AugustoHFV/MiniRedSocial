
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Srvldatos" method="POST">
            <input type="text" name="usuario"  />
            <input type="password" name="contra"  />
            <input type="submit" value="Ingresar" />
            <a class="btn btn-primary" href="Controlador?accion=registrar">Crear Cuenta</a>
        </form>
        <a href="index.html">Volver</a>
    </body>
</html>