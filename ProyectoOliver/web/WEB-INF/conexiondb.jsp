<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<%!
    private Connection conexion=null;
    private String ip="170.239.84.83:3306";
    private String db="solemne1";
    private String usuario="root";
    private String passwd="urob68tk";
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexion DB</title>
    </head>
    <body>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                String URL="jdbc:mysql://"+ip+"/"+db+"?"+"user="+usuario+"&password="+passwd;
                conexion=DriverManager.getConnection(URL);
            }
            catch (SQLException e){
                out.println(e);
            }
        %> 
    </body>
</html>
