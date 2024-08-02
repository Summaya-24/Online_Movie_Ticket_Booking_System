<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Bookings</title>
</head>
<body class="blog-page" style="color:black">
	 <%@include file="theaterheader.jsp" %>
	 <%@include file="connectdb.jsp" %>
	 <section>
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Bookings</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Theater Login</a></li>
                            <li>info</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
    </section>
     
	
 <div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
	<%
	String mail=(String)session.getAttribute("mail"); 
	
	//out.println(mail);
		try{
			PreparedStatement ps=con.prepareStatement("select * from bookings where tmail=?");
			ps.setString(1,mail);
			rs=ps.executeQuery();
			int count=0;
			while(rs.next()){
				count++;
				
			%>
			<div class="col-12 col-md-6 single-blog-content">
            <div class="blog-content">
            <div class="entry-content">
                    <div class="entry-header">
                     <h2><i>Customer E-MAil: <%=rs.getString(2)%></i></h2>
                     </div><!-- entry-header -->
                     
            		 <div class="entry-header">
                     <h2><i>Theater Name: <%=rs.getString(8)%></i></h2>
                     </div>
                      <div class="entry-header">
                     <h2><i>Movie Name: <%=rs.getString(9)%></i></h2>
                     </div>
                      <div class="entry-header">
                     <h2><i>Show Date: <%=rs.getString(11)%></i></h2>
                     </div>
                     <div class="entry-header">
                     	<h2><i>Show Time: <%=rs.getString(10)%> </i></h2>
                    </div>
                     <div class="entry-header">
                     	<h2><i>Cost: <%=rs.getLong(3)%> </i></h2>
                    </div>
                     <div class="entry-header">
                     	<h2><i> Seats: <%=rs.getString(4)%></i></h2>
                    </div>
                     <div class="entry-header">
                     	<h2><i>Number of Seats : <%=rs.getInt(5)%> </i></h2>
                    </div>
                     <div class="entry-header">
                     	<h2><i>Total Cost : <%=rs.getInt(6)%> </i></h2>
                    </div>
                     
                     
             </div>
			</div>
			</div>
			<%
			}
                     
                     if(count==0){
                    	 %>
                    	 	<div >
                   			  <h2><i>No Bookings </i></h2>
                     </div>
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