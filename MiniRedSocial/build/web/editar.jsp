<%-- 
    Document   : editar
    Created on : 31 mar 2023, 19:14:00
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cuenta</title>
    </head>
    <body>
        <h1>Modificar Cuenta</h1>
        <form action="Controlador">
            <%String a=(String) session.getAttribute("usuarioSesion");%>
            <%String e=(String) session.getAttribute("contra");%>
            Nombre:<input type="text" name="VI" value="<%out.print(a);%>"><br><br>
            Contraseña:<input type="text" name="VF" value="<%out.print(e);%>"><br><br>
            <input type="submit" name="accion" value="Editar"><br><br>
            <input type="submit" name="accion" value="Cerrar Sesión"><br><br><br><br>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>
