<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body Align="center" class="tickets-page" >
	<%@include file="theaterheader.jsp" %>
	<div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Theater Registration</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs --><br>
                       
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->
					<h1 Align="center" style="color:black"><i>Register </i></h1>
					<h2 Align="center" style="color:black"><i>Here to Start your Journey</i></h2>
                <div class="contact-form">
                <form   enctype ="multipart/form-data"action="theaterregisterbknd.jsp"  style="color:black"  onsubmit="return verify()" method="post">
                    <div class="row form-group">
                        <div class="col-7 col-md-3">
                
                        	<label>Theater</label>
                            <input type="text" class="form-control" name="title" required>
                        
                        <label>Address</label>
                        
                            <textarea name="address" class="form-control" rows="8" cols="50"  required></textarea>
                        
                        	<label for="city">City</label>
                            <input type="text" class="form-control col-12 mb-3" name="city"required>
                        
						 <label>Mail</label><br>
                            <input type="email" name="mail" required>
                        <div>
						  <label>Password</label>
                            <input type="password" class="col-12 mb-3" name="password"required>
                       </div>
                        <input type="file" name="logo" accept=".png,.jpeg,.jpg" class="form-control mb-3"/>
                 
                        </div>
                        </div>
                       <!-- <div class="col-12 submit flex justify-content-center">
                            <button ><a href="bregs.jsp">REGISTER</a></button>
                        </div>-->
                        <input type="submit" class="btn btn-primary" value="submit"/>
</form>
                    </div><!-- row -->
                <!-- container -->
    <%@include file="footer.jsp" %>
    <%@include file="script.jsp" %>
</body>
</html>