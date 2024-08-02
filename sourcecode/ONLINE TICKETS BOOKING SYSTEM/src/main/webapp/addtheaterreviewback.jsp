<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="connectdb.jsp"%>
<%
	
	String temail=request.getParameter("temail");
	String cemail=request.getParameter("cemail");
	String review=request.getParameter("review");
	String rating=request.getParameter("rating"); 
	
	try{
			PreparedStatement ps=con.prepareStatement("insert into review(temail,cemail,review,rating) values(?,?,?,?)");
			ps.setString(1,temail);
			ps.setString(2,cemail);
			ps.setString(3,review);
			ps.setString(4,rating);
			
			int rows=ps.executeUpdate();
		if(rows>0){
		%>
<!-- 		<script>alert("Cart Added Successfull")</script>
 -->        <jsp:include page="customertheaterreview.jsp"></jsp:include>		
        <%
	}
	else{
		%>
		<script>alert("Add Review Unsuccessfull")</script>
		<jsp:include page="addtheaterreview.jsp"></jsp:include>
		<%
	}
			
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>

</body>
</html>