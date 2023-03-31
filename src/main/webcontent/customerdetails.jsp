<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CUSTOMER_DETAILS</title>
</head>
<body>
<div align="center"><h1>FLYAWAY</h1></div>
<div align="center"><h1>An Online Booking Portal</h1></div><br><br>
<h1>Select Route:</h1>
	<form action="showdetails.jsp" method="post">
	<datalist id="source">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/garima";
		String user = "root";
		String password = "Garima@1991";
		String sql = "select * from places";
		Connection con = DriverManager.getConnection(url, user, password);
		Statement st=con.createStatement();
		ResultSet rs =st.executeQuery(sql);
		while (rs.next()) {
			String source=rs.getString("source");
		%>
		<option value="<%=source%>" />
		<%
		}
		%>
	</datalist>
	<p>
		Source: <input type="text" name="source" list="source" required/>
	</p>
		<datalist id="destination">
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url1 = "jdbc:mysql://localhost:3306/garima";
		String user1 = "root";
		String password1 = "Garima@1991";
		String sql1 = "select * from places";
		Connection con1 = DriverManager.getConnection(url1, user1, password1);
		Statement st1=con.createStatement();
		ResultSet rs1 =st.executeQuery(sql);
		while (rs1.next()) {
			String destination=rs1.getString("destination");
		%>
		<option value="<%=destination%>" />
		<%
		}
		rs.close();
		con.close();
		rs1.close();
		con1.close();
		%>
	</datalist>
	<p>
		Destination: <input type="text" name ="destination" list="destination" required/>
    </p>	
    
    
		<h2>ENTER YOUR DETAILS</h2>
		<%
		int count = Integer.parseInt(request.getParameter("no of persons"));
		for (int i = 1; i <= count; i++) {
		%>		
		Passenger Name <%=i %> : <input type="text" name="fullname" required> </br> </br>
		 
		Aadhar UID <%=i %> : <input type="number" name="uid" required></br> </br>
		
		Phone Number <%=i %> : <input type="number" name="phone" required> </br> </br> 
		
		Age <%=i %> : <input type="number" name="age" required></br></br>
		-----------------------------------------------------------------------</br></br>
		<%
		}
		%>
		<input type="submit" value="Book Ticket"></br></br>
	</form>
	
	
	<style>
body {
	background-image: url("https://www.flightnetwork.com/system/image/open_graph_default_image.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style> 

</body>
</html>