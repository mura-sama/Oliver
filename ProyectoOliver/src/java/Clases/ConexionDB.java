package Clases;

import java.sql.*;

public class ConexionDB {
    private static Connection a=null;
    private static String ip="170.239.84.83:3306";
    private static String db="solemne1";
    private static String usuario="root";
    private static String passwd="urob68tk";
   
    public Connection Conectar() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String URL="jdbc:mysql://"+ip+"/"+db+"?"+"user="+usuario+"&password="+passwd;
            a=DriverManager.getConnection(URL);
        }
        catch (SQLException e){
            System.out.println(e);
        }
        return a;
    }
}
