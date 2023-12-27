package com.unique.registration;
import java.io.IOException;

import java.io.PrintWriter;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
//@WebServlet("/book")
public class Roombook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String rtype=request.getParameter("roomtype");
		String date=request.getParameter("date");
		String person=request.getParameter("person");
		String umobile=request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/loginsystem?useSSL=false", "root","S@n12345");
//			PreparedStatement pst = con.prepareStatement("insert into userentry(rtype, date, person)values(?,?,?)");
			PreparedStatement pst = con.prepareStatement("UPDATE userentry SET rtype = '"+rtype+"', date = '"+date+"', person = '"+person+"' WHERE umobile = '"+umobile+"'");
			pst.setString(1, rtype);
			pst.setString(2, date);
			pst.setString(3, person);
//			pst.setString(4, umobile);
			
			int rowcount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("room.jsp");
			if(rowcount>0) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("room.jsp");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
