<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="blog-page" style="color: black">
<%@include file="adminheader.jsp" %>
	 
	 
	  <div class="contactm-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h1 class="entry-title"><i>View Contact</i></h1>
                       
                    </div>
                </div>
            </div>
        </div>
    </div> 
    
	<section class="m-5">
	<div class="container">
	<table class="table table-bordered">
		<thead class="text-dark">
			<tr>
			<th>SNO</th>
			<th>NAME</th>
			<th>MAIL</th>
			<th>SUBJECT</th>
			<th>MESSAGE</th>
			<th>CURRENT_TIME</th>
			</tr>
			
		</thead>
		<tbody>
		
	<%@include file="connectdb.jsp"%>
	
	<%
	try{
		PreparedStatement ps=con.prepareStatement("select * from con");
		rs=ps.executeQuery();
		int count=0;
		while(rs.next()){
			%>
	    <tr style="color:black">
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td ><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
		</tr>
			<%
		}
		
	}
	catch(Exception e)
	
	{
		e.printStackTrace();
	}
	
	%>
	
		
		</tbody>
	</table>
	</div>
	</section>
	<%@include file="footer.jsp"%>
	  <%@include file ="script.jsp"%>
</body>
</html>