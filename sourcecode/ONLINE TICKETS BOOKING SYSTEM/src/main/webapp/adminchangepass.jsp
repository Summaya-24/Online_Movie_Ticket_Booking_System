<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	    <%@ include file ="head.jsp" %>
</head>
<body  class="elements-page">
	<%@include file="adminheader.jsp"%>
	
		 <div class="cppage-header">
        <div class="container" >
            <div class="row">
                <div class="col-12">
                    <div class="entry-header" >
                        <h2 class="entry-title"style="color:darkwhite">Change Password</h2>

                        
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
    
    <div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
    
	<div class="col-12 col-md-6">
	<form action="adminchangepassbknd.jsp" method="post" style="color:black">
	
	 <div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <div class="entry-content">
	
	<div class=" mb-3">
	<%String mail=(String)session.getAttribute("mail"); %>
			<label>E-mail</label>
		<input type="email" name="mail" value="<%=mail %>" readonly>
	</div>
	
	<div class=" mb-3">
	<label>Old password</label>
	<input type="password" name="pass" required>
	</div>
	
	<div class="mb-3">
	<label>New Password</label>
	<input type="password" name="Npass" required>
	</div>
	
	<input type="submit" class="btn btn-success" name="LOGIN">
	</div>
	
	   
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