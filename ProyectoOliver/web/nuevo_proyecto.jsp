<%-- 
    Document   : Nuevo_Proyecto2
    Created on : 26-abr-2017, 19:31:10
    Author     : brand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <SCRIPT language="javascript">
			function cambion()
				{
					document.getElementById('val').value=document.getElementById('complejidad').value;
				}
		 
          function addRow(tableID) {

               var table = document.getElementById(tableID);
               var rowCount = table.rows.length;
               var row = table.insertRow(rowCount);
			   
			   var cell1 = row.insertCell(0);

               var element1 = document.createElement("text");

               element1.innerHTML ="Actor:<input type='text' id='actor'/>";
               cell1.appendChild(element1);

               var cell2 = row.insertCell(1);

               var element2 = document.createElement("text");

               element2.innerHTML="Complejidad: <select id='complejidad' onchange='cambion();'> <option value=''>Selecciona</option> <option value='1'>Simple</option> <option value='2'>Promedio</option> <option value='3'>Complejo</option> </select>";

               cell1.appendChild(element2);
			  
			  
			   var cell3 = row.insertCell(2);

               var element3 = document.createElement("text");

               element3.innerHTML ="Valor:<input type='text' id='val' readonly/>";

               cell3.appendChild(element3);

 

               var cell4 = row.insertCell(3);

               var element4 = document.createElement("input");

               element4.type = "checkbox";

               cell4.appendChild(element4);

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

               }catch(e) {

                    alert(e);

               }
          }
		 
     </SCRIPT>
         <SCRIPT language="javascript">
		 function cambi()
				{
					document.getElementById('valo').value=document.getElementById('complejidad1').value;
				}
			 
          function addRow1(tableID1) {

               var table = document.getElementById(tableID1);
               var rowCount = table.rows.length;
               var row = table.insertRow(rowCount);
			   
			   var cell1 = row.insertCell(0);

               var element1 = document.createElement("text");

               element1.innerHTML ="Caso:<input type='text' id='Caso'/>";
               cell1.appendChild(element1);

               var cell2 = row.insertCell(1);

               var element2 = document.createElement("text");

               element2.innerHTML="Complejidad: <select id='complejidad1' onchange='cambi();'> <option value=''>Selecciona</option> <option value='5'>Simple</option> <option value='10'>Promedio</option> <option value='15'>Complejo</option> </select>";

               cell1.appendChild(element2);
			  
			  
			   var cell3 = row.insertCell(2);

               var element3 = document.createElement("text");

               element3.innerHTML ="Valor:<input type='text' id='valo' readonly/>";

               cell3.appendChild(element3);

 

               var cell4 = row.insertCell(3);

               var element4 = document.createElement("input");

               element4.type = "checkbox";

               cell4.appendChild(element4);

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

               }catch(e) {

                    alert(e);

               }

          }
	</SCRIPT>
    </head>
    <body>
</form>
        <h1>Nuevo Proyecto</h1>
        <form action="maneja_formulario.php" method="post">
            <fieldset>
              Nombre Proyecto <br/>
              <input type="text" name="nombre" id="nombre" size="50" maxlength="50" />
              <br/>
              Descripción<br/>
              <input type="text" name="Descripción" id="Descripción" size="100" maxlength="100" />
              <br/>
            </fieldset>
          <fieldset>
               Definicion de Actores<br/>
             <script type="text/javascript">
				
				function cambio1()
				{
					document.getElementById('valor1').value=document.getElementById('comple').value;
				}
			</script>
      

     <TABLE id="dataTable" width="100%" border="0">
			
          <TR>
			  <TD>Actor:<input type='text' id='Actor' /></TD>

               <TD>Complejidad:<select id='comple' onchange='cambio1();'>
				<option value=''>Selecciona</option>
				<option value='1'>Simple</option>
				<option value='2'>Promedio</option>
				<option value='3'>Complejo</option>
				</select></TD>
               <TD>Valor:<input type='text' id='valor1' readonly/></TD>

               <TD> <INPUT type="checkbox" NAME="chk" readonly /> </TD>

          </TR>

     </TABLE>
<INPUT type="button" value="add" onclick="addRow('dataTable');" />
<INPUT type="button" value="Delete " onclick="deleteRow('dataTable');" />
               
          </fieldset>
            <fieldset>
                Definicion de Casos de Uso<br/>
              <script type="text/javascript">
				
				function cambio2()
				{
					document.getElementById('valor2').value=document.getElementById('complejidad2').value;
				}
			</script>
		<TABLE id="dataTable1" width="100%" border="0">
			
          <TR>
			  <TD>Caso:<input type='text' id='caso' /></TD>

               <TD>Complejidad:<select id='complejidad2' onchange='cambio2();'>
				<option value=''>Selecciona</option>
				<option value='5'>Simple</option>
				<option value='10'>Promedio</option>
				<option value='15'>Complejo</option>
				</select></TD>
               <TD>Valor:<input type='text' id='valor2' readonly/></TD>

               <TD> <INPUT type="checkbox" NAME="chk" readonly /> </TD>

          </TR>

     </TABLE>
<INPUT type="button" value="add" onclick="addRow1('dataTable1');" />
<INPUT type="button" value="Delete" onclick="deleteRow1('dataTable1');" />
            </fieldset>
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
		</form>
    </body>
</html>
