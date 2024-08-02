<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Bookings</title>
</head>
<body style="color:black">
	<%@include file="connectdb.jsp" %>
	<% 
	try{
	String mail=request.getParameter("mail");
	String tname=request.getParameter("tname");
	String mname=request.getParameter("mname");
	String temp1=request.getParameter("date");
	String tmail=request.getParameter("tmail");
	String showtime=request.getParameter("showtime");
	long cost=Long.parseLong(request.getParameter("cost"));
	String seats=request.getParameter("seats");
	int count=Integer.parseInt(request.getParameter("count"));
	long totalcost=Long.parseLong(request.getParameter("totalcost"));
	int tid=Integer.parseInt(request.getParameter("tid"));
	Date date=Date.valueOf(temp1);
	
	PreparedStatement ps=con.prepareStatement("insert into bookings(mail,cost,seats,count,totalcost,tname,mname,showtime,date,tmail,tid)values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,mail);
	ps.setLong(2,cost);
	ps.setString(3,seats);
	ps.setInt(4,count);
	ps.setLong(5,totalcost);
	ps.setString(6,tname);
	ps.setString(7,mname);
	ps.setString(8,showtime);
	ps.setDate(9,date);
	ps.setString(10,tmail);
	ps.setInt(11,tid);
	int rows =ps.executeUpdate();
	
	if(rows>0){
		
		%>
			<script>alert("Ticket Booked Successfully.")</script>
			<jsp:include page="customerviewtheater.jsp"/>
			
		<%
	}
	else{
		%>
		<script>alert("Ticket Was not Booked.")</script>
		<jsp:include page="customerviewtheater.jsp"/>
	<%
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>