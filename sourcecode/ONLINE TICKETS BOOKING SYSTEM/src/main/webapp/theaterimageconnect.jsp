<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="connectdb.jsp" %> 
<%
 
		int sno = Integer.parseInt(request.getParameter("sno"));
	//String mail=request.getParameter("mail");
 	ServletOutputStream kk=response.getOutputStream();
  	try{
	       	PreparedStatement ps=con.prepareStatement("select * from theaters where sno=?");
			ps.setInt(1,sno);
			
			 rs = ps.executeQuery();
	
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(8);
     	}  
    	rs = ps.executeQuery();
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(8);
		 	int index=readImg.read(rb, 0, len);  
		  	ps.close();
		  	response.reset();
		  	kk.write(rb,0,len); 
		        
		}
    	kk.close();
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>


</body>
</html>