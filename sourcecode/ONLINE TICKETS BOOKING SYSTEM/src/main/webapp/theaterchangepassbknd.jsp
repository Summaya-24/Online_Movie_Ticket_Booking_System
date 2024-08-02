<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	String mail=request.getParameter("mail");
	String pasword=request.getParameter("pasword");
	String newpass =request.getParameter("newpass");
	PreparedStatement ps=con.prepareStatement("select * from theaters where mail=? and pasword=?");
	ps.setString(1,mail);
	ps.setString(2,newpass);
	rs=ps.executeQuery();
	int count=0;
	while(rs.next()){
		count++;
		%>
		<script>alert("Entered Password is Same as Old Password")</script>
		<jsp:include page="theaterchangepass.jsp"></jsp:include>
		<%
	}
	
	if(count==0){
		try{
			PreparedStatement pss = con.prepareStatement("Update theaters set pasword=? where mail=? and pasword=?");
			pss.setString(1,newpass);
			pss.setString(2,mail);
			pss.setString(3,pasword);
			int rss=pss.executeUpdate();
			if(rss>0){
				%>
				<script>alert("Password Updated Successfully")</script>
				<jsp:include page="theaterlogin.jsp"></jsp:include>
				<%
			}
			else{
				%>
				<script>alert("password update was unsuccessfull")</script>
				<jsp:include page="theaterchangepass.jsp"></jsp:include>
				<%
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	}catch(Exception e){
		e.printStackTrace();
	}

%>
</body>
</html>