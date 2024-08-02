<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <!-- Required meta tags -->
    <%@ include file ="head.jsp" %>
    
</head>
<body class="elements-page">
		<%@include file="header.jsp" %>
		 <div class="contact-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title" style="color: black">Contact</h1>
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
  

<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="col-md-5">
				<form action="contactadminbknd.jsp" method="post" Align="center">
                <div class="form-group text-dark label-left">
                		
                		<div class="text-left">
                        <label>Name:</label>
                        </div>
                            <input type="text" name="name" class="form-control  mb-2"  required placeholder="Your name">
                        <div class="text-left">
                        <label>E-mail</label>
                        </div>
                            <input type="email" name="mail" class="form-control mb-2" required placeholder="Your email">
                        <div class="text-left">
                        <label>Subject</label>
                        </div>
                            <input type="text" name="sub" class="form-control mb-2" required placeholder="Subject">
                        <div class="text-left">
                        <label>Message</label>
                        </div>
                            <textarea name="msg" class="form-control mb-4"  required placeholder="message" ></textarea>
                       

                        <div class="col-12 submit flex  mb-5">
                            <input type="submit" name="submit" value="send message" class="btn btn-info ">
                        </div>

              </div>
             
              
    </form>
    </div>
    </div>
   </div>
   </div>
   
      <%@include file ="script.jsp" %>
      <%@include file="footer.jsp" %>
    </body>
    </html>