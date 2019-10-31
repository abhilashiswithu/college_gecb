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
                
                String id = request.getParameter("opno");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                
                Statement stmt = connection.createStatement();
                
                ResultSet rs = stmt.executeQuery("select * from patient where id="+id+"");
                while(rs.next())
                {    
                    
                    if (id.equals(rs.getString("id")))
                    {  
                        found = true;
                        break;
                    }
                }
                if (true == found)
                {                    
                   out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Found\");</script>"
                            + "</head><body></body></html>");
                    response.setHeader("Refresh","0;URL=view.jsp"); 
                }
                else
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Not Found!!!\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=search.html");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>