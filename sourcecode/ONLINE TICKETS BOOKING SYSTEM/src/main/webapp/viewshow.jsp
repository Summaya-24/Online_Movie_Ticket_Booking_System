<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>View Show</title>
</head>
<body class="blog-page">
	 <%@include file="theaterheader.jsp" %>
	 
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Shows</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="viewshow.jsp">View Show</a></li>
                            <li>info</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
<%@include file="connectdb.jsp" %>
<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
             
             <%	
             try{
             	int id=Integer.parseInt(request.getParameter("id"));
             	PreparedStatement ps=con.prepareStatement("select * from addshow where id=?");
             	ps.setInt(1,id);
          
				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count++;
		%>
			<div class="col-12 col-md-6 single-blog-content">
                        <div class="blog-content">
                      
                           

                            <div class="entry-content">
                                <div class="entry-header">
                                    <h2><i><%=rs.getString(2) %></i></h2>
                                </div><!-- entry-header -->

                                <div class="entry-meta">
                                    <span class="author-name"><a href="#">#</a></span>
                                    <span class="space">|</span>
                                    <span class="comments-count"><a href="#">#</a></span>
                                </div><!-- entry-meta -->
                                 <div>
			                                <a ><%=rs.getInt(3)%></a>
			                            </div>
                                <div>
			                                <a ><%=rs.getInt(4)%></a>
			                            </div><!-- box-link-date -->
                                <div>
			                                <a ><%=rs.getString(5)%></a>
			                            </div><!-- box-link-date -->
                                
                                 <div>
			                                <a ><%=rs.getInt(6)%></a>
			                            </div><!-- box-link-date -->
                                
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