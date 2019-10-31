/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author Ameer
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    
    Connection connection;
    String url = "jdbc:postgresql://localhost:5432/employee";
    String user = "postgres";
    String password = "root";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        try {        
            Class.forName("org.postgresql.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        }    
        try {
                String name = request.getParameter("name");
                String pass = request.getParameter("pass");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                out.println("Connected");
                Statement stmt = connection.createStatement();
                
                ResultSet rs = stmt.executeQuery("select * from details");
                while(rs.next())
                {    
                    if (name.equals(rs.getString("name"))&&pass.equals(rs.getString("pass")))
                    {
                        found = true;
                        break;
                    }
                }
                if (true == found)
                {                    
                   out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Sign in Successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=login.html");                
                }
                else
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Sign in Failed!!!\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=index.html");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}