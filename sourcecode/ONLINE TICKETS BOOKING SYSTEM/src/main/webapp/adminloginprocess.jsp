<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adminlogin</title>
</head>
<body>
	<%@include file="connectdb.jsp" %>
	<% 
	
		
		
	String mail=request.getParameter("mail");
	String pass=request.getParameter("pass");
	try{

	
	PreparedStatement ps=con.prepareStatement("select * from adminn where mail=? and pass=?");
	ps.setString(1,mail);
	ps.setString(2,pass);
	 rs=ps.executeQuery();
	 int row=0;
	while(rs.next()){
		row++;
	}
	if(row>0){
		session.setAttribute("mail",mail);
		%><jsp:forward page="adminhome.jsp"></jsp:forward><% 
	}
	else{
		%>
		<script>alert("invalid user details!!")</script>
		<jsp:include page="adminlogin.jsp"></jsp:include><% 
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>