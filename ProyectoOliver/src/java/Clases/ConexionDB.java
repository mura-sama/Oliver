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
    
    public static int Cusuario(String a, String b, String c) throws SQLException, ClassNotFoundException{
        int x=0;
        ResultSet z=query("select rut,dv,password from usuarios where rut='"+a+"' and dv='"+b+"' and password='"+c+"'");
        if(z.absolute(1)){
            x=1;
        }
        return x;
    }
    
    public static String Nusuario(String rut) throws SQLException, ClassNotFoundException{
        ResultSet j=query("select nombre,apellido_p from usuarios where rut="+rut);
        j.first();
        String nombre=j.getString(1)+" "+j.getString(2);
        return nombre;
    }
}
