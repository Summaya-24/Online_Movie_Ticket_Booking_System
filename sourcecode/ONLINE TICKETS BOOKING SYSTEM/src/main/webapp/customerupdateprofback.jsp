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
	int Sno=(Integer)session.getAttribute("Sno");
	
	String fname=request.getParameter("fname");
	
	String lname=request.getParameter("lname");
	String date=request.getParameter("dob");
	
	Date dob=Date.valueOf(date);
	
	String address=request.getParameter("address");
	
	String city=request.getParameter("city");
	
	long pin=Long.parseLong(request.getParameter("pin"));
	long cell=Long.parseLong(request.getParameter("cell"));
	String mail=request.getParameter("mail");
	String pasword=request.getParameter("pasword");
	
	PreparedStatement ps=con.prepareStatement("update customer set fname=?,lname=?,dob=?,address=?,city=?,pin=?,cell=?,pasword=? where Sno=? ");
	 
	 ps.setString(1,fname);
     ps.setString(2,lname);
     ps.setDate(3,dob);
     ps.setString(4,address);
     ps.setString(5,city);
     ps.setLong(6,pin);
     ps.setLong(7,cell);
     ps.setString(8,pasword);
     ps.setInt(9,Sno);
     int ss =ps.executeUpdate();
     if(ss>0){
    		%><script>alert("Data updated..")</script>
       	 <jsp:include page="customerprofilep.jsp"></jsp:include>
       	 <% 
       }else{
       	%>
       	<script>alert("Update failed!!")</script>
      	 <jsp:include page="customerprofilep.jsp"></jsp:include>
      	 <%
       }
        
     }catch(Exception e){
   	e.printStackTrace();
   }
    		%>
	
</body>
</html>