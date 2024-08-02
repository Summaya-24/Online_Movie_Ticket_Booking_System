<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="elements-page">
	<%@include file="theaterheader.jsp" %>
	 <div class="cppage-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Password Change</i></h2>

                        
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>>
	
	<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
	
	<form action="theaterchangepassbknd.jsp" style="color:black">
	<!-- SESSION  -->
	
	<div class="col-12 col-md-6 single-blog-content mb-3">
                         <div class="blog-content">
                             <div class="entry-content">
                                 
	
	<div class=" col-12 mb-3">
		<% String mail=(String)session.getAttribute("mail");%>
		<label>E-mail</label>
		<input type="email" name="mail"  value ="<%=mail%>"readonly>
	</div>
	
	<div class=" col-12 mb-3">
		<label>Old_Password</label>
		<input type="password" name="pasword" required>
	</div>
	<div class=" col-12 mb-3">
		<label>New_Password</label>
		<input type="password" name="newpassword" class="mb-3" required>
	</div>
	<input type="submit" class="btn btn-info col-6 mb-3">
	
	 </div><!-- entry-content -->
                        </div>
                    </div>
	
	</form>
	  </div>
                    </div>
                    </div>
                    </div>
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>


</body>
</html>