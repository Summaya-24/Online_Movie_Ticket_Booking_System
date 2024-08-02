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
	int id=Integer.parseInt(request.getParameter("id"));
	
	PreparedStatement ps = con.prepareStatement("delete from notf where id=?");
	ps.setInt(1,id);
	
	int n = ps.executeUpdate();
	 if(n==1){
	    	%>
	    	<script>alert("Notification deleted..")</script>
	    	<jsp:include page="viewnotifadmin.jsp"></jsp:include>
	    	<%
	    }
	    else{
	    	%>
	    	<script>alert("Delete Notification was Unsuccssfull....")</script>
	    	<jsp:include page="viewnotifadmin.jsp"></jsp:include>
	    	<%
	    }
	%>
</body>
</html>