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
        <title>JSP Page</title>
    </head>
    <body>
        <%
          PersonaDAO pd= new PersonaDAO();
          int id= Integer.parseInt((String)request.getAttribute("idper"));
          Persona p=(Persona)pd.list(id);
        
        
        %>
        <h1>Modificar Persona</h1>
        <form action="Controlador">
            Id:<input type="text" name="id" value="<%=p.getId()%>"><br>
            NSS:<input type="text" name="NSS" value="<%=p.getNSS()%>"><br>
            Nombre<input type="text" name="nombre" value="<%=p.getNombre()%>"><br>
            <input type="submit" name="accion" value="Actualizar" >
            <a href="Controlador?accion=consultar">Regresar</a>
            <!-- comment --><!-- comment -->
        </form>
    </body>
</html>
