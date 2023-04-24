<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo2.Persona2"%>
<%@page import="ModeloDAO2.PersonaDAO2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>
        <a href="consultar.jsp"><img src="img/cuenta.png" align="right" width="50" lenght="50"></a>
        <h1>Página Principal</h1>
        <br><br><br>
        <a href="Controlador2?accion=registrar"><img src="img/suma.png" width="30" lenght="30" align="right"></a>        
        <table border="1" align="center">
            <th></th>
            <th>Usuario</th>
            <%
                PersonaDAO2 dao=new PersonaDAO2();
                List<Persona2>list=dao.consultar();
                Iterator<Persona2>iter=list.iterator();
                Persona2 per= null;
                while(iter.hasNext()){
                    per=iter.next();
                
                %>
            <tbody>
                <th><%=per.getComentario()%></th>
                <th><%=per.getUsuario()%></th>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
