<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<title>Ticket Booking</title>
</head>
<body class="elements-page">
	<%@include file="customerheader.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Customer</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	<%@include file="connectdb.jsp" %>
	<%
	
	int id=Integer.parseInt(request.getParameter("id"));
	ResultSet rs1=null;
	PreparedStatement ps1=con.prepareStatement("select * from addtheater where id=?");
	ps1.setInt(1,id);
	rs1=ps1.executeQuery();
	
	while(rs1.next()){
		
	int cap=rs1.getInt(7);
	cap=cap/10;
	char originalchar='A';
	int asciivalue=(int)originalchar;
	int newascii = asciivalue+cap-1;
	
char row=(char)newascii;
int i=0,j=0;
for(i=0;i<10;i++)
{
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp");
	%>
	<div class="row">
		<%=row %>
	<%
	for(j=0;j<=10;j++)
	{
		
		out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp");
		
		if(j==5)
		{
			
	
			
			 out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
			 
		}
		else
		{
			
			%> 
			
		<input type="checkbox" name="seat" value="<%=row%><%=j%>" style="width: 35px;height: 35px; "/>
<% 
		
			
		}
	}
	
	
	row--;
	%>
	</div>
	<%	
	
}


	}
	
	%>
	
</body>
</html>