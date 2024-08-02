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
	int sno=Integer.parseInt(request.getParameter("sno"));
	
	PreparedStatement ps = con.prepareStatement("delete from customer where sno=?");
	ps.setInt(1,sno);
	
	int n = ps.executeUpdate();
	 if(n>0){
	    	%>
	    	<jsp:forward page="adminviewcustomer.jsp"/>
	    	<%
	    }
	    else{
	    	%>
	    	<jsp:forward page="adminviewcustomer.jsp"/>
	    	<%
	    }
	%>
</body>
</html>