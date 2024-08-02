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
	int Sno=(Integer)session.getAttribute("Sno");
	
	PreparedStatement ps = con.prepareStatement("delete from customer where Sno=?");
	ps.setInt(1,Sno);
	
	int n = ps.executeUpdate();
	 if(n==1){
	    	
				session.invalidate();
				response.sendRedirect("customerlogin.jsp");
			
	    }
	    else{
	    	%>
	    	<jsp:forward page="customerprofilep.jsp"/>
	    	<%
	    }
	%>
</body>
</html>