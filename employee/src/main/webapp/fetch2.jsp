<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*,javax.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
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
int contact=Integer.parseInt(request.getParameter("contact"));
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdetails","root","root");
PreparedStatement ps=con.prepareStatement("select * from user where contact=?");
ps.setInt(1,contact);
ResultSet rs=ps.executeQuery();

if(rs.next())
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
	<% }
%>
<a href="index.html">MENU</a>
</body>
</html>