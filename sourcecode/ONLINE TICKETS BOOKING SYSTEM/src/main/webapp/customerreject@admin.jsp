<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="connectdb.jsp" %>
	<% 
	int Sno=Integer.parseInt(request.getParameter("Sno"));
	String reject="Rejected";
	try{
		PreparedStatement ps=con.prepareStatement("update customer set status=? where Sno=?");
		ps.setString(1,reject);
		ps.setInt(2,Sno);
		int rows=ps.executeUpdate();
		if(rows>0){
			%>
			<script>alert(" Your Profile is Rejected")</script>
			<jsp:include page="adminviewcustomer.jsp"></jsp:include>
			<%
		}
		else{
			%>
			<script >alert("Do Wait Profile is on Hold")</script>
			<jsp:include page="adminviewcustomer.jsp"></jsp:include>
			<%
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>
</body>
</html>