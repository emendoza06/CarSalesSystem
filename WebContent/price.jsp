<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    

<%@page import = "com.user.searchPreferences" %>
<%@page import = "com.user.carType" %>
<%@page import = "com.servlet.priceServlet" %>
<%@page import = "com.user.Results" %>
    
<%Results result =(Results)session.getAttribute("result"); %>
    
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


<!-- Style of slider -->

<style>
.range {
  position: relative;
}
.range input[type=range] {
  appearance: none;
  padding: 0;
  width: 100%;
  height: 22px;
  cursor: pointer;
  display: block;
}
.range input[type=range]:focus {
  outline: none;
}
.range input[type=range][disabled] {
  opacity: 0.3;
  cursor: default;
}
.range .rangeslider {
  position: relative;
  height: 22px;
  cursor: pointer;
  user-select: none;
}
.range .rangeslider:before {
  box-sizing: border-box;
  width: 100%;
  height: 4px;
  background: #e6e6e6;
  border-radius: 100px;
  content: "";
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.range input::-webkit-slider-runnable-track {
  box-sizing: border-box;
  width: 100%;
  height: 4px;
  background: #e6e6e6;
  border-radius: 100px;
  margin: 11px 0;
}
.range input::-moz-range-track {
  box-sizing: border-box;
  width: 100%;
  height: 4px;
  background: #e6e6e6;
  border-radius: 100px;
  margin: 11px 0;
}
.range input::-ms-track {
  box-sizing: border-box;
  width: 100%;
  height: 4px;
  background: #e6e6e6;
  border-radius: 100px;
  color: transparent;
  padding: 11px 0;
  background: transparent;
  border-color: transparent;
}
.range input::-ms-fill-lower, .range input::-ms-fill-upper {
  box-sizing: border-box;
  width: 100%;
  height: 4px;
  background: #e6e6e6;
  border-radius: 100px;
}
.range input::-ms-fill-lower {
  background: #60cd18;
}
.range .rangeslider-fill-lower {
  background-color: #60cd18;
  border-radius: 100px;
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  height: 4px;
  will-change: width;
}
.range input::-webkit-slider-thumb {
  box-sizing: border-box;
  box-shadow: 0px 4px 25px rgba(0, 0, 0, .5);
  border: 6px solid #fff;
  height: 24px;
  width: 24px;
  border-radius: 100px;
  background: #333940;
  cursor: pointer;
  appearance: none;
  transform: translateY(-50%);
  margin-top: 2px;
}
.range input::-moz-range-thumb {
  box-sizing: border-box;
  box-shadow: 0px 4px 25px rgba(0, 0, 0, .5);
  border: 6px solid #fff;
  height: 24px;
  width: 24px;
  border-radius: 100px;
  background: #333940;
  cursor: pointer;
}
.range input::-ms-thumb {
  box-sizing: border-box;
  box-shadow: 0px 4px 25px rgba(0, 0, 0, .5);
  border: 6px solid #fff;
  height: 24px;
  width: 24px;
  border-radius: 100px;
  background: #333940;
  cursor: pointer;
}
.range .rangeslider-thumb {
  box-sizing: border-box;
  box-shadow: 0px 4px 25px rgba(0, 0, 0, .5);
  border: 6px solid #fff;
  height: 24px;
  width: 24px;
  border-radius: 100px;
  background: #333940;
  cursor: pointer;
  position: absolute;
  touch-action: pan-x;
  top: 50%;
  transform: translateY(-50%);
  will-change: left;
}
.range .range-output {
  position: absolute;
  left: 6px;
  top: 6px;
  transform-origin: 0 0;
  transition: transform 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  user-select: none;
}
.range .range-output .output {
  display: block;
  position: absolute;
  height: 60px;
  line-height: 60px;
  min-width: 32px;
  padding: 0 20px;
  top: - -2px;
  transform: translate(-50%, -100%);
  background: #383c42;
  color: #fff;
  border-radius: 100px;
  white-space: nowrap;
  font-weight: bold;
  font-size: 1.2em;
  text-align: center;
}
.range .range-output .output:before {
  content: "";
  position: absolute;
  bottom: - 12px;
  left: 50%;
  border: 10px solid #383c42;
  border-bottom: none;
  border-left-color: transparent;
  border-right-color: transparent;
  transform: translateX(-50%);
}
body {
  font-family: Helvetica Neue, Helvetica, Arial;
  font-weight: 300;
}
main {
  display: flex;
  height: 100vh;
  justify-content: center;
  align-items: center;
  color: #333;
}
form {
  max-width: 500px;
  min-width: 320px;
}
h2 {
  font-weight: 300;
  text-align: center;
  margin-bottom: 30px;
  color: white;
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
<main>
  <form action = "priceServlet" method = "post" oninput="output.value = range.valueAsNumber">
    <h2 class="nameYourPrice">
      Name your price
    </h2>
     <div class="range">
      <input name="range" type="range" min="0" max="100000">
      <div class="range-output">
      	
      <!-- The output name is what I will use in Servlet -->
        <output class="output" name="output" for="range">
          0
        </output>
      </div>
    </div>
    <button type = "submit" class = "btn btn-default">Submit</button>
    
  </form>
   
   <br>
  <p>Your results</p>
  
<!--  Experimenting -->

<!-- <c:if test="${results !=null }">
<table>
<c:forEach items = "${result }" var="imageURL">
<tr>
	<td></td>
</tr>
</c:forEach>
</table>
</c:if> -->




 <%request.getAttribute("image"); %>
  <img src = "<%out.println(request.getAttribute("image")); %>"> 
  

 
   
   
   
   
  <style>
  p{color:white;
  	font-size: 25px;}
  </style>
  
  
  
</main>





</body>
</html>