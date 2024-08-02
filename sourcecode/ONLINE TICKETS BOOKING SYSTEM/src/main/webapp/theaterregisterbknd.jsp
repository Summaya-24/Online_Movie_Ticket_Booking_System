<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.sql.Date,com.oreilly.servlet.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="connectdb.jsp" %> 
	<%
	try{ 
	String rtempfile = File.createTempFile("temp","1").getParent();

	MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

	Enumeration files = multi.getFileNames();
		
		String title=multi.getParameter("title");
		String address=multi.getParameter("address");
		String city=multi.getParameter("city");
		String mail=multi.getParameter("mail");
		String password=multi.getParameter("password");
		
		PreparedStatement ps=con.prepareStatement("select * from theaters where mail=?");
		ps.setString(1,mail);
		rs=ps.executeQuery();
		 int row=0;
		while(rs.next())
		{ 
			row++;
		} 
		if(row==0)
		{ 
			
		PreparedStatement psmt=con.prepareStatement("insert into theaters(title,address,city,mail,password,type,logo) values(?,?,?,?,?,?,?)");
		String name="";
		String fileExtesion="";
		File ff =null;
		FileInputStream fin =null;

		while (files.hasMoreElements())
		{
			name=(String)files.nextElement();
			ff = multi.getFile(name);
			fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));

		// check user has select the correct file or not
			boolean fileAllowed = fileExtesion.equalsIgnoreCase(".png")||
			fileExtesion.equalsIgnoreCase(".jpeg")||
			fileExtesion.equalsIgnoreCase(".jpg");
			if((ff!=null)&&fileAllowed)
			{ 
				try
					{ 
					fin=new FileInputStream(ff);
					
					psmt.setString(1,title);
					psmt.setString(2,address);
					
					psmt.setString(3,city);
					psmt.setString(4,mail);
					
					psmt.setString(5,password);
					
					psmt.setString(6, fileExtesion);
					psmt.setBinaryStream(7,(InputStream)fin, (int)(ff.length()));
					int sss = psmt.executeUpdate();
								if(sss >0){ 
									
									%>
										<script>alert("Registration Successfull...!!")</script>
										<jsp:include page="theaterlogin.jsp"></jsp:include>
									<%
									} 
					 
						else{ 
							%>
								<script>alert("Unsuccessful registration")</script>
								<jsp:include page="theaterregister.jsp"></jsp:include>
							<% 
							}
				}

			catch(Exception e)
				{ 
					e.printStackTrace();
				}
		
		
	
			}
			else{ 
				out.println("please enter appropriate file");
			}
}
		}
					else{ 
						%>
							<script >alert("Already registerd please do login")</script>
							<jsp:include page="theaterlogin.jsp"></jsp:include>
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