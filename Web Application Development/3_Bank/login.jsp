<%-- 
    Document   : login
    Created on : 20 Sep, 2019, 12:50:56 AM
    Author     : wad55
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div style="width: 40%; height: 300px; background-color:#e1fdff; border-radius: 5px;"><br>
                <h1 style="align-content: center;  font-family: monospace; color: #325899">Welcome to SBI</h1><hr><br>
                <h2 style="align-content: center;  font-family: monospace; color: #4ad945" > Login Successfully</h2><br>
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
