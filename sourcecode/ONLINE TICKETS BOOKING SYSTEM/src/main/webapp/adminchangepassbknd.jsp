<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>password processing</title>
</head>
<body>
	<%@include file="connectdb.jsp" %>
	<%
	try{
		
		String mail=request.getParameter("mail");
		String pasword=request.getParameter("pass");
		String Npass=request.getParameter("Npass");
		
		PreparedStatement ps=con.prepareStatement("select * from adminn where mail=? AND pass=?");
		ps.setString(1,mail);
		ps.setString(2,Npass);
		rs=ps.executeQuery();
		int count=0;
		while(rs.next()){
			count++;
			%>
			<script>alert("Entered password is same as Old Password")</script>
			<jsp:include page="adminchangepass.jsp"></jsp:include>
			<%
			
		}
		if(count==0)
		{	
	       try{
	    	   
				PreparedStatement psd= con.prepareStatement("Update adminn set pass=? where mail=? AND pass=?");
				psd.setString(1,Npass);
				psd.setString(2,mail);
				psd.setString(3,pasword);
				 int rsd =psd.executeUpdate();
				 if(rsd>0){
					 %>
						<script>alert("Password change sucessfull ")</script>
						<jsp:include page="adminlogin.jsp"></jsp:include>
						<%
				 }
				 else{
					 %>
						<script>alert("Change password unsucessfull")</script>
						<jsp:include page="adminchangepass.jsp"></jsp:include>
						<%
					}
		}
	       catch(Exception e)
				{
					e.printStackTrace();
				}
		
	}
	}
		
	catch(Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>
</html>