<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<%@include file="connectdb.jsp" %>
<%

	try{ 
	String rtempfile = File.createTempFile("temp","1").getParent();

	MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

	Enumeration files = multi.getFileNames();
		
		int tid=Integer.parseInt(multi.getParameter("tid"));
		String title=multi.getParameter("title");
		String lang=multi.getParameter("lang");
		String showw=multi.getParameter("showw");
		String duration=multi.getParameter("duration");
		String temp=multi.getParameter("date");
		Date date=Date.valueOf(temp);
		String about=multi.getParameter("about");
		String tom=multi.getParameter("tom");
		String cast=multi.getParameter("cast");
		String crew=multi.getParameter("crew");
		long cost =Long.parseLong(multi.getParameter("cost"));
		PreparedStatement ps=con.prepareStatement("insert into addmovie(tid,title,lang,showw,duration,date,about,tom,cast,crew,type,banner,cost)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
						
						ps.setInt(1,tid);
						ps.setString(2,title);
						ps.setString(3,lang);
						ps.setString(4,showw);
						ps.setString(5,duration);
						ps.setDate(6,date);
						ps.setString(7,about);
						ps.setString(8,tom);
						ps.setString(9,cast);
						ps.setString(10,crew);
						ps.setString(11, fileExtesion);
						ps.setBinaryStream(12,(InputStream)fin, (int)(ff.length()));
						ps.setLong(13,cost);
						int rows = ps.executeUpdate();
						
							if(rows>0)
							{
								
								%>
								<script>alert("Theater added successfully")</script>
								<jsp:include page="addmovie.jsp"></jsp:include>
								<%
							}
							
							else{
								%>
								<script >alert("Theater add was unsuccessfull")</script>
								<jsp:include page="addmovie.jsp"></jsp:include>
								<%
							}
					}
				
					catch(Exception e)
					{
						e.printStackTrace();
					}
			}
			else{
				%>
					<script>alert("enter appropriate file")</script>
					<jsp:include page="addmovie.jsp"></jsp:include>
				<%
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