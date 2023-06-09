<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,javax.sql.*" %>
<%! PreparedStatement ps; %>

<%
String id=request.getParameter("empid");
String rname=(String)request.getParameter("select_box");
%>
<%
String up=request.getParameter("up");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdetails", "root", "root");
if(rname!=null && rname.equals("name")){
	ps=con.prepareStatement("update user set name=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
	
}
else if(rname!=null && rname.equals("email")){
	ps=con.prepareStatement("update user set email=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("contact")){
	ps=con.prepareStatement("update user set contact=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("address")){
	ps=con.prepareStatement("update user set address=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("bloodgrp")){
	ps=con.prepareStatement("update user set bloodgrp=? where empid=?");
	ps.setString(1,up);
	ps.setString(1,id);
}
else if(rname!=null && rname.equals("dob")){
	ps=con.prepareStatement("update user set dob=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("doj")){
	ps=con.prepareStatement("update user set doj=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("project")){
	ps=con.prepareStatement("update user set project=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("role")){
	ps=con.prepareStatement("update user set role=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("status")){
	ps=con.prepareStatement("update user set status=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
else if(rname!=null && rname.equals("department")){
	ps=con.prepareStatement("update user set department=? where empid=?");
	ps.setString(1,up);
	ps.setString(2,id);
}
int status=ps.executeUpdate();
out.println("Updated successfully");
%>
<a href="viewEmp.jsp">show data</a>

</body>
</html>