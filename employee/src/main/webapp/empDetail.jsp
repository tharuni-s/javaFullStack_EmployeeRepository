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
<%
    
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String contact=request.getParameter("contact");
    String address=request.getParameter("address");
    String blood=request.getParameter("blood");
    String dob=request.getParameter("dob");
    String doj=request.getParameter("doj");
    String role=request.getParameter("role");
    String project=request.getParameter("project");
    String dept=request.getParameter("department");
    String status=request.getParameter("status");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdetails","root","root");
    PreparedStatement ps=con.prepareStatement("insert into user(name,email,contact,address,bloodgrp,dob,doj,role,project,department,status) values(?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,contact);
    ps.setString(4,address);
    ps.setString(5,blood);
    ps.setString(6,dob);
    ps.setString(7,doj);
    ps.setString(8,role);
    ps.setString(9,project);
    ps.setString(10,dept);
    ps.setString(11,status);
    int s=ps.executeUpdate();
    out.println("Registered");
    %>
    <a href="index.html">MENU</a>
</body>
</html>