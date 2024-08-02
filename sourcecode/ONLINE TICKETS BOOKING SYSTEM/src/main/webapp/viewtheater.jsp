<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="blog-page">
	 <%@include file="theaterheader.jsp" %>
	 
	  <div class="movie-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>View Theaters</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">View   Theater</a></li>
                            
                            <li>  info</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
		<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
	<%@include file="connectdb.jsp" %>
	<%	
		try{
				
				String mail=(String)session.getAttribute("mail");
				PreparedStatement ps=con.prepareStatement("select * from addtheater where mail=?");
				ps.setString(1,mail);
				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count++;
		%>
		
			
                    <div class="col-12 col-md-6 single-blog-content">
                        <div class="blog-content">
                            <figure class="featured-image">
                                <a href="#"> <img src="viewtheaterimage.jsp?id=<%=rs.getInt(1) %>" style="height:100%;width:100%" alt="customer profile pic error"> </a>
                            </figure><!-- featured-image -->
		
                           

                            <div class="entry-content" style="color:black">
                                <div class="entry-header">
                                    <h2><i><%=rs.getString(2) %></i></h2>
                                </div><!-- entry-header -->

                                <div class="entry-meta">
                                    <span class="author-name"><a href="#">#</a></span>
                                    <span class="space">|</span>
                                    <span class="comments-count"><a href="#">#</a></span>
                                </div><!-- entry-meta -->
                                
                                		
										<div>
			                               
			                              	<h6><i>Type: <%=rs.getString(3) %></i></h6>
			                            </div><!--Address box-link-date -->
													
										<div>
			                                <a >Address: <%=rs.getString(4)%></a>
			                            </div><!-- box-link-date -->
			                            
			                            <div>
			                                <a >Contact: <%=rs.getLong(5) %></a>
			                            </div><!--Address box-link-date -->
			                            
			                            
			                             <div>
			                                <a >E-Mail: <%=rs.getString(6) %></a>
			                            </div><!-- City box-link-date -->
			                            
			                             <div>
			                                <a >Capacity: <%=rs.getLong(7) %></a>
			                            </div><!-- City box-link-date -->
			                            
                            			<div>
			                                <a >Sound: <%=rs.getString(8) %></a>
			                            </div><!-- City box-link-date -->
                            			
                            			 <div>
                            			 	
			                                <a>Language: <%=rs.getString(9) %></a>
			                            </div><!-- City box-link-date -->
                            			
                            		
                            			 
                            			 <div>
                            			 	
			                                <a >Genre: <%=rs.getString(10) %></a>
			                            </div><!-- City box-link-date -->
                            			
                            		
                            			 	<div>
			                                <a >Screen: <%=rs.getLong(11) %></a>
			                            </div><!-- City box-link-date -->
                            			 <div>
                            			 	
			                                <a >Vision: <%=rs.getString(12) %></a>
			                            </div>
			                            <div>
			                             	  <a href="addmovie.jsp?id=<%=rs.getInt(1)%>" class="btn btn-success" onclick="return confirm('Do You Want to Add Movie ?')" >Add Movie</a>
                            			 	<a href="viewmovie.jsp?id=<%=rs.getInt(1)%>" class="btn btn-info"onclick="return confirm('Do You Want to View Movie ?')"  >View Movie</a>
			                              
			                            </div> 
                            
                            </div><!-- entry-content -->
                        </div>
                    </div><!-- col-6 -->
                    
                    
                <!-- blog-list-page -->


    <!-- main-content -->	
	<% 
	if(count==0){
		out.println("No Data Found");
	}
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</div>
	</div>
	</div>
	</div>
	
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>