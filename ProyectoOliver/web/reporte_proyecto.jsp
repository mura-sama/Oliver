<%@page import="Clases.ConexionDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Vista de proyectos</title>
</head>
<%
    String pid=(String)request.getParameter("pid");
    ResultSet nproyecto = ConexionDB.query("select nombre from proyectos where project_id='"+pid+"'");
    nproyecto.first();
    String nomp = nproyecto.getString(1);
%>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Ejemplo de tabla sencilla</title>
</head>
 
<body>
    <h1> T˙ Proyecto Rut:<%=nomp%> </h1>
 
<table width="50%" height="50%" border=0 bordercolor=""align="left" cellpadding=10 cellspacing=10
 >
<tr><td  border-collapse:separate;
  border-spacing: 2px 6px;
width="233"><table  border-collapse:separate;
  border-spacing: 100px 100px;  align="center" border=1 cellspacing=1 cellpadding=1 width="100%">
<tr><caption>
<strong>Actores</strong>
</caption>
   <thead>
   
      <th>Actor</th>
      <th>Peso</th>
   <tbody>
       <tr>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
     </tbody>
      <tfoot>
    <tr>
      <td>Total</td>
      <td></td>
    </tr>
  </tfoot>
  </table></td></tr></table></td>
  
<table  width="50%" height="50%" border=0 bordercolor=""align="left" cellpadding=10 cellspacing=10> 
<tr>
    <td   border-collapse:separate;
  border-spacing: 2px 6px;width="100"><table border-collapse:separate;
  border-spacing: 2px 6px; align="center" border=1 bordercolor="rgba(244,7,11,1.00)" cellspacing=1 cellpadding=1 width="100%">
<tr><caption>
<strong>CasosDeUso</strong>
</caption>
 
<thead>
   
      <th>Caso</th>
      <th>Peso</th>
   <tbody>
       <tr>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
       <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
       </tr>
  </tbody>
      <tfoot>
    <tr>
      <td>Total</td>
      <td></td>
    </tr>
  </tfoot>
  
</table> 
  
		<br></br>
<tr></tr>
<tr></tr>
<table  border-collapse:separate;
  border-spacing: 2px 6px; width="50%" height="50%" border=0 bordercolor=""align="left" cellpadding=1 cellspacing=1>
<tr>
    <td width="100"><table border-collapse:separate;
  border-spacing: 100px 100px;  align="center" border=1  bordercolor=""cellspacing=1 cellpadding=1 width="100%">
<tr><caption>
<strong>Factores Tecnicos</strong>
</caption>
   <thead>
   
      <th>Peso</th>
      <th>Factor</th>
      <th>Valor Ponderado</th>
   <tbody>
       <tr>
         <th scope="col">2</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">2</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">0.5</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">0.5</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">2</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
        <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
     </tbody>
      <tfoot>
    <tr>
      <td></td>
      <td>Total:</td>
    </tr>
  </tfoot>
  </table></td></tr></table></td>
  
  
</table> 
<table  border-collapse:separate;
  border-spacing: 2px 6px; width="50%" height="50%" border=0 bordercolor=""align="left" cellpadding=1 cellspacing=1>
<tr>
    <td width="100"><table border-collapse:separate;
  border-spacing: 100px 100px; align="center" border=1 bordercolor="rgba(244,7,11,1.00)" cellspacing=1 cellpadding=1 width="100%">
<tr><caption>
<strong>Factores Ambientales</strong>
</caption>
   <thead>
   
      <th>Peso</th>
      <th>Factor</th>
      <th>Valor Ponderado</th>
   <tbody>
       <tr>
         <th scope="col">2</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">2</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">0.5</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">0.5</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">2</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
       <tr>
         <th scope="col">1</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
       </tr>
     
      </tbody>
      <tfoot>
    <tr>
      <td></td>
      <td>Total:</td>
    </tr>
  </tfoot>
  </table></td></tr></table>
  
</td>
<br></br>
 <table width="100%" border="1" bordercolor="#0000FF" cellspacing="5" cellpadding="10">
 
<caption>
<strong>Tabla RESULTADOS FINALES</strong>
</caption>
   <thead>    
      <th>WA</th>
      <th>WU</th>
      <th>UUCP</th>
      <th>TFC</th>
      <th>Ef</th>
      <th>HH</th>
   <tbody>
       <tr>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>      
       </tr>
       <tr>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>
         <th scope="col">&nbsp;</th>  
       </tr>	
</table>
</body>
</html>

