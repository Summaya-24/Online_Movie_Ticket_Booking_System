<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Add show </title>
</head>
<body>
		<%@ include file="connectdb.jsp" %>
		<%
			
				String title=request.getParameter("title");
				
				int mid=Integer.parseInt(request.getParameter("mid"));
				int tid=Integer.parseInt(request.getParameter("tid"));
				String mdate=request.getParameter("dt");
			
				String slot=request.getParameter("slot");
				Date d1=Date.valueOf(mdate);
				
				try{
				PreparedStatement ps=con.prepareStatement("insert into addshow(title,mid,tid,dt,slot) values(?,?,?,?,?)");
				ps.setString(1,title);
				ps.setInt(2,mid);
				ps.setInt(3,tid);
				ps.setDate(4,d1);
				
				ps.setString(5,slot);
				int rows=ps.executeUpdate();
				if(rows>0){
					%>
					<script>alert("data added..")</script>
					<jsp:include page="viewtheater.jsp"></jsp:include>
					<%
				}
				else{
					%>
					<script>alert("Attempt was Unsuccessfullll..")</script>
					<jsp:include page="viewtheater.jsp"></jsp:include>
					<%
				}
						
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
		
		
		
		%>
		
</body>
</html>