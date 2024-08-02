<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Book ticket</title>
</head>
<body class="elements-page">
	<%@include file="customerheader.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Customer</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div> 
	<form action="">
		<div class="col-12">
			<label>E-mail</label>
			<input type ="email" name="mail">
		</div>
		<div class="col-12">
			<label>Theater I'd</label>
			<input type ="theaterid" name="theaterid" required>
		</div>
		<div class="col-12">
			<label>Movie I'd</label>
			<input type ="movieid" name="movieid">
		</div>
		
		<div class="col-12">
			<label>Seats Required</label>
			<input type ="number" name="seats">
		</div>
		<div class="col-12">
			<select name="show"  required>
				<option value="Showtime">Show Time</option>
				<option value="morning">Morning Show</option>
				<option value="matnie">Matnie</option>
				<option value="ss">Second Show</option>
				<option value="nightshow">Night Show</option>
			</select>
		</div>
		
		 <div class="row">
                <div class="col-12">
                    <div class="event-tickets">
                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title">Silver Ticket</h3>

                                <span class="mt-2 mt-lg-0">Basic Entry</span>

                                <div class="ticket-price mt-3 ">
                                    $89
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->

                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    
                                </div><!-- number-of-tickets -->

                                <div class="clear-ticket-count">Clear</div>
                            </div><!-- flex -->

                            <input type="submit" name="" value="Buy" class="btn mt-2 mb-2 mt-lg-0 mb-lg-0"><!-- btn -->
                        </div><!-- ticket-row -->
                       
                    </div><!-- event-tickets -->
                </div><!-- col-12 -->
            </div>
	</form>
</body>
</html>