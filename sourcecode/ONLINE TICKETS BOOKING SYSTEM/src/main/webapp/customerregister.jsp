<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body Align="center" style="color: black"class="tickets-page" >
	<%@include file="header.jsp" %>
	<div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Customer Registration</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs --><br>
                       
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->
					<h1 Align="center"><i>Register </i></h1>
					<h2 Align="center"><i>Here to Start your Journey</i></h2>
                <div >
                <form   enctype ="multipart/form-data"action="customerregisterbknd.jsp" onsubmit="return verify()" method="post">
                    <div class="form-group">
                        <div class="col-12 col-md-3">
                
                        	<label>Firstname</label>
                            <input type="text" class="form-control" name="fname" required>
                        
                        <label>Lastname</label>
                            <input type="text" class="form-control fa" name="lname" placeholder="lastname"required>
                       
                        <label>Dob</label>
                            <input type="date" class="form-control" name="dob" required>
                        
                            <textarea name="address" class="form-control" rows="8" cols="50" placeholder="Address" required></textarea>
                        
                        	<label for="city">City</label>
                            <input type="text" class="form-control" name="city"required>
                        
						 <label>Pincode</label>
                            <input type="number" name="pin"required>
                        
						 <label>mobilenumber</label>
                            <input type="number" name="cell"required>
                       
                        <input type="file" name="filename" accept=".png,.jpeg,.jpg" class="form-control mb-3"/>
                        
						 <label>mail</label>
                            <input type="email" name="mail"required>
                        
						 <label>Password</label>
                            <input type="password" name="pasword"required>
                        </div>
                        </div>
                       <!-- <div class="col-12 submit flex justify-content-center">
                            <button ><a href="bregs.jsp">REGISTER</a></button>
                        </div>-->
                        <input type="submit" value="submit"/>
</form>
                    </div><!-- row -->
                <!-- container -->
    <%@include file="footer.jsp" %>
    <%@include file="script.jsp" %>
</body>
</html>