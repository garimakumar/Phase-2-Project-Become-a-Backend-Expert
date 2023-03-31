<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center"><h1>FLYAWAY</h1></div>
<div align="center"><h1>An Online Booking Portal</h1><br/><br/></div>
<% 
try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/garima","root","Garima@1991");
			String uname=request.getParameter("username");
			String pass=request.getParameter("password");
			PreparedStatement pst=con.prepareStatement("update admin set password=? where username=?");
			pst.setString(2,uname);
			pst.setString(1,pass);
			int i=pst.executeUpdate();
			if(i>0) {
				response.sendRedirect("success.jsp");
				
			}
			else
			{ 
				response.sendRedirect("index.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
%>

<style>
body {
	background-image: url("https://www.flightnetwork.com/system/image/open_graph_default_image.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</body>
</html>