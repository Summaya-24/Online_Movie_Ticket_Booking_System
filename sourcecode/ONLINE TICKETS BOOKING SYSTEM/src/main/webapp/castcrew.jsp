<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp" %>
</head>
<body class="elements-page" >

	<%@include file="theaterheader.jsp"%>
	<%@include file="connectdb.jsp" %>
		 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Add movie</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Theater</li>
                        </ul><!-- .breadcrumbs -->
                    	
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	
	 <form   enctype ="multipart/form-data"action="castcrewprocess.jsp" style="color:black" onsubmit="return verify()" method="post">
                    <div class="row form-group">
                        <div class="col-12 col-md-3">
	<div>
	
	<label>Movie I'd</label>
		<input type="number" name="tid"  required>
		</div>
	
		<div>
		
				<label>Movie Banner</label>
                <input type="file" name="banner" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
                 
          </div>
          <div>
				<label>Title</label>
				<input type="text" name="title" required>
		</div>
		
		<div>
				<label>Language</label>
				<input type="text" name="lang" required>
		</div>
		<div>
				<label>Duration</label>
				<input type="time" name="duration" required>
		</div>
		<div>
				<label>Date</label>
				<input type="date" name="date" required>
		</div>
		<div>
				<label>About</label>
				<input type="text" name="about" required>
		</div>
		<div>
				<label>Type of Movie</label>
				<input type="text" name="tom" required>
		</div>
		
		</div>
		</div>
		
	
	 <h3 Style="color:black">About the movie</h3>
	 <h5 Style="color:black">When the world is taken over by darkness. A force will rise.</h5>
	
	<div Style="color:black">
		<h3>Cast</h3>
		<div class="scroll-container">
 			 <div class="content">
 			 
             <input type="file" name="a" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="z"required >
              <label>Actor</label>
              
              <input type="file" name="b" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="y"required >
              <label>Actor</label>   
              
              <input type="file" name="c" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="x"required >
              <label>Actor</label>   
              
              <input type="file" name="d" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="w"required >
              <label>Actor</label> 
              
              <input type="file" name="ed" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="v"required >
              <label>Actor</label>
              
              <input type="file" name="f" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="u"required >
              <label>Actor</label>
              
              <input type="file" name="g" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="t"required >
              <label>Actor</label>  
              
		</div>
		 <button class="scroll-button left">&lt;</button>
  		<button class="scroll-button right">&gt;</button>
	</div> 
	 
	<div Style="color:black">
		<h3>Crew</h3>
		<div class="scroll-container">
 			 <div class="content">
 			 
             <input type="file" name="h" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="s"required >
             <input type="text" name="fd"required >
             
              
              <input type="file" name="i" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="r"required>
              <input type="text" name="ee"required >  
              
              <input type="file" name="j" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="q"required>
              <input type="text" name="gg"required >   
              
              <input type="file" name="k" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="p"required >
              <input type="text" name="dd"required >
              
              <input type="file" name="l" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="o"required >
              <input type="text" name="cc"required >
              
              <input type="file" name="m" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="ab"required >
              <input type="text" name="bb"required >
              
              <input type="file" name="n" accept=".png,.jpeg,.jpg" class="form-control mb-3" required/>
             <input type="text" name="ac"required >
              <input type="text" name="aa"required >  
              
		</div>
		 <button class="scroll-button left">&lt;</button>
  		<button class="scroll-button right">&gt;</button>
  		
	</div> 
	<input type="submit" class="btn btn-success" name="add">
				<a href="viewtheater.jsp"  class="btn btn-info" >Back</a>
		</div>
		</div>
		</form>
	<%@include file="footer.jsp" %>
	<%@include file="script.jsp" %>
</body>
</html>