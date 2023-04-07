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
<%
int count=Integer.parseInt(request.getParameter("no of persons"));
out.println("<h2>"+"Payment of amount " + 5000*count + "/- is successful" +"</h2>");
out.println("<h2>Your booking has been done successfully</h2>");
out.println("<h2>Thanks! for showing interest with us..</h2>");
RequestDispatcher rd = request.getRequestDispatcher("/showdetails.jsp");
rd.include(request, response);
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