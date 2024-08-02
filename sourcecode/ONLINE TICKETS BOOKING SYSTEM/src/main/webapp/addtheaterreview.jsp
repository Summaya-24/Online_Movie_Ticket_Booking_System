<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Add Review</title>
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
<div class="main-content " >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
             
	<%@include file="connectdb.jsp" %>
	
	
	<form action="addtheaterreviewback.jsp"  method="post">
		<div class="col-12 md-5 mb-5">
		<%
		String mail=(String)session.getAttribute("email");
		String temail=request.getParameter("temail");
		
		%>
			<label>Customer Email</label>
			<input type="email" value="<%=mail%>"  name="cemail">
		</div>
		<div class="col-12 md-5 mb-5">
		
			<label>Theater Mail</label>
			<input type="email" readonly name="temail" value="<%=temail%>">
		</div>
		
		<div class="col-12 md-5 mb-5">
			<label>Review</label>
			<input type="text" name="review">
		</div>
		<div class="col-12 md-5 mb-5">
			<label>Rating</label>
			<select name="rating" class="form-control">
				<option value="-1"></option>
				<option value="5">5</option>
				<option value="4">4</option>
				<option value="3">3</option>
				<option value="2">2</option>
				<option value="1">1</option>
				
			</select>
		</div>
		<div class="col-12 md-5 mb-5">
			<input type="submit" value="submit">
		</div>
	</form>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>