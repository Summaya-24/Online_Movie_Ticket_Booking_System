<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Buy Ticket</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
</head>

<body class="elements-page" style="color:black">
	<%@include file="customerheader.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Tickets</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Buy tickets</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>

   <%@ include file="connectdb.jsp" %>
	
	<div class="contact-form">
	<div class="col-12 col-md-6 single-blog-content">
      <div class="blog-content">
      <div class="entry-content" style="color:black">
    
            <form action="bookings.jsp" style="color: black">
                                 
		<div class="col-12">
			<% String mail=(String)session.getAttribute("email"); %>
			<label> Customer E-mail</label><br>
			<input type ="email" class="mb-3" value="<%=mail %>" name="mail" readonly>
		</div>
		
		<%	
			String tname=request.getParameter("theatername");
			String mname=request.getParameter("title");
			String temp=request.getParameter("date");
			String tmail=request.getParameter("tmail");
			String showtime=request.getParameter("showtime");
			long cost=Long.parseLong(request.getParameter("cost"));
			int tid=Integer.parseInt(request.getParameter("tid"));
/* 	 		out.println("Cost per Ticket : "+cost);
 */		%>
 		<div class="col-12">
				<label>Theater Name :</label><br>
				<input type ="text" class="mb-3" value="<%=tname%>" name="tname" readonly>
		</div>
		<div class="col-12">
				<label>Theater Mail :</label><br>
				<input type ="mail" class="mb-3" value="<%=tmail%>" name="tmail" readonly>
		</div>
		<div class="col-12">
				<label>Movie Name : </label><br>
				<input type ="text" class="mb-3" value="<%=mname%>" name="mname" readonly>
		</div>
		<div class="col-12">
				<label>Show Date : </label><br>
				<input type="date" class="mb-3" value="<%=temp%>" name="date" readonly>
		</div>
		<div class="col-12">
				<label>Show Time : </label><br>
				<input type ="text" class="mb-3" value="<%=showtime%>" name="showtime" readonly>
		</div>
		
		
		<div class="col-12">
				<label>Cost Per Ticket</label><br>
				<input type ="email" class="mb-3" value="<%=cost%>" name="cost" readonly>
		</div>
		
		<div class="col-12">
					
					<input type ="hidden" class="mb-3" value="<%=tid %>" name="tid" readonly>
		        </div>
		<%
			
			String[] seat=request.getParameterValues("seat");
			String seats = "";
			int count =0;
				for(String x:seat){
					seats += x+",";
					count++;
				}
				seats = seats.substring(0,seats.length()-1);
				
/* 				out.println("seats : "+seats);
 */				%>
				<div class="col-12">
					<label>Seat Names</label><br>
					<input type ="text" class="mb-3" value="<%=seats%>" name="seats" readonly>
			    </div>
				<%
/* 				out.println(" &nbsp;&nbsp;&nbsp;&nbsp; booked seats :" + count);
 */				%>
				<div class="col-12">
					<label>Number Of Seats</label><br>
					<input type ="number" class="mb-3" value="<%=count %>" name="count" readonly>
		        </div>
				<%
				long totalcost=count*cost;
/* 				out.println("Total Cost : "+ totalcost);
 */				%>
					<div class="col-12">
						<label>Total Cost</label><br>
						<input type ="number" class="mb-3" value="<%=totalcost %>" name="totalcost" readonly>
				    </div>
                    <div class="col-12">
                         <input type="submit" name="" value="Buy" class="btn btn-primary col-2 mb-5 mr-3"><!-- btn -->
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
