<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<body link="white" style="background: url(Image/e.jpg); background-size: 100%;"> <font color="white"></head>
<center>
<%!
Connection conn;
Statement st;
ResultSet res;%>
<%
String medicine_name=request.getParameter("medicine_name");
String import_place=request.getParameter("import_place");
String price=request.getParameter("price");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","kaustav11");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into records(medicine_name,import_place,price)VALUES('"+medicine_name+"','"+import_place+"','"+price+"')");
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
</font>
</h6>
</center>
</body>
</html>