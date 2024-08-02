<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Change</title>
</head>
<body>
	<%@include file="connectdb.jsp" %>
	<%
	try{
		String mail=request.getParameter("mail");
		String pasword=request.getParameter("pasword");
		String newpass=request.getParameter("newpass");
		
		PreparedStatement ps=con.prepareStatement("select * from customer where mail=? and pasword=?");
		ps.setString(1,mail);
		ps.setString(2,newpass);
		rs=ps.executeQuery();
		int count=0;
		while(rs.next()){
			count++;
				%>
				<script >alert("Entered Password is Same as Old Password")</script>
				<jsp:include page="customerchangepass.jsp"></jsp:include>
				<%
		}
		if(count==0){
			PreparedStatement psd=con.prepareStatement("update customer set pasword=? where mail=? and pasword=?");
			psd.setString(1,pasword);
			psd.setString(2,mail);
			psd.setString(3,newpass);
			int rsd=psd.executeUpdate();
			try{
			if(rsd>0){
				%>
				<script>alert("Your Password was Successfully Updated... ")</script>
				<jsp:include page="customerlogin.jsp"></jsp:include>
				<%
			}
			else{
				%>
				<script>alert("Passsword Change was Unsuccessfull..")</script>
				<jsp:include page="customerchangepass.jsp"></jsp:include>
				<%
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}
		
		}
		catch(Exception e){
		e.printStackTrace();
	}
	
	%>
</body>
</html>