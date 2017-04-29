<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header align="center">
            <div align="center"><img src="imagenes/1.png" alt=""/></div>
            <div align="center"><h1>Sistema gestion de proyecto Oliver</h1></div>
        </header>
        <main>
            <form name="login" method="post" action="valida">
            <table width="290" border="0" cellspacing="0" cellpadding="1" align="center">
                <tr bgcolor="#990033" align="center">
                <td><b><font color="#FFFFFF">Login</font></b></td>
                </tr>
                <tr bgcolor="#990033" align="center">
                <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="4">
                <tr bgcolor="#FFFFFF">
                <td>Rut Usuario: </td>
                <td><input type="text" name="rut" value="" size="18" /></td>
                <td>-</td>
                <td><input type="text" name="dv" value="" size="3" /></td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="4">
                <tr bgcolor="#FFFFFF">
                <td>Contraseña: </td>
                <td><input type="password" name="passwd" value="" size="30" /></td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="4">
                <tr bgcolor="#FFFFFF">
                    <td align="center"><input type="submit" value="Ingresar"/></td>
                </tr>
            </table>
            </td>
            </tr>
            </table> 
            </form>
        </main>
    </body>
</html>
