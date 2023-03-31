<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flights_List</title>
</head>
<body>
<div align="center"><h1>FLYAWAY</h1></div>
<div align="center"><h1>An Online Booking Portal</h1><br/><br/></div>
<h2>FLIGHTS_LIST</h2><br/>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/garima";
String user="root";
String password="Garima@1991";
String sql="select * from flights order by name";
Connection con=DriverManager.getConnection(url, user, password);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
%>
<table border="3">
<tr>
<th>Name</th>
<th>Airlines</th>
<th>Source</th>
<th>Destination</th>
<th>Way</th>
<th>TicketPrice</th>
</tr>
<%while(rs.next()) { %>
<tr>
<td>
<%=rs.getString(1) %>
</td>

<td>
<%=rs.getString(2) %>
</td>

<td>
<%=rs.getString(3) %>
</td>

<td>
<%=rs.getString(4) %>
</td>

<td>
<%=rs.getString(5) %>
</td>

<td>
<%=rs.getString(6) %>
</td>
</tr>
<%} %>
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