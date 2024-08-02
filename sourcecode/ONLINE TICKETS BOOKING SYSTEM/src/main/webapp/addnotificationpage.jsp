<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body  class="elements-page">
	<%@ include file="adminheader.jsp" %>
		 <div class="addn-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title">Add Notification</h1>

                         </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">

<form action="addnotificationprocess.jsp" method="post" style="color:black">
<div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <div class="entry-content">


 	 <div class="col-12 col-md-6">
			<label>Title</label>
             <input type="text" name="title" required>
         </div>
         
          <div class="col-12 col-md-6 mb-3">
			<label>Description</label>
             <input type="text" name="descp" required>
         </div>
         
          <div class="col-12 col-md-6 mb-3">
             <input type="submit" class="btn btn-info" name="submit" required>
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