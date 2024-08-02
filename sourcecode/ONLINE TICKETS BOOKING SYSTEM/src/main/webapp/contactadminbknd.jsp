<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="connectdb.jsp" %>
	<% 
	String name=request.getParameter("name");
	String mail=request.getParameter("mail");
	String sub=request.getParameter("sub");
	String msg=request.getParameter("msg");
	
	try{
		PreparedStatement ps=con.prepareStatement("insert into con (name,mail,sub,msg)values(?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,mail);
			ps.setString(3,sub);
			ps.setString(4,msg);
			int rows=ps.executeUpdate();
			
			if(rows>0){
				%>
				<script>alert("Message sent")</script>
				<jsp:include page="contactadmin.jsp"></jsp:include>
				<%
			}
			else{
				%>
				<script>alert("Failed to Send Message")</script>
				<jsp:include page="contactadmin.jsp"></jsp:include>
				<%
			}
			
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
			%>
			  <%@include file ="script.jsp" %>
</body>
</html>