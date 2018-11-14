<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Process</title>
</head>
<body link="white" style="background: url(Image/e.jpg); background-size: 100%;"> <font color="white"></head>
<center>
<%!
Connection conn;
Statement st;
ResultSet res;%>
<%
String medicine_name=request.getParameter("medicine_name");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","kaustav11");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM records WHERE medicine_name='"+medicine_name+"'");
out.println("Data Successfully deleted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%></h3>
<br>
<h3>Want to delete more
<a href="DeleteForm.html">Click here</a><br><br>
<a href="Home.jsp">Click here for Home</a>
</font>
</h3>
</center>
</body>
</html>