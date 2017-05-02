<%@page import="Clases.ConexionDB, java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ProyectoOliver</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.15/af-2.2.0/r-2.1.1/rr-1.2.0/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.15/af-2.2.0/r-2.1.1/rr-1.2.0/datatables.min.js"></script>
<link rel="stylesheet" href="estilos.css">
<jsp:declaration>
    String user;
    String dv;
    String nombre;
    String mail;
    String maxA;
    String maxC;
    int proyectos;
</jsp:declaration>
<jsp:scriptlet>
    user=(String)request.getParameter("rut");
    dv=(String)request.getParameter("dv");
    mail = ConexionDB.Omail(user, dv);
    nombre=ConexionDB.Nusuario(user);
    proyectos=ConexionDB.Cproyectos(user, dv);
    maxA=ConexionDB.MaxAct(user, dv);
    maxC=ConexionDB.MaxCU(user, dv);
    ResultSet b=ConexionDB.query("Select Project_id,nombre,descripcion from proyectos where jp='"+user+"' and jp_dv='"+dv+"'");
    ResultSet c=ConexionDB.query("Select a.project_id,sum(a.valor) from actoresp a inner join proyectos b on a.project_id=b.project_id where b.jp='"+user+"' and b.jp_dv='"+dv+"' group by a.project_id");
    ResultSet d=ConexionDB.query("Select a.project_id,sum(a.valor) from casosp a inner join proyectos b on a.project_id=b.project_id where b.jp='"+user+"' and b.jp_dv='"+dv+"' group by a.project_id");
    ResultSet e=ConexionDB.query("select b.project_id,sum(x) from (Select a.peso*b.factor as x,b.Project_ID as y from ftecnico a inner join ftecnicop b on a.IDFT=b.IDFT) a inner join proyectos b on a.y=b.Project_ID where b.jp='"+user+"' and b.jp_dv='"+dv+"' group by a.y");
    ResultSet f=ConexionDB.query("select b.project_id,sum(x) from (Select a.peso*b.factor as x,b.Project_ID as y from fambiental a inner join fambientalp b on a.IDFA=b.IDFA) a inner join proyectos b on a.y=b.Project_ID where b.jp='"+user+"' and b.jp_dv='"+dv+"' group by a.y");
</jsp:scriptlet>
</head>
<body>
<header id="a">
	<h1>
            <table border="0" width="100%">
                <tbody>
                    <tr>
                        <td align="left">
                            <div id="logo" align="left"><img src="imagenes/1.png" width="50" height="35" alt=""/> <label>Oliver</label></div>
                        </td>
                        <td align="right">
                            <div align="right"><label>Bienvenido <%=nombre%></label></div>
                        </td>
                    </tr>
                </tbody>
            </table>
	</h1>
</header>
    <main>
        <div id="fecha" align="right"><script type="text/javascript">
                    //<![CDATA[
                    function makeArray() {
                    for (i = 0; i<makeArray.arguments.length; i++)
                    this[i + 1] = makeArray.arguments[i];}
                    var months = new makeArray('Enero','Febrero','Marzo','Abril','Mayo',
                    'Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');
                    var date = new Date();
                    var day = date.getDate();
                    var month = date.getMonth() + 1;
                    var yy = date.getYear();
                    var year = (yy < 1000) ? yy + 1900 : yy;
                    document.write("Fecha:" + day + " de " + months[month] + " del " + year);
                    //]]>
                    </script>
        </div>
            
            <div>
                <table border="0" width="100%">
                    <tbody>
                                <tr>
                                        <td align="left" valign="top">
                                            <dv id="Informacion" align="left" valign="top">
                                                 <table width="400" border="1">
                                                     <thead width="100%">
                                                     <caption><strong>Estadísticas</strong></caption>
                                                    </thead>    
                                                    <tbody>
                                                         <tr>
                                                            <td>Rut Usuario:</td>
                                                            <td><%=user%> - <%=dv%></td>
                                                        </tr>
                                                        <tr>
                                                            <td>E-mail registrado:</td>
                                                            <td><%=mail%></td>
                                                       </tr>
                                                           <tr>
                                                               <td>Total de proyectos:</td>
                                                               <td><%=proyectos%></td>
                                                            </tr>
                                                                <tr>
                                                                    <td>Proyecto con mayor peso actores</td>
                                                                    <td>ID <%=maxA%></td>
                                                            </tr>
                                                            <tr>
                                                                    <td>Proyecto con mayor peso casos uso</td>
                                                                    <td>ID <%=maxC%></td>
                                                            </tr>                                         
                                                    </tbody>
                                                </table>
                                        </td>
                                            <td align="right">
                                                <dv id="Calendario" align="right"><script language="JavaScript" type="text/javascript">
                //<![CDATA[

                <!-- Begin
                monthnames = new Array(
                "Enero",
                "Febrero",
                "Marzo",
                "Abril",
                "Mayo",
                "Junio",
                "Julio",
                "Agosto",
                "Septiembre",
                "Octubre",
                "Noviembre",
                "Deciembre");
                var linkcount=0;
                function addlink(month, day, href) {
                var entry = new Array(3);
                entry[0] = month;
                entry[1] = day;
                entry[2] = href;
                this[linkcount++] = entry;
                }
                Array.prototype.addlink = addlink;
                linkdays = new Array();
                monthdays = new Array(12);
                monthdays[0]=31;
                monthdays[1]=28;
                monthdays[2]=31;
                monthdays[3]=30;
                monthdays[4]=31;
                monthdays[5]=30;
                monthdays[6]=31;
                monthdays[7]=31;
                monthdays[8]=30;
                monthdays[9]=31;
                monthdays[10]=30;
                monthdays[11]=31;
                todayDate=new Date();
                thisday=todayDate.getDay();
                thismonth=todayDate.getMonth();
                thisdate=todayDate.getDate();
                thisyear=todayDate.getYear();
                thisyear = thisyear % 100;
                thisyear = ((thisyear < 50) ? (2000 + thisyear) : (1900 + thisyear));
                if (((thisyear % 4 == 0)
                && !(thisyear % 100 == 0))
                ||(thisyear % 400 == 0)) monthdays[1]++;
                startspaces=thisdate;
                while (startspaces > 7) startspaces-=7;
                startspaces = thisday - startspaces + 1;
                if (startspaces < 0) startspaces+=7;
                document.write("<table border=2 bgcolor=white ");
                document.write("bordercolor=black><font color=black>");
                document.write("<tr><td colspan=7><center>"
                + monthnames[thismonth] + " " + thisyear
                + "<\/strong><\/center><\/font><\/td><\/tr>");
                document.write("<tr>");
                document.write("<td align=center>D<\/td>");
                document.write("<td align=center>L<\/td>");
                document.write("<td align=center>M<\/td>");
                document.write("<td align=center>X<\/td>");
                document.write("<td align=center>J<\/td>");
                document.write("<td align=center>V<\/td>");
                document.write("<td align=center>S<\/td>");
                document.write("<\/tr>");
                document.write("<tr>");
                for (s=0;s<startspaces;s++) {
                document.write("<td> <\/td>");
                }
                count=1;
                while (count <= monthdays[thismonth]) {
                for (b = startspaces;b<7;b++) {
                linktrue=false;
                document.write("<td>");
                for (c=0;c<linkdays.length;c++) {
                if (linkdays[c] != null) {
                if ((linkdays[c][0]==thismonth + 1) && (linkdays[c][1]==count)) {
                document.write("<a href=\"" + linkdays[c][2] + "\">");
                linktrue=true;
                }
                }
                }
                if (count==thisdate) {
                document.write("<font color='FF0000'>");
                }
                if (count <= monthdays[thismonth]) {
                document.write(count);
                }
                else {
                document.write(" ");
                }
                if (count==thisdate) {
                document.write("<\/strong><\/font>");
                }
                if (linktrue)
                document.write("<\/a>");
                document.write("<\/td>");
                count++;
                }
                document.write("<\/tr>");
                document.write("<tr>");
                startspaces=0;
                }
                document.write("<\/table><\/p>");
                // End -->
                //]]>
                </script>
                </td>
        </div>
                                        </td>
                            </tr>
                    </tbody>
                </table>
        </div>
    </main>
</body>
<footer>
    <table id="resumen" class="display">
<thead>        
        <tr>
            <th align="center">ID</th>
            <th align="center">Nombre Proyecto</th>
            <th align="center">Descripción</th>
            <th align="center">Peso Actores</th>
            <th align="center">Peso Casos</th>
            <th align="center">UUCP</th>
            <th align="center">Peso FTecnico</th>
            <th align="center">Peso FAmbiental</th>
            <th align="center">UCP</th>
            <th align="center">E Esfuerzo</th>
        </tr>
</thead>
<tbody>
        <%           
            while(b.next()&&c.next()&&d.next()&&e.next()&&f.next()){
                int uucp=Integer.parseInt(c.getString(2))+Integer.parseInt(d.getString(2));
                double tcf=0.6+(0.01*e.getFloat(2));
                double ef=1.4+(-0.03*f.getFloat(2));
                double ucp=uucp*tcf*ef;
                int pid=b.getInt(1);
                out.println("<tr>");
                out.println("<td><a href=reporte_proyecto.jsp?pid="+pid+">"+pid+"</a></td>");
                out.println("<td>"+b.getString(2)+"</td>");
                out.println("<td>"+b.getString(3)+"</td>");
                out.println("<td>"+c.getString(2)+"</td>");
                out.println("<td>"+d.getInt(2)+"</td>");
                out.println("<td>"+uucp+"</td>");
                out.println("<td>"+tcf+"</td>");
                out.println("<td>"+ef+"</td>");
                out.println("<td>"+ucp+"</td>");
                out.println("</tr>");
            }
        %>
        </tbody>
    </table>
        <div align="right">
            <input type="submit" value="Nuevo Proyecto" name="Nuevo Proyecto" onclick="location='nuevo_proyecto.jsp'"/>
        </div>
</footer>
        <script type="text/javascript">
        $(document).ready(function(){
            $('#resumen').DataTable();
            });
    </script>
</html>

