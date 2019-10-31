<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>
<%
       
        Connection connection;
        String url = "jdbc:postgresql://localhost:5432/hospital"; 
        String user = "postgres";
        String password = "root";
        response.setContentType("text/html;charset=UTF-8");
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
                
                Statement stmt = connection.createStatement();
                
                ResultSet rs = stmt.executeQuery("select * from admin");
                while(rs.next())
                {    
                    
                    if (name.equals(rs.getString("name"))&&pass.equals(rs.getString("passcode")))
                    {  
  
                        String sname=rs.getString("name"); 
                        session.setAttribute("uname",name);
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
                    response.setHeader("Refresh","0;URL=login.jsp"); 
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
%>