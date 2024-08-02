<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body class="blog-page">
	<%@include file="header.jsp" %>
	
	 <div class="admin-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title" >Admin Login</h1>

                        
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->
   	<div class="main-content" >
       		 <div class="container" >
            <div class="last-news"  >
             <div class="row blog-list-page">
                        <form action="adminloginprocess.jsp"  style="color:black" method="post">
                        <div class="col-12 ml-4">
                        <label><i >E-mail  </i></label>
                            <input type="email" name="mail"  class=" mb-3"placeholder="Your email">
                        </div><!-- col-6 -->

                        <div class="col-12 mb-3">
                        	  <label><i >Password  </i></label>
                            <input type="password" name="pass" placeholder="Password">
                        </div>

                        <div class="col-12 mb-5 submit flex justify-content-center">
                            <input type="submit"  class="btn btn-primary"value="Submit">
                   
                        </div>
                         </form>
						
                    </div><!-- row -->
                </div><!-- contact-form -->
            </div><!-- newsletter-subscribe -->
        </div><!-- main-content -->
    

   	
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>