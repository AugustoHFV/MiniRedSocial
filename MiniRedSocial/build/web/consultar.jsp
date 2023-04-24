
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
            <h4>Usuario:</h4>
            <input type="text" name="usuario"  />
            <br><br>
            <h4>Contraseña</h4>
            <input type="password" name="contra"  />
            <br><br>
            <input type="submit" value="Ingresar" />
            <br>
            <a class="btn btn-primary" href="Controlador?accion=registrar">Crear Cuenta</a>
        </form>
        <br><br>
        <a href="index.jsp">Volver</a>
    </body>
</html>