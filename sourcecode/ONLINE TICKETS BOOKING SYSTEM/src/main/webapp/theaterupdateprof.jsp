<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Update</title>
</head>
<body class="elements-page">
	<%@include file="theaterheader.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Theater</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Update profile</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div> 
<%@include file="connectdb.jsp" %> 
	<form action="theaterupdateprofback.jsp" method="post">
	<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
            
		<%
		
		try{
			String m=(String)session.getAttribute("mail");
			
			PreparedStatement ps=con.prepareStatement("select * from theaters where mail=?");
			ps.setString(1,m);
			
			rs=ps.executeQuery();
			
			while(rs.next()){
				//out.println("hsdbc");
				%>
				<div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <div class="entry-content" style="color:black">
                                 
				<div class="col-12 md-5">
				<label><i>Theater i'd : </i></label>
				<input type="number"  class="mb-3" name="sno" readonly value="<%=rs.getInt(1)%>"><br>
				
				<label><i>Theater E-mail : </i></label>
				<input type="email" class="mb-3" name="mail" readonly value="<%=m%>"><br>
				
				<label><i> Theater Name : </i></label>
					<input type="text"  class="mb-3" name="title" value="<%=rs.getString(2)%>"><br>
					
					<label><i>Address : </i></label>
					<input type="text" class="mb-3" name="address" value="<%=rs.getString(3)%>"><br>
					
					<label><i>City : </i></label>
					<input type="text" class="mb-3" name="city" value="<%=rs.getString(4)%>"><br>
					
					<label><i>Password : </i></label>
					<input type="text" class="mb-3" name="password" value="<%=rs.getString(6)%>"><br>
					
					</div>
					  </div><!-- entry-content -->
                        </div>
                    </div>
				<%
			}
			
		} catch(Exception e){
			e.printStackTrace();
		}
		
		%>
		
		
		</div>
                    </div>
                    </div>
                    </div>
                    <input type="submit" class=" col-4 mb-3 btn btn-info " />
		  
	</form>
	<%@include file="footer.jsp"%>
	<%@include file="script.jsp" %>
</body>
</html>