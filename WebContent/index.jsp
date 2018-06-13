<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Google fonts -->
<link href="https://fonts.googleapis.com/css?family=Aldrich|Tangerine:700" rel="stylesheet">

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<title>Luxury for Sale</title>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="images/index.png" style="width:45%;" class="w3-round"><br><br>
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
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="images/index.png" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>Luxury Cars</b></h1>
    <style> 
    h1{
    font-family: 'Tangerine', cursive;
    font-weight: bold;
    font-size: 85px;
    }
    </style>
    
      <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span> 
      <button class="w3-button w3-black">ALL</button>
      <a href = "./price.jsp"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Price</button></a>
       <a href = "./model.jsp"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Model</button></a>
     </div>
    </div>
  </header>
 
  
  <!-- First Photo Grid-->
 
  
  <!-- This is a 2018 BMW M3 -->

  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img name = "BMW" class = "myImg" src="images/2018BMWM3.jpg" alt="New 2018 BMW M3" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        
      </div>
    </div>
  
  
   
   <!-- This is a 2012 Chevrolet Cruze -->
    <div class="w3-third w3-container w3-margin-bottom">
      <img class = "myImg" src="images/Chevrolet%20Cruize%20Station%20Wagon.jpg" alt="Used 2012 Chevrolet Cruze Station Wagon" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
      
      </div>
    </div>
    
    <!-- This is a 2012 BMW x6 Mineral Silver Metallic -->
    <div class="w3-third w3-container">
      <img class = "myImg" src="images/Bmw%20x6%20mineral%20silver%20metallic.jpg" alt="Used 2012 BMW x6" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        
      </div>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  
  <!-- This is a 2018 Mazda 3 -->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img class = "myImg" src="images/2018%20Mazda%203.jpg" alt="New 2018 Mazda 3" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
       
      </div>
    </div>
    
    <!-- This is a 2017 Smart ForTwo -->
    <div class="w3-third w3-container w3-margin-bottom">
      <img  class = "myImg" src="images/2017%20smart%20fortwo.jpg" alt="New 2017 Smart ForTwo" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
       
      </div>
    </div>
    
    <!-- This is a 2018 Hyndai Tucson -->
    <div class="w3-third w3-container">
      <img class = "myImg" src="images/2018%20Hyndai%20Tucson.jpg" alt="New 2018 Hyndai Tucson" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        
      </div>
    </div>
  </div>
  
  <!-- Third photo Grid -->
 
 <!-- This is a 2018 Honda Vezel -->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img class = "myImg" src="images/2018%20Honda%20Vezel.jpg" alt="New 2018 Honda Vezel" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
      
      </div>
    </div>
   
  <!-- This is a 2017 Lamborgini Aventador -->
    <div class="w3-third w3-container w3-margin-bottom">
      <img class = "myImg" src="images/2017%20Lamborghini%20Aventador.jpg" alt="New 2017 Lamborgini Aventador" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
       
      </div>
    </div>
    
    <!-- This is a 2016 Chevrolet Camaro -->
    <div class="w3-third w3-container">
      <img class = "myImg" src="images/2016%20Chevrolet%20Camaro.jpg" alt="Used 2016 Chevrolet Camaro" style="width:100%" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        
      </div>
    </div>
    
    
    
    
    
    <!-- Script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    
    
    
    
    <!-- THE MODAL -->
    <div id="myModal" class="modal">

  <!-- The Close Button -->
  <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>

  <!-- Modal Content (The Image) -->
  <img class="modal-content" id="img01">

  <!-- Modal Caption (Image Text) -->
  <div id="caption"></div>
</div>


<!-- CSS -->
<script>
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = $('.myImg');
var modalImg = $("#img01");
var captionText = document.getElementById("caption");
$('.myImg').click(function(){
    modal.style.display = "block";
    var newSrc = this.src;
    modalImg.attr('src', newSrc);
    captionText.innerHTML = this.alt;
});

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

</script>
<style>
.myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

.myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption {
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)}
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)}
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
   
      
    </div>
    


  <!-- Bidding section -->
  
    
    <h4 class = "bid">Bid on a car</h4>
    <style> 
    h4.bid{font-family: 'Aldrich', sans-serif;
    font-weight: bold;
    font-size: 20px;}
    </style>
    <!-- Pricing Tables -->
    
    <!-- Bid one -->
    <!-- This is a 2018 Jeep Grand Cherokee -->
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Bid</li>
          <li><img src="images/2018%20Jeep%20Grand%20Cherokee.jpg" alt="2018 Jeep Grand Cherokee" style="width:100%" class="w3-hover-opacity">
            <h2>$30,000</h2>
            <span class="w3-opacity">minimum bid</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a href = "./bid1.jsp"><button class="w3-button w3-teal w3-padding-large w3-hover-black">Bid now!</button></a>
          </li>
        </ul>
      </div>
      
      <!-- Bid two -->
      <!-- This is a 2018 Jeep Wrangler -->
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-teal w3-xlarge w3-padding-32">Bid</li>
          <li><img src="images/2018%20Jeep%20Wrangler.jpg" alt="Smart Car" style="width:100%" class="w3-hover-opacity">
            <h2>$16,000</h2>
            <span class="w3-opacity">minimum bid</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
           <a href = "./bid2.jsp"><button class="w3-button w3-teal w3-padding-large w3-hover-black">Bid now!</button></a>
          </li>
        </ul>
      </div>
      
      <!-- Bid three -->
      <!-- This is a Ferrari F12Berlinetta V12 -->
      <div class="w3-third">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Bid</li>
          <li><img src="images/Ferrari%20F12Berlinetta%20V12.jpg" alt="Ferrari" style="width:100%" class="w3-hover-opacity">
            <h2>$42,000</h2>
            <span class="w3-opacity">minimum bid</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
           <a href = "./bid3.jsp"> <button class="w3-button w3-teal w3-padding-large w3-hover-black">Bid now!</button></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">

  </footer>
  
  

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>

