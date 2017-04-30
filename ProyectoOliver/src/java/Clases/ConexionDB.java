package Clases;

import java.sql.*;

public class ConexionDB {
    private static Connection a=null;
    private static String ip="170.239.84.83:3306";
    private static String db="solemne1";
    private static String usuario="root";
    private static String passwd="urob68tk";
   
    public static Connection Conectar() throws ClassNotFoundException{
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
    
    public static ResultSet query(String query) throws SQLException, ClassNotFoundException{
        Connection b=ConexionDB.Conectar();
        Statement c=b.createStatement();
        ResultSet d=c.executeQuery(query);
        return d;
    }
    
    public static int Cusuario(String b, String c, String d) throws SQLException, ClassNotFoundException{
        int x=5;
        ResultSet z=query("select rut,dv,password from usuarios where rut="+b+" and dv="+c+" and password="+d);
        z.first();
        if(b.equals(z.getInt(1))){
                x=1;
        }else{
            x=0;
        }
        return x;
    }
}
