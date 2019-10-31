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
                String opno = request.getParameter("opno");
                String medical = request.getParameter("medical");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                //out.println("Connected");
                Statement stmt = connection.createStatement();
                int i= stmt.executeUpdate("UPDATE patient set medical='"+medical+"' where id="+opno+";");
                if(i==1)
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Record updated successfully\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=view.jsp");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>