<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body  class="elements-page">
	<%@include file="header.jsp" %>
		 <div class="customerlogin-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title">Customer</h1>

                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->
    <div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
             
	 <form action="customerloginback.jsp" method="post">
	  
                       <div class="form-group text-dark">
                       
                       
                        	<label>E-mail</label>
                            <input type="email" class="form-control" name="mail" placeholder="Your email" required>
                            
            				<label>Password</label>
                            <input type="password"  name="pasword" class="form-control mb-3" placeholder="Password" required>
                        
                            <input type="submit" class="btn btn-primary px-7 py-2 ml-5 mb-3  " value="LOGIN">
                            <a href ="customerregister.jsp" class="btn btn-primary px-7 py-2 mb-3 ml-3">REGISTRATION</a>
                   
                        
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