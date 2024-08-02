<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="connectdb.jsp" %>
	<%
	String mail=(String)session.getAttribute("mail");
	
	PreparedStatement ps = con.prepareStatement("delete from theaters where mail=?");
	ps.setString(1,mail);
	
	int n = ps.executeUpdate();
	 if(n==1){
	    	
				session.invalidate();
				response.sendRedirect("theaterlogin.jsp");
			
	    }
	    else{
	    	%>
	    	<jsp:forward page="theaterprofile.jsp"/>
	    	<%
	    }
	%>
</body>
</html>