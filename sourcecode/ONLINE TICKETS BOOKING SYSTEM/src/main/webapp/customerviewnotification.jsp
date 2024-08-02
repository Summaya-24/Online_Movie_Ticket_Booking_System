<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="elements-page">
 <%@include file="customerheader.jsp"%>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Customer</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>view notification</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
    <section class="m-5">
    <div class="container"> 
    	<table class="table table-bordered">
    		<thead class="text-dark">
    			<tr>
    				<th>Sno</th>
    				<th>Tittle</th>
    				<th>Description</th>
    				<th>Date & Time</th>
    				<th>Action</th>
    			</tr>
    		</thead>
    		<tbody>
    
	<%@include file="connectdb.jsp" %>
	<%
	try{
	PreparedStatement ps=con.prepareStatement("select * from notf");
	rs=ps.executeQuery();
	int count=0;
	while(rs.next()){
		count++;
		%>
		<tr style="color:black">
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><a href="notificationdeleteprocess.jsp?id=<%=rs.getInt(1)%>" onclick="return confirm('Do You Want to Delete ?')" class="btn btn-danger"> Delete</a>
			</td>
		</tr>
		</tbody>
	<%		
	}
	if(count==0){
		%>
			<tr>
				<td colspan="5">No Data Found</td>
			</tr>
		<%
	}
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	 %>
	 		
	 	</table>
	 	</div>
	 </section>
	 <%@include file="footer.jsp"%>
	 <%@include file="script.jsp"%>
</body>
</html>