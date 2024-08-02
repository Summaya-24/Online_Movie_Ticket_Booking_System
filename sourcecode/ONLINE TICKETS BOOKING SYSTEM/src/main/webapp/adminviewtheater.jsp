<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body  class="blog-page">

	 <%@include file="adminheader.jsp" %>
	 
	  <div class="avtheater-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title">Theater Profile</h1>

                       </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header 
	 <div class="main-content">
        <div class="container">
            <div class="last-news">
                <div class="entry-header">
                    <div class="entry-title">
                        <p>JUST THE BEST</p>
                        <h2>Our last news</h2>
                    </div><!-- entry-title -->
                </div>
                  <%@include file="connectdb.jsp" %>       
				<% 
					try{
						
						PreparedStatement ps=con.prepareStatement("select * from theaters");
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
			                                <a href="#"> <img src="displayimagetheater.jsp?id=<%=rs.getInt(1) %>" style="height:100%;width:100%" alt="customer profile pic error"> </a>
			                            </figure><!-- featured-image -->
					
			                           

			                            <div class="entry-content">
			                                <div class="entry-header">
			                                    <h2>  <a ><%=rs.getString(2) %></a></h2>
			                                </div><!-- entry-header -->

			                                <div class="entry-meta">
			                                    <span class="author-name"><a href=""><%=rs.getInt(1) %></a></span>
			                                    <span class="space">|</span>
			                                    <span class="comments-count"><a href=""><%=rs.getString(2) %></a></span>
			                                </div><!-- entry-meta -->
			                            
												 <div>
			                                <a style="color:blue">Address: <%=rs.getString(3) %></a>
			                            </div><!-- box-link-date -->
			                            
												
												 <div>
			                                <a style="color:blue">City: <%=rs.getString(4) %></a>
			                            </div><!-- box-link-date -->
			                            
			                            
												 <div>
			                                <a style="color:blue">E-Mail : <%=rs.getString(5) %></a>
			                            </div><!-- box-link-date -->
			                            
			                                <div class="entry-description" style="color:black">
			                                    <p> Renowned for its intimate setting and exquisite acoustics, it transports audiences to different eras with its meticulously crafted period productions. The <%=rs.getString(2) %> continues to redefine the boundaries of live entertainment, making each visit a journey through time and artistry</p>
			                                     <div>
			                                <a style="color:black"> <i>Status : </i><%=rs.getString(9) %></a>
			                            </div>
			                            
			                             <%
			                            String status=rs.getString(9);
			                            String accept="accepted";
			                            String reject="Rejected";
			                            if(status.equalsIgnoreCase(accept)){
			                            	%>
			                            	<a href="theateraccept@admin.jsp?sno=<%=rs.getInt(1) %>"  onclick="return confirm('Do You Want to Delete ?')" class="btn btn-danger gradient flex justify-content-center align-items-center mr-5">Delete</a>
			                            	<%
			                            }
			                            else if(status.equals(reject)){
			                            	%>
			                            	<a href="theaterdelete@admin.jsp?sno=<%=rs.getInt(1) %>"  onclick="return confirm('Do You Want to Delete ?')" class="btn btn-danger gradient flex justify-content-center align-items-center mr-5">Delete</a>
			                            	<%
			                            }
			                            else{ 
			                            	%>
			                            	<div class="entry-content flex">
		                    				<a href="theateraccept@admin.jsp?sno=<%=rs.getInt(1) %>"  onclick="return confirm('Do You Want to accept ?')" class="btn btn-success gradient flex justify-content-center align-items-center mr-5">Accept</a>
		                    				<a href="theaterreject@admin.jsp?sno=<%=rs.getInt(1) %>" onclick="return confirm('Do You Want to reject ?')"  class="btn btn-danger gradient flex justify-content-center align-items-center ml-5">Reject</a>
		                  				  </div>
		                  				  <%
			                            }
			                            %>
			                            
			                                 
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
   <%@include file="footer.jsp" %>
</body>
</html>