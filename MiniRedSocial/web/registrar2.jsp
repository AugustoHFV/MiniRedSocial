<%@page import="Modelo2.Persona2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Comentar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script>
 
function algoritmo()
{
    let com;
    let text;
    text=document.Controlador2.C.value;
    com =document.Controlador2.U.value;
    com1 =document.Controlador2.U1.value;
    if (com=="null")
    {
        alert("No has iniciado sesión")
    }
    else if(text==""){
    }
    else if(com1.toLowerCase() == com.toLowerCase()){
        alert("No puedes comentarte a ti mismo")
    }
    else 
    {
        alert("Comentario Guardado")
    }
}
 
        </script>
    </head>
    <body>
        <form name="Controlador2">
            <table style="text-align: left; margin-left: auto; margin-right: auto;">
                <%
                            String a=(String)session.getAttribute("usuarioSesion");
                            Persona2 p=new Persona2();
                            String b=(String)request.getAttribute("Para");
                            session.setAttribute("Para", b);
                %>
                <tbody>
                    <tr>
                        <td>
                            <label>¿Qué quieres decir? (Máximo 100 Caracteres)</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="C" rows="5" cols="50" required="required" maxlength="100"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>De(Tu Usuario):</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input name="U" rows="5" cols="50" maxlength="100" value="<%out.print(a);%>" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Para(Usuario de la persona a la que vas a comentar):</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input name="U1" rows="5" cols="50" maxlength="100" value="<%out.print(b);%>" disabled>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" rowspan="1">
                            <input value="Agregar" name="accion"   type="submit" onclick="algoritmo();"/>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>
