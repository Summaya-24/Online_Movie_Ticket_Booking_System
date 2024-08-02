<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="elements-page">
 <%@include file="adminheader.jsp"%>
		 <div class="viewn-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title">Notifications</h1>

                        </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
    <section class="m-5">
    <div class="container"> 
    	<table class="table table-bordered">
    		<thead>
    			<tr>
    				<th  style="color:black">Sno</th>
    				<th  style="color:black">Tittle</th>
    				<th  style="color:black">Description</th>
    				<th  style="color:black">Date & Time</th>
    				<th  style="color:black">Action</th>
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
			<td><a href="notificationdeleteprocess.jsp?id=<%=rs.getInt(1)%>" onclick="return confirm('Do You Want to Delete?')" class="btn btn-danger"> Delete</a>
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