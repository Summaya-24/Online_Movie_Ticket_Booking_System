<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*,java.sql.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="connectdb.jsp" %> 
	<% 
	try{
	int sno=(Integer)session.getAttribute("sno");
	String mail=request.getParameter("mail");
	String title=request.getParameter("title");
	
	
	
	String address=request.getParameter("address");
	
	String city=request.getParameter("city");
	
		
	String pasword=request.getParameter("pasword");
	
	PreparedStatement ps=con.prepareStatement("update theaters set title=?,address=?,city=?,password=? where mail=? ");
	 
	 ps.setString(1,title);
     ps.setString(2,address);
     ps.setString(3,city);
     ps.setString(4,pasword);
     ps.setString(5,mail);
      int ss =ps.executeUpdate();
     if(ss>0){
    		%><script>alert("Data updated..")</script>
       	 <jsp:include page="theaterprofile.jsp"></jsp:include>
       	 <% 
       }else{
       	%>
       	<script>alert("Update failed!!")</script>
      	 <jsp:include page="theaterprofile.jsp"></jsp:include>
      	 <%
       }
        
     }catch(Exception e){
   	e.printStackTrace();
   }
    		%>
	
</body>
</html>