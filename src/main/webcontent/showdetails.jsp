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
<title>Insert title here</title>
</head>
<body>
<div align="center"><h1>FLYAWAY</h1></div>
<div align="center"><h1>An Online Booking Portal</h1></div><br><br>


<form action="payment.jsp" method="post"> 
	No of Persons <input type="number" name="no of persons" required></br> </br>
 	<h1>Payment Details :</h1>
	Debit card Number : <input type="number" required="required"></br>
	</br> Expiry Date : <input type="number" required="required"></br>
	</br> CVV : <input type="number" required="required"></br>
	</br> <input type="submit" value="submit" ></br>
	</br>
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