<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="blog-page">
	 <%@include file="theaterheader.jsp" %>
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Theater</i></h2>
                        
                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">View Theater</a></li>
                            <li>info</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	
	<div class="main-content" >
       		 <div class="container" style="color:black">
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
             			 <div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <figure class="featured-image">
                                 <a > <img src="viewmovieimage.jsp?id=<%=rs.getInt(1) %>" alt="customer profile pic error"> </a>
                             </figure><!-- featured-image -->
                             <div class="entry-content">
                                 <div class="entry-header">
                                     <h5><i><%=rs.getInt(2) %></i></h5>
                                     <h5><i><%=rs.getInt(1) %></i></h5>
                                 </div><!-- entry-header -->

                                 <div class="entry-meta">
                                     <span class="author-name"><a href="#">#</a></span>
                                     <span class="space">|</span>
                                     <span class="comments-count"><a href="#">#</a></span>
                                 </div><!-- entry-meta -->
                                 
                                 		<div>
			                                <h3><a ><%=rs.getString(3)%></a></h3>
			                            </div>
			                            
			                            <div>
			                                <a ><%=rs.getString(4)%></a>
			                            </div>
			                            
			                            <div>
			                                <a ><%=rs.getString(5)%></a>
			                            </div>
			                            
			                            <div>
			                                <a ><%=rs.getDate(6)%></a>
			                            </div>
			                            <div>
			                                <a ><%=rs.getString(7)%></a>
			                            </div>
			                            <div>
			                                <a ><%=rs.getString(8)%></a>
			                            </div>
			                            <div>
			                                <a ><%=rs.getString(9)%></a>
			                            </div>
			                            <div>
			                                <a ><%=rs.getString(10)%></a>
			                            </div>
			                            <div>
			                             	<a href="addshow.jsp?id=<%=rs.getInt(1)%>" class="btn btn-success" onclick="return confirm('Do you Wanna Add Shows')">Add Shows</a>
                            			 	<a href="viewshow.jsp?id=<%=rs.getInt(1)%>" class="btn btn-info" onclick="return confirm('know Which Shows are Available..?')">View Shows</a>
			                              
			                            </div> 
                            
                          </div><!-- entry-content -->
                        </div>
                    </div>
			                            
			                            
			                            <%	
             		}
             		if(count==0){
             			out.println("No Data Found");
             			
             		}
             		
	             	}catch(Exception e){
	             		e.printStackTrace();
	             	}
             
             
             
             %>
           <a href="viewtheater.jsp"  class="btn btn-info ml-3 mb-3" >Back</a>
               
                    </div>
                    </div>
                    </div>
                    </div>
		<%@include file="footer.jsp" %>
		<%@include file="script.jsp" %>
</body>
</html>