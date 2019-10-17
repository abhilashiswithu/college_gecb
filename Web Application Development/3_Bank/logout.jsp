 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
/*String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");*/

try
{
    String url = "jdbc:postgresql://localhost:5432/student";
    String user = "postgres";
    String password = "root";
Class.forName("org.postgresql.Driver"); 
Connection conn = DriverManager.getConnection(url,user,password);
/*Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");
*/out.println("Connected!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
