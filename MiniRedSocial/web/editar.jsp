<%-- 
    Document   : editar
    Created on : 31 mar 2023, 19:14:00
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
                <%
                PersonaDAO dao=new PersonaDAO();
                String U1=(String) session.getAttribute("usuarioSesion");
                List<Persona>list=dao.list(U1);
                Iterator<Persona>iter=list.iterator();
                Persona per= null;
                while(iter.hasNext()){
                    per=iter.next();                
                %>

            Nombre:<input type="text" maxlength="20" name="N" value="<%=per.getNombre()%>"><br><br>
            Apellidos:<input type="text" maxlength="20" name="A" value="<%=per.getApellido()%>"><br><br>
            Correo:<input type="text" maxlength="50" name="CE" value="<%=per.getCR()%>"><br><br>
            Usuario:<input type="text" maxlength="20" name="U" value="<%=per.getUsuario()%>"><br><br>
            Contraseña:<input type="text" maxlength="20" name="C" value="<%=per.getContraseña()%>"><br><br>
            <%}%>
            <input type="submit" name="accion" value="Editar"><br><br>
            <input type="submit" name="accion" value="Cerrar Sesión"><br><br><br><br>
            <a href="Comentarios.jsp">Ver los comentarios hechos hacia ti</a><br><br><br><br>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>
