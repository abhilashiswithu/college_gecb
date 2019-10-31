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
        <title>Global Hospital</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="background-color: #762272">
    <center><br>
        <div>
            <h1 style="font-family: monospace; color: whitesmoke;">G L O B A L &nbsp;&nbsp; H O S P I T A L</h1><br><hr>
            <br>
            <div style="background-color:#511441; border-radius: 5px">
                <table border="0" style="width: 100%; height:30px; color: wheat;">
                    <tr>
                        <th><a href="login.jsp" style=" text-decoration: none; color: whitesmoke;">Home</a></th>
                        <th><a href="new.html" style=" text-decoration: none; color: whitesmoke;">New</a></th>
                        <th><a href="view.jsp" style=" text-decoration: none; color: whitesmoke;">View</a></th>
                        <th><a href="search.html" style=" text-decoration: none; color: whitesmoke;">Search</a></th>
                        <th><a href="index.html" style=" text-decoration: none; color: whitesmoke;">Logout</a></th>
                    </tr>   
                </table>    
            </div><hr><br><br>
             <div style="width: 80%; height: 350px; background-color:#cca5ca; border-radius: 5px;"><br><br>
                <h2 style="align-content: center;  font-family: monospace; color: #325899">Patient Details</h2><hr><br>
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
                connection = DriverManager.getConnection(url, user, password);
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("select * from patient");
                out.println("<table border=1 style='background-color:#bf96b4' width=98% >"
                        + "<tr>"
                        + "<th>OP No.</th><th>Name</th><th>MobNo.</th><th>Report</th><th>Update</th><th>Delete</th>"
                        + "</tr>");
                while(rs.next())
                {   
                    out.println("<tr>"
                        + "<th>"+rs.getString("id")+"</th>"
                        + "<th>"+rs.getString("name")+"</th>"
                        + "<th>"+rs.getString("mobno")+"</th>"
                        + "<th>"+rs.getString("medical")+"</th>"
                        + "<th><a href='update.jsp?id="+rs.getString("id")+"'>Update</a></th>"
                        + "<th><a href='delete.jsp?id="+rs.getString("id")+"'>Delete</a></th>"
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
