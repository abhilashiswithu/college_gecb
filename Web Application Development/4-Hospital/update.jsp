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
                        <th><a href="search.jsp" style=" text-decoration: none; color: whitesmoke;">Search</a></th>
                        <th><a href="index.html" style=" text-decoration: none; color: whitesmoke;">Logout</a></th>
                    </tr>   
                </table>    
            </div><hr><br><br>
              <div style="width: 40%; height: 300px; background-color:#cca5ca; border-radius: 5px;"><br>
                <h2 style="align-content: center;  font-family: monospace; color: #325899">Patient Details</h2><hr><br>
          <%
       
        Connection connection;
        String url = "jdbc:postgresql://localhost:5432/hospital"; 
        String user = "postgres";
        String password = "root";
        String id = request.getParameter("id");;
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
                ResultSet rs = stmt.executeQuery("select * from patient where id="+id+"");
                out.println("<form method='post' action='update1.jsp'>"
                        + "<table border=0 width=98% >");
                while(rs.next())
                {   
                    out.println("<tr>"
                        + "<th>OP No. :</th><td><input type=hidden name='opno' value="+rs.getString("id")+">"+rs.getString("id")+"</td></tr>"
                        + "<tr><th>Name</th><td>"+rs.getString("name")+"</td></tr>"
                        + "<tr><th>Mob No.</th><td>"+rs.getString("mobno")+"</td></tr>"
                        + "<tr><td colspan=2><textarea name='medical' style='width:98%'; height:600px;>"+rs.getString("medical")+"</textarea></td>"
                        + "</tr>"
                        + "");
                }
                out.println("<tr><td colspan=2><input style='border-radius: 10px; width: 98%; height: 30px; color: white; background-color: #22b122;' type=submit value=Submit name=submit</td</tr>"
                        + "</table></form>");
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