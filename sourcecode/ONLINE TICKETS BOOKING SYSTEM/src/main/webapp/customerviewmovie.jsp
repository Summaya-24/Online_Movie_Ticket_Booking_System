<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="blog-page">
	 <%@include file="customerheader.jsp" %>
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Movies</i></h2>
                        
                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">All Movies</a></li>
                            <li>info</li>
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
             		
             		
             		int id=Integer.parseInt(request.getParameter("id"));
             		PreparedStatement ps=con.prepareStatement("select * from addmovie where tid=?");
             		ps.setInt(1,id);
             		rs=ps.executeQuery();
             		int count=0;
             		while(rs.next()){
             			count++;
             			%>
             			
             			<form action="">
             			
             			</form>
             			
             			
             			 <div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <figure class="featured-image">
                                 <a > <img src="viewmovieimage.jsp?id=<%=rs.getInt(1) %>" style="height:400px;width:600px" alt="customer profile pic error"> </a>
                             </figure><!-- featured-image -->
                             <div class="entry-content" style="color:black">
                                 <div class="entry-header">
                                     <h5><i><%=rs.getInt(2) %></i></h5>
                                 </div><!-- entry-header -->

                                 
                                 		<div>
			                                <h3><a ><%=rs.getString(3)%></a></h3>
			                            </div>
			                            
			                          <div>
			                                <h6><a >Movie I'd : <%=rs.getInt(1)%></a></h6>
			                            </div>
			                           
			                            <div>
			                             	<a href="theater.jsp?title=<%=rs.getString(3)%>&id=<%=rs.getInt(2) %>"  class="btn btn-success" >Book Ticket</a>
			                            </div> 
                            
                          </div><!-- entry-content -->
                        </div>
                    </div>
			                            
			                            
			                            <%	
             		}
             		if(count==0){
             			%>
             			<h3>No Movies Found</h3>
             			<%
             		}
	             	}
             catch(Exception e){
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