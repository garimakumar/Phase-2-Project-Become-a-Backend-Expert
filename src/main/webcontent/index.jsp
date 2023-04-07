<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<div align="center"><h1>FLYAWAY</h1></div>
<div align="center"><h1>An Online Booking Portal</h1></div>
<h2>WELCOME !! We are glad to see you</h2>

<div align="left"><h2>Admin Login</h2>
<form action=AdminServlet method="post">
<table>
<tr>
<td>Username</td>
<td><input type="text" placeholder="Type Username" name="username"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" placeholder="Type Password" name="password"/></td>
</tr>
</table><br>
<input type="submit" value="Submit">   <input type="reset" value="reset">
</form>
</div>

<div align="left"><h2>For Users :</h2></div>

<form action="search.jsp" method="post">
<table>
<tr>
		<td>Travel Date</td> 
		<td><input type="date" id="traveldate" name="traveldate" placeholder="dd/mm/yyyy" required></td> 
</tr>
	<datalist id="source">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/garima";
		String user = "root";
		String pass = "Garima@1991";
		String sql = "select source from places order by source";
		Connection con = DriverManager.getConnection(url, user, pass);
		ResultSet rs = con.createStatement().executeQuery(sql);
		while (rs.next()) {
			String source = rs.getString("source");
		%>
		<option value="<%=source%>" />
		<%
		}
		%>
	</datalist>
	<p>
	<tr>
		<td>Source</td>
		<td><input type="text" name="source" list="source" required/></td>
	</tr>
	</p>
	
	<datalist id="destination">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url1 = "jdbc:mysql://localhost:3306/garima";
		String user1 = "root";
		String pass1 = "Garima@1991";
		String sql1 = "select destination from places order by destination";
		Connection con1 = DriverManager.getConnection(url1, user1, pass1);
		ResultSet rs1 = con.createStatement().executeQuery(sql1);
		while (rs1.next()) {
			String destination = rs1.getString("destination");
		%>
		<option value="<%=destination%>" />
		<%
		}
		rs.close();
		con.close();
		%>
	</datalist>
	<p>
	<tr>
		<td>Destination</td>
		<td><input type="text" name ="destination" list="destination" required/></td>
	</tr>
	</p>
	
	
	<tr>
	<td>No of Persons</td>
	<td><input type="number" name="no of persons" required></td>
	</tr>
	</table>
	</br>
	<input type="submit" value="Show available flights">
	</br>
	</br>
	
	</form>
	

<!-- Add a background image in the web page -->

<style>
body {
	background-image: url("https://www.flightnetwork.com/system/image/open_graph_default_image.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style> 
</body>
</html>