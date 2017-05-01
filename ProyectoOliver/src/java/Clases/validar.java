package Clases;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class validar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sesion = request.getSession();
        String a, b, c;
        a = request.getParameter("rut");
        b = request.getParameter("dv");
        c = request.getParameter("passwd");
        int ok=ConexionDB.Cusuario(a, b, c);
        if(ok==1){
            sesion.setAttribute("usuario", a);
            request.getSession().setAttribute("u", a);
            response.sendRedirect("dashboard.jsp");
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
        }
        else if(ok==0){
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("if(!alert(\"Usuario y/o Contraseña invalida\")) document.location ='http://localhost:9080/ProyectoOliver/'");
            out.println("</script>");
        }
        }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(validar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(validar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(validar.class.getName()).log(Level.SEVERE, null, ex);
            PrintWriter out =  response.getWriter();
            response.setContentType("text/html");
            out.println(ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(validar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
