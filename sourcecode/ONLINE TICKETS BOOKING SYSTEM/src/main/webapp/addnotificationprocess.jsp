<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body >
		 <!-- <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Add Notification</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul>.breadcrumbs
                    	
                    </div>entry-header
                </div>col-12
            </div>row
        </div>container
    </div> -->
    <%@include file="connectdb.jsp" %>
    <% 
    try{
    	
    	String title=request.getParameter("title");
    	String descp=request.getParameter("descp");
    	 PreparedStatement ps=con.prepareStatement("insert into notf(title,descp)values(?,?)");
    	 ps.setString(1,title);
    	 ps.setString(2,descp);
    	 int rows=ps.executeUpdate();
    	 if(rows>0){
    		 %> <script>alert("notification added Successfully...")</script>
    		 <jsp:include page="addnotificationpage.jsp"></jsp:include>
    		 <% 
    	 }
    	 else{
    		 %>
    		 <script>alert("Add Notification was Unsuccessfull.... ")</script>
    		 <jsp:include  page="addnotificationpage.jsp"></jsp:include>
    		 <%
    	 }
    	 
    		
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
   	%>
</body>
</html>