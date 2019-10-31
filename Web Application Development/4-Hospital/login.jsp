<%-- 
    Document   : login
    Created on : 20 Sep, 2019, 12:50:56 AM
    Author     : wad55
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
             <div style="width: 30%; height: 350px; background-color:#cca5ca; border-radius: 5px;"><br><br>
                <h1 style="align-content: center;  font-family: monospace; color: #325899">Welcome to GLOBAL HOSPITAL</h1><hr><br>
                <h2 style="align-content: center;  font-family: monospace; color: #de501c" > Login Successfully</h2><br>
           <%   

                    String name=(String)session.getAttribute("uname");  
                    out.print("Welcome "+name);  

                    %> 
                <br><br><hr>
                <h3 style="align-content: center; font-family: monospace;"></h3><br>
            </div>
            <div>
                <br><br><hr><br>
                <h4 style="align-content: center; font-family: monospace;">&copy;2019</h4><br>
            </div>
        </div>
    </center>
    </body>
</html>
