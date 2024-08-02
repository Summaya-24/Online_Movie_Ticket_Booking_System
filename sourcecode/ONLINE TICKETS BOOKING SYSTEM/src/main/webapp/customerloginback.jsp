<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
</head>
<body>
<%@include file="connectdb.jsp" %> 
	<% 
		
	
	String email=request.getParameter("mail");
	String pass=request.getParameter("pasword");	
	String accept="accepted";
	String reject="rejected";
	try{
		
		PreparedStatement ps=con.prepareStatement("select * from customer where mail=? and pasword=?");
	
	ps.setString(1,email);
	ps.setString(2,pass);
	 rs=ps.executeQuery();
	
	if(rs.next())
	{	
		int Sno=rs.getInt(1);
		String status=rs.getString(11);
		if(status.equals(accept)){
			
			
			session.setAttribute("email",email);
			session.setAttribute("Sno",Sno);
			
		
		%>
		<script>alert("Login Successful")</script>
		<jsp:include page="customerhome.jsp"></jsp:include>
		<%
		}
		else if(status.equals(reject)){
			%>
			<script>alert("Your Account was Rejected by Admin")</script>
			<jsp:include page="customerlogin.jsp"></jsp:include>
			<% 
		}
		else{
			%>
			<script>alert("On hold  Please wait untill account is Accepted")</script>
			<jsp:include page="customerlogin.jsp"></jsp:include>
			<% 
		}
		
	}
	else {
		%>
		<script>alert("invalid user details!!")</script>
		<jsp:include page="customerlogin.jsp"></jsp:include><% 
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>