<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>
<%
       String name=(String)session.getAttribute("uname"); 
        Connection connection;
        String url = "jdbc:postgresql://localhost:5432/bank"; 
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
                String amount = request.getParameter("amount");
                String option = request.getParameter("option");
                Boolean found = false;
                connection = DriverManager.getConnection(url, user, password);
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("select * from user_details where name='"+name+"'");
                while(rs.next())
                {   
                    if (amount.compareTo(rs.getString("balance"))<=0)
                    {
                        found = true;
                        break;
                    }
                }
                
                if (option.equals("deposit"))
                {   
                    int i= stmt.executeUpdate("update user_details set balance=balance+"+amount+" , ttime=CURRENT_TIMESTAMP where name='"+name+"'");
                    if(i==1)
                    {

                       out.println("<!DOCTYPE html>"
                                + "<html><head><title>Sign in</title>"
                                + "<script type=\"text/javascript\">alert(\"Transaction Success\");</script>"
                                + "</head><body></body></html>");

                                response.setHeader("Refresh","0;URL=balance.jsp"); 

                    }
                }
                else if (true == found && option.equals("withdraw"))
                {
                    int i= stmt.executeUpdate("update user_details set balance=balance-"+amount+"  ,ttime=CURRENT_TIMESTAMP where name='"+name+"'");
                    if(i==1)
                    {
                        out.println("<!DOCTYPE html>"
                                + "<html><head><title>Sign in</title>"
                                + "<script type=\"text/javascript\">alert(\"Transaction Success\");</script>"
                                + "</head><body></body></html>");

                            response.setHeader("Refresh","0;URL=balance.jsp");
                    }
                }
                else
                {
                    out.println("<!DOCTYPE html>"
                            + "<html><head><title>Sign in</title>"
                            + "<script type=\"text/javascript\">alert(\"Transaction Failed!!!\");</script>"
                            + "</head><body></body></html>");
                    
                        response.setHeader("Refresh","0;URL=banking.html");
                }
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>