<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="elements-page" >
	<%@include file="theaterheader.jsp"%>
	<%@include file="connectdb.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Add movie</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Theater</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	
	 <form   enctype ="multipart/form-data"action="addmovieprocess.jsp" style="color:black" onsubmit="return verify()" method="post">
                    <div class="row form-group">
                        <div class="col-12 col-md-3">
	<div>
	<%
	int id=Integer.parseInt(request.getParameter("id"));
	%>
	<label>Theater I'd</label>
		<input type="number" name="tid" value="<%=id%>" readonly required>
		</div>
	
		<div>
		
				<label>Movie Banner</label>
                <input type="file" name="banner" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
                 
          </div>
          <div>
				<label>Title</label>
				<input type="text" name="title" required>
		</div>
		
		<div>
				<label>Language</label>
				<input type="text" name="lang" required>
		</div>
		
		<div>
				<label>Show Time</label>
									    		<select name="showw" required>
										         	<option value="-1">-- Please Select Show --</option>
										         	<option value="Morning Show">Morning Show</option>
										         	<option value="Matnie">Matnie</option>
										         	<option value="First Show">First Show</option>
										         	<option value="Second Show">Second Show</option>
										         	
         										</select>
		</div>
		
		<div>
				<label>Duration</label>
				<input type="time" name="duration" required>
		</div>
		<div>
				<label>Date</label>
				<input type="date" name="date" required>
		</div>
		<div>
				<label>About</label>
				<input type="text" name="about" required>
		</div>
		<div>
				<label>Type of Movie</label>
				<input type="text" name="tom" required>
		</div>
		<div>
				<label>Cast</label>
				<input type="text" name="cast" required>
		</div>
		<div>
				<label>Crew</label>
				<input type="text" name="crew"required>
		</div>
		
		<div>
				<label>Cost per 1 Ticket</label>
				<input type="number" name="cost"required>
		</div>
		
		<div>
				
				<input type="submit" class="btn btn-success" name="add">
				<a href="viewtheater.jsp"  class="btn btn-info" >Back</a>
		</div>
		</div>
		</div>
		
	</form>
	
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>