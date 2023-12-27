package com.unique.registration;

import java.sql.Connection;
import java.sql.DriverManager;


public class Data {
	public static Connection Connecttodatabase()throws Exception
	{
		String url="jdbc:mysql://localhost:3306/loginsystem?useSSL=false";
		String user="root";
		String password="S@n12345";
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection connect=DriverManager.getConnection(url,user,password);
		return connect;
		
	}


}
