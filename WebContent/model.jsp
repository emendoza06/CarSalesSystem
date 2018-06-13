<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import = "com.user.searchPreferences" %>
    <%@page import = "com.user.carType" %>
    <%@page import = "com.servlet.priceServlet" %>
<%searchPreferences price = (searchPreferences)session.getAttribute("price"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filter by Price</title>

<!-- HERO IMAGE STYLING -->

<style>
body, html {
    height: 100%;
    margin: 0;
}

.hero-image {
  background-image: url("./images/price%20wallpaper.jpg"); 
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  
 
   
}
.ontop{
position: relative; 
top: 4.7em;
}

</style>

<!-- Style of table -->

<style>
table, th, td {
    border: 1px solid black;
}
</style>

</head>
<body>
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <a href = "./index.jsp"><img src="images/index.png" style="width:45%;" class="w3-round"><br><br></a>
    <h4><b>PORTFOLIO</b></h4>
    
  </div>
  <div class="w3-bar-block">
  <a href="./transaction.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>TRANSACTIONS</a></a> 
    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>ABOUT</a> 
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>MESSAGES</a>
  </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
<div class = "hero-image">


<!-- Main content -->


<div class = "container">
	<!-- Example row of columns -->
	<div class = "row">
	<div class = "col-md-4">
	
		</div>
	<div class = "col-md-4">
		<h2 class="myPreferences">My preferences</h2>
		<style>
		h2.myPreferences{color:white;}
		</style>
		<form action = "modelServlet" method = "post">
		<div class = "form-group">
	<select class="form-control" name = "model">
<option value="BMW">BMW</option>
<option value="Jeep"> Jeep</option>
<option value="Mazda">Mazda</option>
<option value="Hyndai">Hyndai</option>
<option value="Chevrolet">Chevrolet</option>
<option value="Smart">Smart</option>
<option value="Honda">Honda</option>
<option value="Lamborgini">Lamborgini</option>
<option value="Ferrari">Ferrari</option>
</select>
<br>
		<button type = "submit" class = "btn btn-default">Submit</button>
			</form>
		</div>
		
		<table>
  <tr>
    <th>Search results</th>
  </tr>
  <tr>
  <%request.getAttribute("image"); %>
    <td><ul><li><img src="<%out.println(request.getAttribute("image")); %>"/></li></ul></td>
  </tr>
  
</table>
	
	</div><!-- container -->
	</div>

</body>
</html>