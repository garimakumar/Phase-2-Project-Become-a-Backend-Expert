<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Places_Page</title>
</head>
<body>
<div align="center"><h1>FLYAWAY</h1></div>
<div align="center"><h1>An Online Booking Portal</h1><br/><br/></div>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/garima";
String user="root";
String password="Garima@1991";
Connection con=DriverManager.getConnection(url, user, password);
String sql="select * from places";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
%>
<h2>PLACES_LIST</h2>

<table border="3">

<tr>
<th>Source</th>
<th>Destination</th>
</tr>
<% while(rs.next()) { %>
<tr>
<td> 
<%=rs.getString(1) %>
</td>
<td>
<%=rs.getString(2) %>
</td>
</tr>
<% } %>
</table>

<style>
body {
	background-image: url("https://www.flightnetwork.com/system/image/open_graph_default_image.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</body>
</html>