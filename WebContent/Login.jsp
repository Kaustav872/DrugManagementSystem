<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body link="white" style="background: url(Image/q.png); background-size: 100%;">
<%! String username,password; %>
<%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username == null || password == null) {
 
                out.print("Invalid parameters ");
            }
 
          
            if (username.toLowerCase().trim().equals("kaustav") && password.toLowerCase().trim().equals("kaustav11")) {
                session.setAttribute("username", username);%>
                <center>
                <h1><font color="white">WELCOME ADMIN !<br><br></h1>
                <h2>What would you like to do?<br><br></h2>
                <h3><a href="AddMed.html">Add Medicine<br></a>
                <a href="MedInfo.jsp">Show Stock<br></a>
                <a href="PriceMed.jsp">Show Price of Medicines</a><br>
               <a href="DeleteForm.html">Delete From Stock</a><br>
                <a href="showreg.jsp">Show Registered Users</a><br>
                </h3>
                </center><% 
            }
           else
               {%><center><h1><font color="yellow"><br><br><br><h4><a href="Home.jsp">Login Again</a></h4><%
                out.println("Invalid username and password");
           }
%></h1>

</center>
</font>
</body>
</html>