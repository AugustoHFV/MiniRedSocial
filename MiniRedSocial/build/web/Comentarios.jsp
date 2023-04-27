<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO2.PersonaDAO2"%>
<%@page import="Modelo2.Persona2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Comentar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    </head>
    <body>
        <form name="Controlador2">
            <table border="1" align="center">
                <th>Usuario</th>
                <th>Comentario</th>
                <%
                    String U1=(String) session.getAttribute("usuarioSesion");
                    PersonaDAO2 dao=new PersonaDAO2();
                    List<Persona2>list=dao.list(U1);
                    Iterator<Persona2>iter=list.iterator();
                    Persona2 per= null;
                    while(iter.hasNext()){
                        per=iter.next();

                    %>
                <tbody>
                    <th><%=per.getUsuario()%></th>
                    <th><%=per.getComentario()%></th>
                    <th><a href="Controlador2?accion=Eliminar&Com=<%=per.getComentario()%>">Eliminar</a></th>
                    <th><a href="Controlador2?accion=Comentar&Usu=<%=per.getUsuario()%>">Comentar de vuelta</a></th>
                    <%}%>
                </tbody>
            </table>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>
