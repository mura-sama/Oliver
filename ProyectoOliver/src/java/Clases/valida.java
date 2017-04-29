package Clases;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class valida extends HttpServlet {
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {
    int rut = Integer.parseInt(req.getParameter("rut"));
    String dv = req.getParameter("dv");
    String pass = req.getParameter("passwd");
    String x=null;
       try {
            ConexionDB a = new ConexionDB();
            ResultSet b;
           b = a.query("Select * from usuarios where rut="+rut+" and dv="+dv+" and password="+pass);
            while(b.next()){
            out.println(b.getInt(1));
            }
            if(x!=null){
                out.println("ok");
            }else{
                out.println("error");
            }
       } catch (SQLException ex) {
           Logger.getLogger(valida.class.getName()).log(Level.SEVERE, null, ex);
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(valida.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
    
}