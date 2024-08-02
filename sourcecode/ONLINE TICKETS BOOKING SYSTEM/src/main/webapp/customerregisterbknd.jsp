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
	try{ //1
	String rtempfile = File.createTempFile("temp","1").getParent();

	MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

	Enumeration files = multi.getFileNames();
		
		String s1=multi.getParameter("fname");
		String s2=multi.getParameter("lname");
		String date=multi.getParameter("dob");
		
		String s4=multi.getParameter("address");
		String s5=multi.getParameter("city");
		long s6=Long.parseLong(multi.getParameter("pin"));
		long s7=Long.parseLong(multi.getParameter("cell"));
		String s8=multi.getParameter("mail");
		String s9=multi.getParameter("pasword");
		
		Date s3=Date.valueOf(date);
		
		PreparedStatement ps=con.prepareStatement("select * from customer where mail=?");
		ps.setString(1,s8);
		rs=ps.executeQuery();
		 int row=0;
		while(rs.next())
		{ 
			row++;
			%>
			<script> alert("Exsisting MAil")</script>
			<jsp:include page="customerregister.jsp"></jsp:include>
			<%
			
		} 
		if(row==0)
		{ 
			
		PreparedStatement psmt=con.prepareStatement("insert into customer(fname,lname,dob,address,city,pin,cell,mail,pasword,typee,content) values(?,?,?,?,?,?,?,?,?,?,?)");
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
			{ //5
				try
					{ //6
					fin=new FileInputStream(ff);
					
					psmt.setString(1,s1);
					psmt.setString(2,s2);
					psmt.setDate(3,s3);
					psmt.setString(4,s4);
					psmt.setString(5,s5);
					psmt.setLong(6,s6);
					psmt.setLong(7,s7);
					psmt.setString(8,s8);
					psmt.setString(9,s9);
					psmt.setString(10, fileExtesion);
					psmt.setBinaryStream(11,(InputStream)fin, (int)(ff.length()));
					int sss = psmt.executeUpdate();
								if(sss>0){ //7
									
									%>
										<script>alert("Registration Successfull...!!")</script>
										<jsp:include page="customerlogin.jsp"></jsp:include>
									<%
									} //2
					 //3
						else{ //8
							%>
								<script>alert("wrong mail buddy..")</script>
								<jsp:include page="customerregister.jsp"></jsp:include>
							<% 
							}//4
				}//5

			catch(Exception e)
				{ //9
					e.printStackTrace();
				}//6
		//7
		
	
			}
			else{ //11
				out.println("please enter appropriate file");
			}//9
}//10
		}
					else{ //12
						%>
							<script >alert("Already registerd please do login")</script>
							<jsp:include page="customerlogin.jsp"></jsp:include>
					   <%
					}//11
	}//12
	catch(Exception e)
	{  //13
		e.printStackTrace();
	}//13
	
	%>
</body>
</html>