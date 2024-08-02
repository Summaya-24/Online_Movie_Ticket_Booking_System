<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body  class="blog-page">
	 <%@include file="customerheader.jsp" %>
	 
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Customer</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">My Profile</a></li>
                            <li>info</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	
              <%@include file="connectdb.jsp" %> 
                         
				<% 		
					String mail=(String)session.getAttribute("email");
						//int Sno=(Integer)session.getAttribute("Sno");
					try{
						
						
						
						PreparedStatement ps=con.prepareStatement("select * from customer where mail=?");
						ps.setString(1,mail);
						rs=ps.executeQuery();
						while(rs.next()){
						
						%>
						
						<div class="main-content">
			       		 <div class="container">
			            <div class="last-news">
						 <div class="row blog-list-page">
			                    <div class="col-12 col-md-6 single-blog-content">
			                        <div class="blog-content">
			                            <figure class="featured-image">
			                                <a href="#"> <img src="customerimageconnect.jsp?id=<%=rs.getInt(1) %>" style="height:100%;width:100%" alt="customer profile pic error"> </a>
			                            </figure><!-- featured-image -->
					
			                           

			                            <div class="entry-content" style="color:black">
			                                <div class="entry-header">
			                                    <h2><i><%=rs.getString(2) %></i></h2>
			                                </div><!-- entry-header -->

			                                <div class="entry-meta">
			                                    <span class="author-name"><a >Customer</a></span>
			                                    <span class="space">|</span>
			                                    <span class="comments-count"><a >Profile</a></span>
			                                </div><!-- entry-meta -->
			                                
			                                		
													<div>
						                                <a >Name: <%=rs.getString(2) %></a>
						                              	<a ><%=rs.getString(3)%></a>
						                            </div><!--Address box-link-date -->
																
													<div>
						                                <a >DoB: <%=rs.getDate(4) %></a>
						                            </div><!-- box-link-date -->
						                            
						                            <div>
						                                <a >Address: <%=rs.getString(5) %></a>
						                            </div><!--Address box-link-date -->
						                            
						                             <div>
						                                <a>City: <%=rs.getString(6) %></a>
						                            </div><!-- City box-link-date -->
						                            
						                             <div>
						                                <a>Pin: <%=rs.getLong(7) %></a>
						                            </div><!-- City box-link-date -->
						                            
			                            			<div>
						                                <a>Cell: <%=rs.getLong(8) %></a>
						                            </div><!-- City box-link-date -->
			                            			
			                            			 <div>
			                            			 	<label>e-mail:</label>
						                                <a><%=rs.getString(9) %></a>
						                            </div><!-- City box-link-date -->
			                            			
			                            
			                                <div class="entry-description">
			                                   <a href="customerupdateprof.jsp" class="btn btn-success gradient flex justify-content-center align-items-center mr-10 mb-2">Update</a>
			                    				<a href="customerdeleteprof.jsp" class="btn btn-danger gradient flex justify-content-center align-items-center ml-10" onclick="return confirm('Do You Want to Delete?')">Delete</a>
			                  				  
			                                
			                                </div><!-- entry-description -->
			                            </div><!-- entry-content -->
			                        </div>
			                    </div><!-- col-6 -->
			                    
			                    
			                </div><!-- blog-list-page -->
</div>
</div>
</div>

			    <!-- main-content -->	
						<%	
							}
						}
				
						catch(Exception e)
							{
								e.printStackTrace();
							}
				%>
				
     

   <%@include file ="script.jsp" %>
</body>
</html>