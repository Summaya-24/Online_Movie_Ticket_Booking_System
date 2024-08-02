<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body  class="blog-page">
	 <%@include file="theaterheader.jsp" %>
	 
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Theater Profile</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">My Profile</a></li>
                            <li>info</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
    <div class="main-content">
	<div class="container">
    <div class="last-news">
	<div class="row blog-list-page">
    
	<%@include file="connectdb.jsp" %> 
				<% 		
					String mail=(String)session.getAttribute("mail");
						//int Sno=(Integer)session.getAttribute("sno");
					try{
						
						PreparedStatement ps=con.prepareStatement("select * from theaters where mail=?");
						ps.setString(1,mail);
						rs=ps.executeQuery();
						while(rs.next()){
						
						%>
						
								<div class="col-12 col-md-6 single-blog-content">
			                        <div class="blog-content">
			                            <figure class="featured-image">
			                                <a href="#"> <img src="theaterimageconnect.jsp?sno=<%=rs.getInt(1) %>" style="height:100%;width:100%"alt="customer profile pic error"> </a>
			                            </figure><!-- featured-image -->
					
			                            <div class="entry-content">
			                                <div class="entry-header">
			                                    <h2><i><%=rs.getString(2) %></i></h2>
			                                </div><!-- entry-header -->

			                               
													<div  class="mb-3" style="color:black">
						                                <a>Theater_Name: <%=rs.getString(2) %></a>
						                              	
						                              	
						                            </div>
						                            <div  class="mb-3" style="color:black">
						                            	<a>Address: <%=rs.getString(3)%></a>
						                            </div>
																
													<div  class="mb-3" style="color:black">
						                                <a>City: <%=rs.getString(4) %></a>
						                            </div><!-- box-link-date -->
						                            
						                            <div class="mb-3" style="color:black">
						                                <a>Theater Mail: <%=rs.getString(5) %></a>
						                            </div><!--Address box-link-date -->
						                 <div>			                                
			                                	<a href="theaterupdateprof.jsp" class="btn btn-success gradient flex justify-content-center align-items-center mb-2"onclick="return confirm('Do You Want to Update ?')">Update</a>
			                    				<a href="theaterdeleteprof.jsp" class="btn btn-danger gradient flex justify-content-center align-items-center mb-2" onclick="return confirm('Do You Want to Delete ?')">Delete</a>
			                  				  </div><!-- entry-description -->
			                  				  
			                            </div><!-- entry-content -->
			                        </div>
			                    </div><!-- col-6 -->
			                    
			                    
			                
			    <!-- main-content -->	
						<%	
							}
						}
				
						catch(Exception e)
							{
								e.printStackTrace();
							}
				%>
</div>
</div>
</div>
</div>
				
				
     
	<%@include file="footer.jsp" %>
   <%@include file ="script.jsp" %>
</body>
</html>