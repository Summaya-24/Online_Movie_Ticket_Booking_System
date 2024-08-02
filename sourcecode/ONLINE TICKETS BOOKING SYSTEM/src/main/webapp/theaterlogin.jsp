<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="tickets-page">
	<%@include file="header.jsp" %>
	
	<div class="theaterlogin-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title"> <i>Theater Login</i></h1>

                       </div><!-- .entry-header -->
                </div><!-- .col-12 -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .page-header -->
    
    <div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
             
	 <form action="theaterloginbknd.jsp" method="post">
	 					<div class="form-group text-dark">
	 					<label>Enter the Email:</label>
                            <input type="email"  class="form-control mb-2" name="mail" placeholder="Your email" required>
               			<label>Enter the Password:</label>
                            <input type="password" class="form-control mb-3"  name="password" placeholder="Password" required>
                        
                            <input type="submit" class="btn btn-primary px-2 py-2 mb-3 " value="LOGIN">
                            <a href ="theaterregister.jsp" class="btn btn-primary px-2 py-2 mb-3 ml-3">REGISTRATION</a>
                   
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