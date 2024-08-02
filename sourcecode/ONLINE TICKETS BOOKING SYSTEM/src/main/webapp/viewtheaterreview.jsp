<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Review</title>
</head>
<body class="blog-page">
	 <%@include file="theaterheader.jsp" %>
	 <%@include file="connectdb.jsp" %>
	 <section>
	  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Theater</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">View Review</a></li>
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
	String temail=(String)session.getAttribute("mail");
	
	
		try{
		PreparedStatement ps=con.prepareStatement("select * from review where temail=?");
		ps.setString(1,temail);
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
            		 <div class="entry-header">
                     <h2><i><%=rs.getString(3) %></i></h2>
                     </div>
                      <div class="entry-header">
                     <h2><i><%=rs.getString(4) %></i></h2>
                     </div>
                      <div class="entry-header">
                     <h2><i><%=rs.getDate(5) %></i></h2>
                     </div>
             </div>
			</div>
			</div>
                     <%
		}
		if(count==0){
			out.println("<h3 style='color:black;'>No Data Found</h3>");
			
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