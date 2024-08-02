<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>My Bookings</title>
<%@include file="head.jsp" %>
</head>
<body class="elements-page "style="color:black" >
	<%@include file="customerheader.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Bookings</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Customer</li>
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
				<% String mail=(String)session.getAttribute("email"); %>
				<% 
				
					PreparedStatement ps=con.prepareStatement("select * from bookings where mail=?");
					ps.setString(1,mail);
					rs=ps.executeQuery();
					int count=0;
					while(rs.next()){
						count++;
						%>
						
						  <div class="col-12 col-md-6 single-blog-content">
                        <div class="blog-content">
                           
                            <div class="entry-content" style="color:black">
                                
						
						<div>
		                    <a > Customer E-MAil: <%=rs.getString(2)%></a>
			            </div>
			            <div>
		                    <a >Theater Name: <%=rs.getString(8)%></a>
			            </div>
			             <div>
		                    <a >Theater E-MAil : <%=rs.getString(12)%></a>
			            </div>
			            <div>
		                    <a >Movie Name: <%=rs.getString(9)%></a>
			            </div>
			            <div>
		                    <a >Show Date: <%=rs.getString(11)%></a>
			            </div>
			            <div>
		                    <a >Show Time: <%=rs.getString(10)%></a>
			            </div>
			            <div>
		                    <a >Cost: <%=rs.getLong(3)%></a>
			            </div>
			            <div>
		                    <a >Seats: <%=rs.getString(4)%></a>
			            </div>
			            <div>
		                    <a >Number of Seats : <%=rs.getInt(5)%></a>
			            </div>
			            <div class="mb-4">
		                    <a >Total Cost : <%=rs.getInt(6)%></a>
			            </div>
			            
			             </div><!-- entry-content -->
                        </div>
                    </div><!-- col-6 -->
                    
						<%
						
					}
				
				
				%>
				 </div><!-- entry-content -->
                        </div>
                    </div><!-- col-6 -->
                    </div>
<%@include file="script.jsp" %>
<%@include file="footer.jsp" %>
</body>
</html>