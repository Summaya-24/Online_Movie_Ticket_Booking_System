<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Update</title>
</head>
<body class="elements-page">
	<%@include file="customerheader.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Customer</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div> 
<%@include file="connectdb.jsp" %> 
	<form action="customerupdateprofback.jsp" method="post">
	 <div class="main-content">
	<div class="container">
    <div class="last-news">
	
		<%
			//int Sno=Integer.parseInt(request.getParameter("Sno"));
		int Sno=(Integer)session.getAttribute("Sno");
		try{
			
			PreparedStatement ps=con.prepareStatement("select * from customer where Sno=?");
			ps.setInt(1,Sno);
			
			rs=ps.executeQuery();
			
			while(rs.next()){
				%>
				
				
				<input type="number"  class="mb-2" name="Sno" readonly value="<%=Sno%>"><br>
				<input type="email" class="mb-2" name="mail" readonly value="<%=rs.getString(9)%>"><br>
					<input type="text"  class="mb-2" name="fname" value="<%=rs.getString(2)%>"><br>
					<input type="text" class="mb-2" name="lname" value="<%=rs.getString(3)%>"><br>
					<input type="date" class="mb-2" name="dob" value="<%=rs.getDate(4)%>"><br>
					<input type="text" class="mb-2" name="address" value="<%=rs.getString(5)%>"><br>
					<input type="text" class="mb-2" name="city" value="<%=rs.getString(6)%>"><br>
					<input type="number"  class="mb-2" name="pin" value="<%=rs.getLong(7)%>"><br>
					<input type="number"  class=" mb-2"name="cell" value="<%=rs.getLong(8)%>"><br>
			  
				<%
			}
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		%>
		</div>
		<input type="submit" class="btn btn-info " />
	
</div>
</div>
	
	</form>
	<%@include file="footer.jsp"%>
	<%@include file="script.jsp" %>
</body>
</html>