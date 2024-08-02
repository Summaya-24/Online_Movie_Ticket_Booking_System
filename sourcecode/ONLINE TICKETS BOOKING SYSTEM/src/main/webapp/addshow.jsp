<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="elements-page">
	<%@include file="theaterheader.jsp" %>
	 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Theater Home</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header --> 
    
    <%@ include file="connectdb.jsp" %>
    <%
    try{
    	int id=Integer.parseInt(request.getParameter("id"));
    	PreparedStatement ps=con.prepareStatement(" select * from addmovie where mid=?");
    	ps.setInt(1,id);
 
    	rs=ps.executeQuery();
    	int count=0;
    	while(rs.next()){
    		count++;
    		%>
    		
             <div class="main-content">
			       	    <div class="container">
			            <div class="last-news">
						 <div class="row blog-list-page">
			                    <div class="col-12 col-md-6 single-blog-content">
			                        <div class="blog-content">
			                            
			                            <div class="entry-content">
			                            <form action="addshowback.jsp" method="post">
			                                <div class="entry-header">
			                                    <input type="text"  class="col-8 md-5 mb-4" value="<%=rs.getString(3) %>" name="title" readonly>
			                                </div><!-- entry-header -->
											
										
			                               
			                                <div class="col-12 md-5 mb-3">
									    		<label><i>Movie I'd</i></label>
									    		<input type="number"  value="<%=id %>" name="mid" readonly>
									    	</div>
									    		
									    	<div class="col-12 md-5 mb-4">
									    		<label><i>Theater I'd</i></label>
									    		<input type="number" name="tid" value="<%=rs.getInt(2)%>" readonly >
									    	</div>
									    	
									    	<div class="col-12 md-5 mb-4">
									    		<label><i>Date</i></label>
									    		<input type="Date" name="dt"  required  >
									    	</div>
									    	
									    	<div class="col-12 md-5 mb-4">
									    		<label>Show Time</label>
									    		<select name="slot" required>
										         	<option value="-1"> show time</option>
										         	<option value="ms">Morning Show</option>
										         	<option value="mat">Matnie</option>
										         	<option value="fst">First Show</option>
										         	<option value="scnd">Second Show</option>
										         	
         										</select>
									    	</div>
									    	<div class="col-12 md-5 mb-4">
									    	<input type="Submit" name="done">
									    		</div>
									    		
									    	</form>
			   </div><!-- entry-content -->
	  		</div>
		  </div><!-- col-6 -->
	 </div><!-- blog-list-page -->
</div>
</div>
</div>
    	
    	<%
    	}
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    %>
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>