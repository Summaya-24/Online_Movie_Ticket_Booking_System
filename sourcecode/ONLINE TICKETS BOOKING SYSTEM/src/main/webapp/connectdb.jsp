<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.oreilly.servlet.*,java.util.Arrays,java.sql.Date,java.sql.Time,java.util.*,java.io.*"%>

	<% 
							Connection con=null;
							ResultSet rs=null;
							Statement st=null;
							Class.forName("com.mysql.cj.jdbc.Driver");
							con =DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
							%>						
	
