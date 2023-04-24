



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Calcular descuento del 15%</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
                            <textarea name="VI" rows="5" cols="50" maxlength="100"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Usuario</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%String a=(String) session.getAttribute("usuarioSesion");%>
                            <input name="VF" rows="5" cols="50" maxlength="100" value="<%out.print(a);%>"></textarea>
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
