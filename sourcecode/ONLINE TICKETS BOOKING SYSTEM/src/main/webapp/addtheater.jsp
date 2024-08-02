<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>

<body Align="center"  class="elements-page">
<%@include file="theaterheader.jsp"%>
	<%@include file="theaterheader.jsp" %>
	 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title"><i>Add Theater</i></h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="theaterhome.jsp">Home</a></li>
                            <li>Admin</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	
	
	<%
	String mail=(String)session.getAttribute("mail"); 
	%>
	
	<div class="main-content" >
       		 <div class="container">
            <div class="last-news" >
             <div class="row blog-list-page">
             
	<form action="addtheaterprocess.jsp" enctype="multipart/form-data" method="post" style="color:black">
	
	<div class="col-12 col-md-6 single-blog-content">
                         <div class="blog-content">
                             <div class="entry-content">
                                 
	
				<div class="col-12  mb-3">
					<label>E-mail</label>
					<input type="email" name="mail" value="<%=mail%>" readonly>
				</div>
	
				<div class="col-12  mb-3">
					<label>Theater image</label>
					<input type="file" name="filename" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
				</div>
	
				<div class="col-12 mb-3">
					<label>Theater Name</label>
		            <input type="text" name="tname" required>
		         </div>
		         
		         
		         <label for="theatertype" class="ml-3">Theater Type</label>
		         <div class="col-12">
		         <select name="theatertype" class="mb-3" required>
		         	<option ></option>
		         	<option value="ac">AC</option>
		         	<option value="non-ac">NON-AC</option>
		         	<option value="both">BOTH</option>
		         </select>
		         </div>
         
		         <div class="col-12 mb-3">
					<label>Address</label>
		             <input type="text" name="address" required>
		         </div>
		         
		         <div class="col-12 mb-3">
					<label>Mobile Number</label>
		             <input type="number" name="numbet" required>
		         </div>
         
		         <div class="col-12 mb-3">
					<label>Seating Capacity</label>
		             <input type="number" name="cap" required>
		         </div>
         
		         <div class="col-12 mb-3">
					<label>City</label>
		             <input type="text" name="city" required>
		         </div>
         
		         <div class="col-12 mb-3">
		         <label>Sound System</label>
		         <select name="sound" class="mb-3" required>
		         	<option ></option>
		         	<option value="dolbyatmos">Dolby Atmos</option>
		         	<option value="dts">DTS</option>
		         	<option value="thx">THX</option>
		         	<option value="auro3d">AURO 3D</option>
		         	<option value="qsc">QSC</option>
		         	<option value="sdds">Sony Dynamic Digital Sound </option>
		         	<option value="barco">Barco AuroMax</option>
		         	<option value="imax">IMAX</option>
		         </select>
		         </div>
         
		         <div class="col-12 mb-3">
		         <label>Movie Language</label>
		         <select name="lang" class="mb-3" required>
		         	<option ></option>
		         	<option value="tollywood">TollyWood</option>
		         	<option value="bollywood">BollyWood</option>
		         	<option value="hollywood">Hollywood</option>
		         	<option value="kollywood">Kollywood</option>
		         	<option value="jollywood">Jollywood</option>
		         	<option value="mollywood">Mollywood</option>
		         	<option value="gollywood">Gollywood</option>
		         	<option value="ollywood">Ollywood</option>
		         </select>
		         </div>
         
		         <div class="col-12 mb-3">
					<label>Genre</label>
		             <select name="genre" required>
		         	<option ></option>
		         	<option value="horror">Horror</option>
		         	<option value="action">Action</option>
		         	<option value="thriller">Thriller</option>
		         	<option value="drama">Drama</option>
		         	<option value="romance">Romance</option>
		         	<option value="comedy">Comedy</option>
		         	<option value="sciencefiction">Science Fiction</option>
		         	<option value="crimefilm">Crime film</option>
		         	<option value="drama">Drama</option>
		         	<option value="animation">Animation</option>
		         	<option value="documentary">Documentary</option>
		         	<option value="fantasy">Fantasy</option>
		         	<option value="adventure">Adventure</option>
		         	<option value="narrative">Narrative</option>
		         	<option value="matrialarts">Martial Arts</option>
		         	<option value="war">War</option>
		         	<option value="western">Western</option>
		         	<option value="fanntasy">Fantasy</option>
		         	<option value="satie">Satire</option>
		         	<option value="animated">Animated film</option>
		         </select>
		         </div>
         
         		<div class="col-12 mb-3">
		         <label>Theater Vision</label>
		         <select type="text" class="mb-3" name="tv" required>
		         	<option ></option>
		         	<option value="2d">2D</option>
		         	<option value="3d">3D</option>
		         	<option value="IMAX">IMAX</option>
		         	<option value="4Dx">4Dx</option>
		         </select>
		         </div>
         
		         <div class="col-12 mb-3">
					<label>Screen Size</label>
		             <input type="text" name="screen" required>
		         </div>
         
		         <div  class="col-12 mb-3">
		           <input type="submit"   class=" btn btn-success col-12 col-md-6 mb-3" name="submit" required>
		         </div>
         </div><!-- entry-content -->
        </div>
      </div>
</form>
       </div>
      </div>
    </div>
  </div>
<%@include file="footer.jsp" %>
<%@include file="script.jsp" %>
</body>
</html>