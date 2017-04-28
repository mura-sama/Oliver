<%@page import="Clases.ConexionDB, java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ProyectoOliver</title>
<style type="text/css">
    header#a{overflow: hidden;}
    div#Principal{overflow: hidden;}
    div#Informacion,div#Calendario{display: inline-block;}
</style>
<%
    ConexionDB a=new ConexionDB();
    ResultSet b=a.select("Select * from usuarios");
    while(b.next()){
        out.println(b.getInt(1)+"-"+b.getString(2)+" | "+b.getString(3)+" "+b.getString(4)+" "+b.getString(5));
    }
   
%>
</head>
<body>
<header id="a">
	<h1>
            <div id="logo"><img src="imagenes/1.png" width="50" height="35" alt=""/> 
            <label>Oliver</label></div>
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
            
            <div id="Principal">
                 <td id="Informacion" align="left">
                     <table width="400" border="0">
                <tbody>
                    <tr>
                        <td>Rut Usuario:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>E-mail registrado:</td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
                </td>
                <td id="Calendario" align="right"><script language="JavaScript" type="text/javascript">
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
    </main>
</body>
<footer>
    
</footer>
</html>

