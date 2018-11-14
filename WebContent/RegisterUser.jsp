<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body link="white" style="background: url(Image/e.jpg); background-size: 100%;"> <font color="white"></head>
<center>
<%!
Connection conn;
Statement st;
ResultSet res;%>
<%
String username=request.getParameter("username");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String country=request.getParameter("country");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","kaustav11");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into regid(UserName,Email,Phone,Country)VALUES('"+username+"','"+email+"','"+phone+"','"+country+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%></h3>
<br>
<h6>Want to add more
<a href="AddMed.html">Click here</a>
<br>
<br>
Go Home
<a href="FirstPage.html">Click Here</a>
</font>
</h6>
</center>
</body>
</html>