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
<%! ResultSet rs; %>
<%! PreparedStatement ps; %>
<%! Connection con; %>
<%
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empdetails","root","root");
%>
<%  String sql="select * from user where empid=?";
ps=con.prepareStatement(sql);
if(ps==null)
{
out.print("Sorry Employee not found");
}

 %>
 
 <% ps=con.prepareStatement("delete from user where empid=?");
 ps.setInt(1,id);
 int status=ps.executeUpdate();
 out.println("deleted"); 
 %>
 <a href="index.html">MENU</a>

</body>
</html>