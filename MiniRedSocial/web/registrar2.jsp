


<%@page import="Modelo2.Persona2"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Calcular descuento del 15%</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script>
 
function algoritmo()
{
    let com;
    let text;
    text=document.Controlador2.VI.value;
    com =document.Controlador2.VF.value;
    if (com=="null")
    {
        alert("No has iniciado sesión")
    }
    else if(text==""){
    }
    else
    {
        alert("Publicación Guardada")
    }
}
 
        </script>
    </head>
    <body>
        <form name="Controlador2">
            <table style="text-align: left; margin-left: auto; margin-right: auto;">
                <tbody>
                    <tr>
                        <td>
                            <label>¿Qué quieres decir al mundo? (Máximo 100 Caracteres)</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="VI" rows="5" cols="50" required="required" maxlength="100"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Usuario:</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%
                            String a=(String) session.getAttribute("usuarioSesion");
                            Persona2 p=new Persona2();
                            p.setUsuario(a);
                            %>
                            <input name="VF" rows="5" cols="50" maxlength="100" value="<%out.print(a);%>" disabled>
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
