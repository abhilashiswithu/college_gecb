package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public login() {
        // TODO Auto-generated constructor stub
    }
    
    Connection connection;
    String url = "jdbc:mysql://127.0.0.1:3306/test?serverTimezone=UTC";
    String username = "root";
    String password = "";
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        try {        
        	Class.forName("com.mysql.jdbc.Driver");    
        } catch(ClassNotFoundException e ){
              //e.getMessage();
              out.println(e.getMessage());
        } 

        try {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            
            connection = DriverManager.getConnection(url, username, password);
            Statement stmt = connection.createStatement();
            int i= stmt.executeUpdate("INSERT INTO tbl_user VALUES (id,'"+user+"','"+pass+"',timestamp);");
            if(i==1)
            {
                out.println("<!DOCTYPE html>"
                        + "<html><head><title>Sign in</title>"
                        + "<script type=\"text/javascript\">alert(\"Record added successfully\");</script>"
                        + "</head><body></body></html>");
                
                    response.setHeader("Refresh","0;URL=home.html");
            }
            connection.close();
	    } catch (SQLException ex) {
	    out.println(ex.getMessage());        
	    }     
	}

}
