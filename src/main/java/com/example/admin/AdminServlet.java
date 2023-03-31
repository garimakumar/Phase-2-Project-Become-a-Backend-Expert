package com.example.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.PreparableStatement;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/garima","root","Garima@1991");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String uname=request.getParameter("username");
			String pass=request.getParameter("password");
			PreparedStatement pst=con.prepareStatement("select username from admin where username=? and password=?");
			pst.setString(1,uname);
			pst.setString(2,pass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
			}
			else
			{
				out.println("<h1>Wrong username or password entered</h1>");
				out.println("<h2><a href='index.jsp'>Try Again</a></h2>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
	}

	
}
