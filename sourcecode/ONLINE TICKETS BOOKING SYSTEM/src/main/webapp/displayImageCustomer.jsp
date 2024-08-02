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


 
	int Sno = Integer.parseInt(request.getParameter("id"));
 	ServletOutputStream kk=response.getOutputStream();
  	try{
	       	PreparedStatement ps=con.prepareStatement("select content from customer where Sno=?");
			ps.setInt(1,Sno);
			
			 rs = ps.executeQuery();
	
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(1);
     	}  
    	rs = ps.executeQuery();
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
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