<%-- 
    Document   : login
    Created on : 20 Sep, 2019, 12:50:56 AM
    Author     : wad55
--%>
 <%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SBI</title>
    </head>
    <body style="background-color: #22a0b4">
    <center><br>
        <div>
            <h1 style="font-family: monospace; color: whitesmoke;">S B I</h1><br><hr>
            <div style="background-color:#225389; border-radius: 5px">
                <table border="0" style="width: 100%; height:30px; color: wheat;">
                    <tr>
                        <th><a href="login.jsp" style=" text-decoration: none; color: whitesmoke;">Home</a></th>
                        <th><a href="add.html" style=" text-decoration: none; color: whitesmoke;">Add</a></th>
                        <th><a href="view.jsp" style=" text-decoration: none; color: whitesmoke;">View</a></th>
                        <th><a href="index.html" style=" text-decoration: none; color: whitesmoke;">Logout</a></th>
                    </tr>   
                </table>    
            </div><hr><br><br>
            <div style="width: 80%; height: 300px; background-color:#e1fdff; border-radius: 5px;"><br><br>
               
<%
       
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
                connection = DriverManager.getConnection(url, user, password);
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("select * from user_details");
                out.println("<table border=1 style='background-color:#4b95e7' >"
                        + "<tr>"
                        + "<th>A/C No.</th><th>Name</th><th>Gender</th><th>Mob No.</th><th>Balance</th><th>Last Trancsaction Time</th>"
                        + "</tr>");
                while(rs.next())
                {   
                    out.println("<tr>"
                        + "<th>"+rs.getString("acno")+"</th>"
                        + "<th>"+rs.getString("name")+"</th>"
                        + "<th>"+rs.getString("gender")+"</th>"
                        + "<th>"+rs.getString("mobno")+"</th>"
                        + "<th>"+rs.getString("balance")+"</th>"
                        + "<th>"+rs.getString("ttime")+"</th>"
                        + "</tr>");
                }
                out.println("</table>");
                connection.close();
        } catch (SQLException ex) {
        out.println(ex.getMessage());        
        }   
%>

            </div>
            <div>
                <br><br><hr><br>
                <h4 style="align-content: center; font-family: monospace;">&copy;2019</h4><br>
            </div>
        </div>
    </center>
    </body>
</html>
