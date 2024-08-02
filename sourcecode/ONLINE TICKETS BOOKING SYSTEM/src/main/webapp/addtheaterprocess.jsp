<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.sql.Date,com.oreilly.servlet.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body>
	
	<%@include file="connectdb.jsp" %>
	<%
	try{
		
		
		String rtempfile = File.createTempFile("temp","1").getParent();

		MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

		Enumeration files = multi.getFileNames();
				
		String tname=multi.getParameter("tname");
		String theatertype=multi.getParameter("theatertype");
		String address=multi.getParameter("address");
		long number=Long.parseLong(multi.getParameter("numbet"));
		long cap=Long.parseLong(multi.getParameter("cap"));
		String sound=multi.getParameter("sound");
		String lang=multi.getParameter("lang");
		String genre=multi.getParameter("genre");
		String screen=multi.getParameter("screen");
		String tv=multi.getParameter("tv");
		String mail=multi.getParameter("mail");
		
		
		PreparedStatement ps=con.prepareStatement("insert into addtheater(tname,theatertype,address,numbet,cap,sound,lang,genre,screen,tv,mail,type,image)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		String name="";
		String fileExtesion="";
		File ff =null;
		FileInputStream fin =null;

		while (files.hasMoreElements())
		{
			name=(String)files.nextElement();
			ff = multi.getFile(name);
			fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));

			boolean fileAllowed = fileExtesion.equalsIgnoreCase(".png")||
			fileExtesion.equalsIgnoreCase(".jpeg")||
			fileExtesion.equalsIgnoreCase(".jpg");
			if((ff!=null)&&fileAllowed)
			{ 
				try
				{ 
				fin=new FileInputStream(ff);
				
				ps.setString(1,tname);
				ps.setString(2,theatertype);
				ps.setString(3,address);
				ps.setLong(4,number);
				ps.setLong(5,cap);
				ps.setString(6,sound);
				ps.setString(7,lang);
				ps.setString(8,genre);
				ps.setString(9,screen);
				ps.setString(10,tv);
				ps.setString(11,mail);
				ps.setString(12, fileExtesion);
				ps.setBinaryStream(13,(InputStream)fin, (int)(ff.length()));
				int sss = ps.executeUpdate();
							if(sss>0){ 
								
								%>
									<script>alert("Theater added Successfully...!!")</script>
									<jsp:include page="addtheater.jsp"></jsp:include>
								<%
								} 
				 
					else{ 
						%>
							<script>alert("theater add was unsuccessfull..Retry!!")</script>
							<jsp:include page="addtheater.jsp"></jsp:include>
						<% 
						}
			}

				
	
	catch(Exception e){
		e.printStackTrace();
	}
	
	}
	else{ 
		out.println("please enter appropriate file");
	}
	}

			
		}
		catch(Exception e)
		{  
			e.printStackTrace();
		}

	
	%>
	
</body>
</html>