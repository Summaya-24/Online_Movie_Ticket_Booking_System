<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Change Password</title>
</head>
<body class="elements-page">
	<%@include file="customerheader.jsp" %>
		 <div class="cppage-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Change Password</h2>

                       
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div> 
	 <div class="contact-form">
                    <div class="row">
                    <div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
             
                        <form action="customerchangepassbknd.jsp" style="color:black" method="post">
                         <div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                            <div class="entry-content">
                                 
                        <div class="col-12 mb-3">
                        <%
                        	String email=(String)session.getAttribute("email");
                        %>
                        <label>E-mail</label>
                            <input type="email" name="email" value="<%=email %>" readonly >
                        </div><!-- col-6 -->

                        <div class="col-12">
                        	<label> Old Password</label>
                            <input type="password" name="pasword" placeholder="Password" required>
                        </div>
						<div class="col-12 mb-3">
							<label> New Password</label>
                            <input type="password" name="newpass" placeholder="Password" required>
                        </div>
						
                        <div class="col-12 submit flex justify-content-center">
                            <input type="submit" value="Submit" class="btn btn-success" required>
                   
                        </div>
                         </div><!-- entry-content -->
                        </div>
                    </div>
                     </div>
                    </div>
                    </div>
                    </div>
                         </form>

                    </div><!-- row -->
                </div>
                
                <%@include file="footer.jsp" %>
		<%@include file="script.jsp" %>
</body>
</html>