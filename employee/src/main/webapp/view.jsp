<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%! ResultSet rs; %>
<%! PreparedStatement ps; %>
<%! Connection con; %>
<%@ page import="java.sql.*,javax.sql.*" %>
<h2 align="center"><font><strong>Database Table</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="pink">
<td><b>id</b></td>
<td><b>name</b></td>
<td><b>email</b></td>
<td><b>contact</b></td>
<td><b>address</b></td>
<td><b>bloodgrp</b></td>
<td><b>dob</b></td>
<td><b>doj</b></td>
<td><b>role</b></td>
<td><b>project</b></td>
<td><b>department</b></td>
<td><b>status</b></td>
</tr>
<% 
String rname=(String)request.getParameter("select_box");
String up=request.getParameter("up");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdetails", "root", "root");
if(rname!=null && rname.equals("project")){
ps=con.prepareStatement("select * from user where project=?");
ps.setString(1,up);
}
else if(rname!=null && rname.equals("role")){
ps=con.prepareStatement("select * from user where role=?");
ps.setString(1,up);
}
else if(rname!=null && rname.equals("department")){
ps=con.prepareStatement("select * from user where department=?");
ps.setString(1,up);
}
else if(rname!=null && rname.equals("status")){
ps=con.prepareStatement("select * from user where status=?");
ps.setString(1,up);
}
rs=ps.executeQuery();
while(rs.next())
{
%>
<tr  >
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><%=rs.getString(10) %></td>
<td><%=rs.getString(11) %></td>
<td><%=rs.getString(12) %></td>
</tr>
<% } %>
</table>
</body>
</html>


