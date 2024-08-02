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
		String duration=multi.getParameter("duration");
		String temp=multi.getParameter("date");
		Date date=Date.valueOf(temp);
		String about=multi.getParameter("about");
		String tom=multi.getParameter("tom");
		String a=multi.getParameter("a");
		String b=multi.getParameter("b");
		String c=multi.getParameter("c");
		String d=multi.getParameter("d");
		String ed=multi.getParameter("ed");
		String f=multi.getParameter("f");
		String g=multi.getParameter("g");
		String h=multi.getParameter("h");
		String i=multi.getParameter("i");
		String j=multi.getParameter("j");
		String k=multi.getParameter("k");
		String l=multi.getParameter("l");
		String m=multi.getParameter("m");
		String n=multi.getParameter("n");
		String o=multi.getParameter("o");
		String p=multi.getParameter("p");
		String q=multi.getParameter("q");
		String r=multi.getParameter("r");
		String s=multi.getParameter("s");
		String t=multi.getParameter("t");
		String u=multi.getParameter("u");
		String v=multi.getParameter("v");
		String w=multi.getParameter("w");
		String x=multi.getParameter("x");
		String y=multi.getParameter("y");
		String z=multi.getParameter("z");
		String aa=multi.getParameter("aa");
		String bb=multi.getParameter("bb");
		String cc=multi.getParameter("cc");
		String dd=multi.getParameter("dd");
		String ee=multi.getParameter("ee");
		String fd=multi.getParameter("fd");
		String gg=multi.getParameter("gg");
		String ab=multi.getParameter("ab");
		String ac=multi.getParameter("ac");
		
		
		PreparedStatement ps=con.prepareStatement("insert into cc(tid,title,lang,duration,date,about,tom,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb,cc,dd,ee,ff,gg,ab,ac)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
						ps.setString(4,duration);
						ps.setDate(5,date);
						ps.setString(6,about);
						ps.setString(7,tom);
						/* ps.setString(8,);
						ps.setString(9,); */
						ps.setString(10, fileExtesion);
						ps.setBinaryStream(11,(InputStream)fin, (int)(ff.length()));
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