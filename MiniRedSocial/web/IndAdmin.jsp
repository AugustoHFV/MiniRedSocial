<%-- 
    Document   : IndAdmin
    Created on : 15-abr-2019, 9:41:52
    Author     : KIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           HttpSession sesion=request.getSession();
           String usuario;
           String nivel;
           if(sesion.getAttribute("usuario")!=null && session.getAttribute("nivel")!=null){
               usuario=sesion.getAttribute("usuario").toString();
               nivel=sesion.getAttribute("nivel").toString();
               out.print("<a href='index.jsp?cerrar=true'><h5>Cerrar Sesion"+usuario+"</h5></a>");
           }
           else{
               out.print("<script>location.replace('login.jsp');</script>");
           }
           
        %>
        
        <h1>Página Administrador</h1>
    </body>
</html>
