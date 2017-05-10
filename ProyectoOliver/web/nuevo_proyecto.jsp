<%-- 
    Document   : Nuevo_Proyecto2
    Created on : 26-abr-2017, 19:31:10
    Author     : brand
--%>

<%@page import="java.sql.*"%>
<%@page import="Clases.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%!
            String user;
            String dv;
        %>
        
        <% 
            user=(String)request.getParameter("user"); 
            dv=(String)request.getParameter("dv");
        %>
        <script type="text/javascript">
           var conta = 0;
           var conta2=0;
           var conta3=0;
            function appendText3()
           {
            conta3+=1;
            return conta3;
            }
            
           function appendText2()
           {
            conta2+=1;
            return conta2;
            }
            
            function appendText(){
            conta+=1;
            return conta;
            }
             function cambion()
                {
                        document.getElementById('valor').value=document.getElementById('complejidad').value;
                }
		 
            function xxx()
            {
                
                var table = document.getElementById("dataTable");
                var row = table.insertRow(0);
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);
                var cell3 = row.insertCell(2);
                var cell4 = row.insertCell(3);
                cell1.innerHTML = "Actor:<input type='text' id='act' name='actor"+appendText()+"' size='50' maxl ength='50' />";
                cell2.innerHTML = "Complejidad: <select id='complejidad' name='complejidad"+appendText2()+"' onchange='cambion();'> <option value=''>Selecciona</option> <option value='1'>Simple</option> <option value='2'>Promedio</option> <option value='3'>Complejo</option> </select>";
                cell3.innerHTML = "Valor:<input type='text' id='valor' name='valor"+appendText3()+"' readonly/>";
                cell4.innerHTML = "<input type='checkbox' NAME='ckr' readonly />";
            }
            function deleteRow(tableID) {

               try {

               var table = document.getElementById(tableID);

               var rowCount = table.rows.length;

               for(var i=0; i<rowCount; i++) {

                    var row = table.rows[i];

                    var chkbox = row.cells[3].childNodes[0];

                    if(null != chkbox && true == chkbox.checked) {

                         table.deleteRow(i);

                         rowCount--;

                         i--;
                    }
               }


               }catch(e) 
               {
                    alert(e);
               }
            }
        </script>
        <script type="text/javascript">
           var conta4= 0;
           var conta5=0;
           var conta6=0;
            function appendText4()
           {
            conta4+=1;
            return conta4;
            }
            
           function appendText5()
           {
            conta5+=1;
            return conta5;
            }
            
            function appendText6(){
            conta6+=1;
            return conta6;
            }
             function cambio()
                {
                        document.getElementById('valo').value=document.getElementById('compleji').value;
                }
		 
            function xxx1()
            {
                
                var table = document.getElementById("dataTable1");
                var row = table.insertRow(0);
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);
                var cell3 = row.insertCell(2);
                var cell4 = row.insertCell(3);
                cell1.innerHTML = "Caso:<input type='text' id='caso' name='caso"+appendText4()+"' size='50' maxl ength='50' />";
                cell2.innerHTML = "Complejidad: <select id='compleji' name='compleji"+appendText5()+"' onchange='cambio();'> <option value=''>Selecciona</option> <option value='5'>Simple</option> <option value='10'>Promedio</option> <option value='15'>Complejo</option> </select>";
                cell3.innerHTML = "Valor:<input type='text' id='valo' name='valo"+appendText6()+"' readonly/>";
                cell4.innerHTML = "<input type='checkbox' NAME='ckr' readonly />";
            }
            function deleteRow1(tableID1) {

               try {

               var table = document.getElementById(tableID1);

               var rowCount = table.rows.length;

               for(var i=0; i<rowCount; i++) {

                    var row = table.rows[i];

                    var chkbox = row.cells[3].childNodes[0];

                    if(null != chkbox && true == chkbox.checked) {

                         table.deleteRow(i);

                         rowCount--;

                         i--;
                    }
               }


               }catch(e) 
               {
                    alert(e);
               }
            }
        </script>
        <script type='text/javascript'>
            function grabar(){
                <%
                    String np = request.getParameter("nombre");
                    String desc = request.getParameter("descripcion");
                Connection a = ConexionDB.Conectar();
                Statement proyecto1 = a.createStatement();
                proyecto1.executeUpdate("insert into proyectos values(NULL,'"+user+"','"+dv+"','"+np+"','"+desc+"')");
                ResultSet proyecto2 = ConexionDB.query("select * from proyectos where jp='"+user+"' and jp_dv='"+dv+"'");
                proyecto2.last();
                int pid=proyecto2.getInt(1);
                %>
                        for(var i=0; i<document.getElementById("dataTable").rows.length -1; i++){
                                    <%
                                        int i=0;
                                        String actor=request.getParameter("actor")+i;
                                        String avaluep=request.getParameter("complejidad")+i;
                                        String acomp;
                                        if(avaluep.equals("1")){
                                            acomp="Simple";
                                        }else if(avaluep.equals("2")){
                                            acomp="Promedio";
                                        }else{
                                            acomp="Complejo";
                                        }
                                        
                                        Statement actores1 = a.createStatement();
                                        
                                        i++;
                                    %>
                        }             
            }
        </script>
    </head>
    <body>
        <form method="post" onsubmit="grabar()">
        <h1>Nuevo Proyecto</h1>
            <fieldset>
              Nombre Proyecto <br/>
              <input type="text" name="nombre" id="nombre" size="50" maxlength="50" />
              <br/>
              Descripción<br/>
              <input type="text" name="descripcion" id="descripcion" size="100" maxlength="100" />
              <br/>
            </fieldset>
            <br/>
            <br/>
          <fieldset>
               Definicion de Actores<br/>

     <TABLE id="dataTable" width="100%" border="0">
         <script type="text/javascript">
         function cambi()
                {
                        document.getElementById('val').value=document.getElementById('comple').value;
                }
         </script>
			
          <TR>
                <TD width="35%">Actor:<input type='text' id='Actor' name='actor0' size='50' maxlength='50'/></TD>

               <TD width="21%">Complejidad:
                        <select id='comple'name="complejidad0" onchange='cambi();'>
                        <option value=''>Selecciona</option>
                        <option value='1'>Simple</option>
			<option value='2'>Promedio</option>
			<option value='3'>Complejo</option>
			</select></TD>
               <TD width="20%">Valor:<input type='text' id='val' name="valor0" readonly/></TD>

               <TD width="24%"> <INPUT type="checkbox" NAME="chk" readonly /> </TD>

          </TR>
     </TABLE>
<INPUT type="button" value="add" onclick="xxx();" />
<INPUT type="button" value="Delete " onclick="deleteRow('dataTable');" />

          </fieldset>
            <br/>
            <br/>
          <fieldset>
                Definicion de Casos de Uso<br/>
            
	<TABLE id="dataTable1" width="100%" border="0">
        <script type="text/javascript">
	 function camb()
                {
                        document.getElementById('v').value=document.getElementById('com').value;
                }
         </script>		
          <TR>
                <TD width="35%">Caso:<input type='text' id='caso' name="caso0" size='50' maxlength='50'/></TD>

               <TD width="21%">Complejidad:<select id='com' name='compleji0' onchange='camb();'>
				<option value=''>Selecciona</option>
				<option value='5'>Simple</option>
				<option value='10'>Promedio</option>
				<option value='15'>Complejo</option>
				</select></TD>
               <TD width="20%">Valor:<input type='text' id='v' name='valo0' readonly/></TD>

               <TD width="24%"> <INPUT type='checkbox' NAME='chk' readonly /> </TD>

          </TR>

     </TABLE>
<INPUT type="button" value="add" onclick="xxx1();" />
<INPUT type="button" value="Delete" onclick="deleteRow1('dataTable1');" />
          </fieldset>
            <br/>
            <br/>
            <fieldset>
			<table width="100%" border="1">
			  <tbody>
				<tr>
				  <td>Factor Tecnico</td>
				  <td>Descripcion</td>
				  <td>Peso</td>
				  <td>Factor</td>
				</tr>
				<tr>
				  <td>T1</td>
				  <td>Sistema Distribuido</td>
				  <td><input type="text" value="2" size="2" readonly></td>
				  <td><input type="text" name="ft1" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T2</td>
				  <td>Objetivos de desempeño de respuesta o throughput</td>
				  <td><input type="text" value="2" size="2" readonly></td>
				  <td><input type="text" name="ft2" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T3</td>
				  <td>Eficiencia end-user(online)</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft3" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T4</td>
				  <td>Procedimiento Interno Complejo</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft4" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T5</td>
				  <td>Codigo debe ser Reusable</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft5" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T6</td>
				  <td>Facil de Instalar</td>
				  <td><input type="text" value="0.5" size="2" readonly></td>
				  <td><input type="text" name="ft6" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T7</td>
				  <td>Facil de Usar</td>
				  <td><input type="text" value="0.5" size="2" readonly></td>
				  <td><input type="text" name="ft7" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T8</td>
				  <td>Portable</td>
				  <td><input type="text" value="2" size="2" readonly></td>
				  <td><input type="text" name="ft8" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T9</td>
				  <td>Facil de Cambiar</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft9" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T10</td>
				  <td>Concurrente</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft10" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T11</td>
				  <td>Incluye Caracteristicas Especiales de Seguridad</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft11" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T12</td>
				  <td>Provee aceso directo a terceras partes</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft12" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>T13</td>
				  <td>Facilidades especiales de entrenamiento son requeridas</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ft13" value="" size="2" maxlength="3" ></td>
				</tr>
			  </tbody>
			</table>
			</fieldset>
                <br/>
                <br/>
        	<fieldset>
        	<table width="100%" border="1">
			  <tbody>
				<tr>
				  <td>Factor Ambiental</td>
				  <td>Descripcion</td>
				  <td>Peso</td>
				  <td>Factor</td>
				</tr>
				<tr>
				  <td>F1</td>
				  <td>Equipo Familiar con RUP</td>
				  <td><input type="text" value="1.5" size="2" readonly></td>
				  <td><input type="text" name="ff1" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F2</td>
				  <td>Esperiencia en Aplicaciones</td>
				  <td><input type="text" value="0.5" size="2" readonly></td>
				  <td><input type="text" name="ff2" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F3</td>
				  <td>Experiencia en OO</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ff3" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F4</td>
				  <td>Capacidad del Analista Lider</td>
				  <td><input type="text" value="0.5" size="2" readonly></td>
				  <td><input type="text" name="ff4" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F5</td>
				  <td>Motivacion</td>
				  <td><input type="text" value="1" size="2" readonly></td>
				  <td><input type="text" name="ff5" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F6</td>
				  <td>Requerimientos Estables</td>
				  <td><input type="text" value="2" size="2" readonly></td>
				  <td><input type="text" name="ff6" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F7</td>
				  <td>Trabajadores Part-Time</td>
				  <td><input type="text" value="-1" size="2" readonly></td>
				  <td><input type="text" name="ff7" value="" size="2" maxlength="3" ></td>
				</tr>
				<tr>
				  <td>F8</td>
				  <td>Lenguaje de Programacion Dificil</td>
				  <td><input type="text" value="-1" size="2" readonly></td>
				  <td><input type="text" name="ff8" value="" size="2" maxlength="3" ></td>
				</tr>
			  </tbody>
			</table>
         	</fieldset>
                <br>
                <p align="right"><input type='submit' name='guardar' value='GUARDAR'/></p>
	</form>
    </body>
</html>