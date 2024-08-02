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
		
	//int sno=Integer.parseInt(request.getParameter("sno"));	
	String mail=request.getParameter("mail");
	String pass=request.getParameter("password");
	String accept="accepted";
	String reject="rejected";
	
	//int sno=Integer.parseInt(request.getParameter("sno"));
	try{
		
		PreparedStatement ps=con.prepareStatement("select * from theaters where mail=? and password=?");
	
	ps.setString(1,mail);
	ps.setString(2,pass);
	 rs=ps.executeQuery();
	 
	if(rs.next())
	{	
		session.setAttribute("mail", mail);
		//session.setAttribute("sno",sno);
		String status=rs.getString(9);
		if(status.equals(accept)){
			
			%>
			<script>alert("Theater Login Successfull")</script>
			<jsp:include page="theaterhome.jsp"></jsp:include>
			<% 
		}
		else if (status.equals(reject)){
			%>
			<script>alert("Sorry Your Profile was Rejected")</script>
			<jsp:include page="theaterlogin.jsp"></jsp:include>
			<% 
		}
		else{
			%>
			<script>alert("Your Profile is on Hold Please Wait Until Accepted")</script>
			<jsp:include page="theaterlogin.jsp"></jsp:include>
			<% 
		}
	}
	
	else{
		%>
		<script>alert("Please Enter Appropriate Mail or Password..")</script>
		<jsp:include page="theaterlogin.jsp"></jsp:include><% 
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>