<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>
        <form action="Srvldatos" method="GET">
        <input type="image"src="img/cuenta.png" align="right" width="50" lenght="50">
        </form>
        <h1>Página Principal</h1>
        <br><br><br>      
        <table border="1" align="center">
            <th>Usuario</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <%
                PersonaDAO dao=new PersonaDAO();
                List<Persona>list=dao.consultar();
                Iterator<Persona>iter=list.iterator();
                Persona per= null;
                while(iter.hasNext()){
                    per=iter.next();
                
                %>
            <tbody>
                <th><%=per.getUsuario()%></th>
                <th><%=per.getNombre()%></th>
                <th><%=per.getApellido()%></th>
                <th><a href="Controlador2?accion=Comentar&Usu=<%=per.getUsuario()%>">Comentar</a></th>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
