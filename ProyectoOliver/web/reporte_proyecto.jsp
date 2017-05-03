<%@page import="Clases.ConexionDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Vista de proyectos</title>
<%!
    String pid;
    ResultSet nproyecto;
    ResultSet actores;
    ResultSet casos;
    ResultSet ftecnicos;
    ResultSet fambientales;
    int tact=0;
    int tcus=0;
    float tft=0;
    float tfa=0;
%>
    
<jsp:scriptlet>
    pid=(String)request.getParameter("pid");
    
    nproyecto = ConexionDB.query("select nombre from proyectos where project_id='"+pid+"'");
    nproyecto.first();
    String nomp = nproyecto.getString(1);
    
    actores=ConexionDB.query("select actor,complejidad,valor from actoresp where project_id='"+pid+"'");
    casos=ConexionDB.query("select caso,complejidad,valor from casosp where project_id='"+pid+"'");
    ftecnicos=ConexionDB.query("select a.idft,a.descripcion,a.peso,b.factor from ftecnico a inner join ftecnicop b on a.idft=b.idft where b.project_id='"+pid+"'");
    fambientales=ConexionDB.query("select a.idfa,a.descripcion,a.peso,b.factor from fambiental a inner join fambientalp b on a.idfa=b.idfa where b.project_id='"+pid+"'");
</jsp:scriptlet>
</head>
 
<body>
    <h1>Proyecto: <%=nomp%> </h1>
    
    <table width="100%" border="0" cellspacing="20">
        <tbody>
            <tr>
                <td valign="top">
                    <table id="actores" width="100%" border="1">
                        <caption><strong>Actores</strong></caption>
                        <thead>
                            <th align='center'>Actor</th>
                            <th align='center'>Complejidad</th>
                            <th align='center'>Peso</th>
                        </thead>
                        <tbody>
                            <%
                                while(actores.next()){
                                    out.println("<tr>");
                                    out.println("<td>"+actores.getString(1)+"</td>");
                                    out.println("<td>"+actores.getString(2)+"</td>");
                                    out.println("<td>"+actores.getInt(3)+"</td>");
                                    out.println("</tr>");
                                    tact=tact+actores.getInt(3);
                                }
                            %>
                        </tbody>
                        <tfoot>
                        <td align="right" colspan="2">Total valor actores:</td>
                        <td align="left"><%=tact%></td>
                        </tfoot>
                    </table>
                </td>
                <td valign="top">
                    <table id='casos' width='100%' border='1' valign="top">
                        <caption><strong>Casos de Uso</strong></caption>
                        <thead>
                        <th align="center">Caso Uso</th>
                        <th align="center">Complejidad</th>
                        <th align="center">Peso</th>
                        </thead>
                        <tbody>
                            <%
                                while(casos.next()){
                                    out.println("<tr>");
                                    out.println("<td>"+casos.getString(1)+"</td>");
                                    out.println("<td>"+casos.getString(2)+"</td>");
                                    out.println("<td>"+casos.getInt(3)+"</td>");
                                    out.println("</tr>");
                                    tcus=tcus+casos.getInt(3);
                                }
                             %>
                        </tbody>
                        <tfoot>
                        <td align="right" colspan="2">Total valor casos uso:</td>
                        <td align="left"><%=tcus%></td>
                        </tfoot>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <br></br>
                    <table id="ftecnicos" width="100%" border="1">
                        <caption><strong>Factores Tecnicos</strong></caption>
                        <thead>
                            <th align="center">ID Factor</th>
                            <th align="center">Descripcion</th>
                            <th align="center">Peso</th>
                            <th align="center">Factor</th>
                            <th align="center">Valor Ponderado</th>
                        </thead>
                        <tbody>
                            <%
                                while(ftecnicos.next()){
                                    out.println("<tr>");
                                    out.println("<td>"+ftecnicos.getInt(1)+"</td>");
                                    out.println("<td>"+ftecnicos.getString(2)+"</td>");
                                    out.println("<td>"+ftecnicos.getFloat(3)+"</td>");
                                    out.println("<td>"+ftecnicos.getInt(4)+"</td>");
                                    out.println("<td>"+(ftecnicos.getFloat(3)*ftecnicos.getInt(4))+"</td>");
                                    tft=tft+(ftecnicos.getFloat(3)*ftecnicos.getInt(4));
                                }
                            %>
                        </tbody>
                        <tfoot>
                        <td align="right" colspan="4">Total ponderacion F tecnicos:</td>
                        <td align="left"><%=tft%></td>
                        </tfoot>
                    </table>
                </td>
                <td valign="top">
                    <br></br>
                    <table id="fambientales" width="100%" border="1">
                        <caption><strong>Factores Ambientales</strong></caption>
                        <thead>
                            <th align="center">ID Factor</th>
                            <th align="center">Descripcion</th>
                            <th align="center">Peso</th>
                            <th align="center">Factor</th>
                            <th align="center">Valor Ponderado</th>
                        </thead>
                        <tbody>
                            <%
                                while(fambientales.next()){
                                    out.println("<tr>");
                                    out.println("<td>"+fambientales.getInt(1)+"</td>");
                                    out.println("<td>"+fambientales.getString(2)+"</td>");
                                    out.println("<td>"+fambientales.getFloat(3)+"</td>");
                                    out.println("<td>"+fambientales.getInt(4)+"</td>");
                                    out.println("<td>"+(fambientales.getFloat(3)*fambientales.getInt(4))+"</td>");
                                    tfa=tfa+(fambientales.getFloat(3)*fambientales.getInt(4));
                                }
                            %>
                        </tbody>
                        <tfoot>
                        <td align="right" colspan="4">Total ponderacion F tecnicos:</td>
                        <td align="left"><%=tfa%></td>
                        </tfoot>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
 </body>
</html>

