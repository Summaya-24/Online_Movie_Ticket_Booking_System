<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
<style>
    /* CSS for Theater Screen Image */
    .theater-screen {
        width: 100%; /* Ensure the screen image spans the container */
        max-width: 800px; /* Adjust maximum width as per your design */
        height: auto; /* Maintain aspect ratio */
        display: block; /* Ensures it behaves like a block-level element */
        margin: 0 auto; /* Center the image horizontally */
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* Optional: Add a subtle shadow */
        border-radius: 8px; /* Optional: Rounded corners */
    }
</style>
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

<%@	include file="connectdb.jsp" %>
<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
			<form action="cbookticket.jsp" method="post">
<%
				String title=request.getParameter("title");
int tid=Integer.parseInt(request.getParameter("id"));
String tname="";
String tmail="";
PreparedStatement psr=con.prepareStatement("select * from addtheater where id=?");
	psr.setInt(1,tid);
	rs=psr.executeQuery();
			if(rs.next()){
				tname=rs.getString(2);
				tmail=rs.getString(6);
			}
             	try{
             		ResultSet rs1=null;
             		String mname="";
             		PreparedStatement ps=con.prepareStatement("select * from addmovie where title=?");
             		ps.setString(1,title);
             		rs=ps.executeQuery();
             		
             		int count=0;
             		while(rs.next()){
             			mname=rs.getString(3);
             			int id=rs.getInt(2);
             			count++;
             			%>
             			
             			 <div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <figure class="featured-image">
                                 <a > <img src="viewmovieimage.jsp?id=<%=rs.getInt(1) %>" style="height: 100%;width:100%" alt="customer profile pic error"> </a>
                             </figure><!-- featured-image -->
                             <div class="entry-content" style="color:black">
                                	
                                 
                                 		<div>
			                               <h3><input type="text" name="title" readonly value="<%=rs.getString(3)%>" ></h3>
			                            </div>
			                             <div>
			                             		<label>Theater Name :</label>
												<input type="text" name="theatername" value="<%=tname%>">
										</div>
										<div>
			                             		<label>Theater Mail :</label>
												<input type="mail" name="tmail" value="<%=tmail%>">
										</div>
			                            <div>
			                            	<label>Language :</label>
			                                <input type="text" name="language" readonly value=" <%=rs.getString(4)%>">
			                            </div>
			                             <div>
			                            	<label>Show Date :</label>
			                                <input type="Date" name="date" required>
			                            </div>
			                            <div>
			                            	<label>Show Time:</label>
			                               <select name="showtime">
			                               		<option value="-1">-- Please Select Show Time --</option>
			                               		<option value="10:00Am">10:00Am</option>
			                               		<option value="02:00Pm">02:00Pm</option>
			                               		<option value="06:00Pm">06:00Pm</option>
			                               		<option value="09:00Pm">09:00Pm</option>
			                               		<option value="12:30Am">12:30Am</option>
			                               		
			                               </select>
			                            </div>
			                           
			                            
			                            <div>
			                            	<label>Duration :</label>
			                                <input type="text" name="language" readonly value=" <%=rs.getString(6)%>">
			                            </div>
			                             
			                            <div>
			                            	<label>Date :</label>
			                                <input type="Date" name="date" readonly value="<%=rs.getDate(7)%>">
			                            </div>
			                            <div>
			                            	<label>About :</label>
			                                <input type="text" name="about" readonly value="<%=rs.getString(8)%>">
			                            </div>
			                            <div>
			                            	<label>Genre</label>
			                                <input type="text" name="genre" readonly value="<%=rs.getString(9)%>">
			                            </div>
			                            <div>
			                            	<label>Cast :</label>
			                                <input type="text" name="cast" readonly value="<%=rs.getString(10)%>">
			                            </div>
			                            <div>
			                            	<label>Crew :</label>
			                                <input type="text" name="crew" readonly value=" <%=rs.getString(11)%>">
			                            </div>
			                             <div>
			                             	<label>Cost Per Ticket</label>
			                                <input type="number" name="cost" readonly value="<%=rs.getString(14)%>">
			                            </div>
			                            <div>
			                                <input type="hidden" name="tid" value="<%=rs.getInt(2)%>">
			                            </div>
			                             <div>
			                                <input type="hidden" name="id" value="<%=id%>">
			                            </div>
			                           
                          </div><!-- entry-content -->
                        </div>
                    </div>
                
			      
               
                    </div>
                    </div>
                    </div>
                    </div>
                    


<section class="container mt-4" style="color:black; margin-left:360px;">

	
	<input type="hidden" name="cost" value="<%=rs.getLong(14)%>" >
<%
		//PreparedStatement ps2=con.prepareStatement("select seats from bookings where date=? and showtime=? and id=? ");	
		//ps2.setString(1,seats);
		
		
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
}

}catch(Exception e){
e.printStackTrace();
}
%>

	<div Align="center">
		<input type="submit" class="col-3 mr-5 m-3 btn btn-primary" value="submit">
	</div>
	
	</form>
	</section>
	
	


<%@include file="footer.jsp" %>
<%@include file="script.jsp" %>

</body>
</html>