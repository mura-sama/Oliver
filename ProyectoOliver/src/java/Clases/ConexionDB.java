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
            System.out.println("Ok");
        }
        catch (SQLException e){
            System.out.println(e);
        }
        return a;
    }
    
    public ResultSet select(String query) throws SQLException, ClassNotFoundException{
        ConexionDB a=new ConexionDB();
        Connection b=a.Conectar();
        Statement c=b.createStatement();
        ResultSet d=c.executeQuery(query);
        return d;
    }
}
