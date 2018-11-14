<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body link="white" style="background: url(Image/e.jpg); background-size: 100%;" ><center>
<font color="white">
<h1>Following records were obtained:-</h1></font>
<br>
<a href="Home.jsp">GoBack</a>
<br>
<br>
<form method="post">
<table style="color:white" border="2" bordercolor=white>
<td>Username</td>
<td>Email</td>
<td>Phone</td>
<td>Country</td>
</tr>
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
ResultSet res;
res=st.executeQuery("select * from regid");
while(res.next())
{
%>
<tr><td><%=res.getString("username") %></td>
<td><%=res.getString("email") %></td>
<td><%=res.getString("phone") %></td>
<td><%=res.getString("country") %></td></tr>
<%
}
%>
</table>
<% 
res.close();
st.close();
conn.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</form>
</center>
</body>
</html>