package com.unique.registration;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class RoomEx extends HttpServlet {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = -8626010335495087707L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException
	{
		

		String rtype=request.getParameter("roomtype");
		String date=request.getParameter("date");
		String person=request.getParameter("person");
		String umobile=request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
	
		try
		{
			Connection connect=Data.Connecttodatabase();
			Statement st=connect.createStatement();
//			String query="insert into room values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
			String query = "UPDATE userentry SET rtype = '"+rtype+"', date = '"+date+"', person = '"+person+"' WHERE umobile = '"+umobile+"'";
			st.executeUpdate(query);
			
			int rowcount = st.executeUpdate(query);
			dispatcher = request.getRequestDispatcher("room.jsp");
			if(rowcount>0) {
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("room.jsp");
			}
			else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
//			response.getWriter().println(" Room Booking is  successfully done!!!");
			System.out.println(" congrates! Booking is successfully Done");
			st.close();
			connect.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}


}
