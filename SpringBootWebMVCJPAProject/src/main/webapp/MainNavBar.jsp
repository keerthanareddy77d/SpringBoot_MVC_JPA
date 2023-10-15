<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>ELM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
  
}
.bgimg {
  background-position: center;
  background-size: cover;
  background-image: url("/images/LeaveEase.jpg");
  min-height: 100%;
}

.menu {
  display: none;
}
</style>
</head>
<body>

<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-padding w3-pale-red">
  <div class="w3-col s3">
      <img src="/images/logo.png" width="120" height="50">
    </div>
    <div class="w3-col s1" >
      <a href="#" class="w3-button w3-block w3-red">HOME</a>
    </div>
    <div class="w3-col s1">
      <a href="#about" class="w3-button w3-block w3-red">ABOUT</a>
    </div>
    <div class="w3-col s2">
      <a href="#menu" class="w3-button w3-block w3-red">OBJECTIVES</a>
    </div>
    <div class="w3-col s1">
      <a href="#where" class="w3-button w3-block w3-red">CONTACT</a>
    </div>
    <div class="w3-col s1">
      <a href="/login" class="w3-button w3-block w3-red">LOGIN</a>
    </div>
  </div>
</div>
<div>
</div>
<!-- Header with image -->

<header  class="bgimg w3-display-container w3-redscale-min" id="home">

  <div class="w3-display-bottomleft w3-center w3-padding-large w3-hide-small">

    <span class="w3-tag">24/7 service</span>
  </div>
<!--   <div class="w3-display-middle w3-center">
    <span class="w3-text-white" style="font-size:90px">the<br>Cafe</span>
  </div>-->
</header>

<!-- Add a background color and large text to the whole page -->
<div class="w3-sand w3-redscale w3-large">

<!-- About Container -->
<div class="w3-container" id="about">
  <div class="w3-content" style="max-width:700px">
    <h5 class="w3-center w3-padding-64"><span class="w3-tag w3-wide w3-red">About Employee Leave Management System</span></h5>
    <p>Welcome to LeaveEase - Your Employee Leave Management System

At LeaveEase, we understand that managing employee leave can be a challenging and time-consuming task for businesses of all sizes. That's why we've developed a state-of-the-art Employee Leave Management System that simplifies the process and empowers organizations to manage their workforce more efficiently.</p>
    <div class="w3-panel w3-leftbar w3-light-grey">
      <p><i>Leave Smarter, Work Better</i></p>
    </div>
    <p>Our team is made up of a dedicated team of professionals who have years of experience in software development, human resources, and business operations. We're passionate about creating innovative solutions to help organizations streamline their HR processes.</p>
    </div>
</div>

<!-- Menu Container -->
<div class="w3-container" id="menu">
  <div class="w3-content" style="max-width:700px">
 
    <h5 class="w3-center w3-padding-48"><span class="w3-tag w3-wide w3-red">The objectives</span></h5>
  
    <div class="w3-row w3-center w3-card w3-padding">
      <a href="javascript:void(0)" onclick="openMenu(event, 'mission');" id="myLink">
        <div class="w3-col s6 tablink">Mission</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'vision');">
        <div class="w3-col s6 tablink">Vision</div>
      </a>
    </div>

    <div id="mission" class="w3-container menu w3-padding-48 w3-card">
      <p class="w3-text-grey">"Our mission is to provide organizations with an efficient and user-friendly Employee Leave Management System that simplifies leave processes, enhances employee satisfaction, and ensures compliance with labor laws and company policies. We aim to streamline HR operations, reduce administrative burden, and empower businesses to allocate their resources where they matter most."</p><br>
     </div>

    <div id="vision" class="w3-container menu w3-padding-48 w3-card">
      <p class="w3-text-grey">"Our vision is to be the leading provider of Employee Leave Management Systems globally, revolutionizing the way businesses handle leave management. We envision a world where leave requests are managed effortlessly, where employees are more engaged and productive, and where HR professionals have the tools they need to navigate the complexities of leave policies and regulations. We will continuously innovate, adapt, and expand our solutions to meet the evolving needs of organizations, ensuring that they can effectively manage and nurture their most valuable asset: their people."</p>
    </div>  
   </div>
</div>

<!-- Contact/Area Container -->
<div class="w3-container" id="where" style="padding-bottom:32px;">
  <div class="w3-content" style="max-width:700px">
    <h5 class="w3-center w3-padding-48"><span class="w3-tag w3-wide w3-red">WHERE TO FIND US</span></h5>
    <p><strong>Contact-us</strong> </p>
    <form action="https://formspree.io/f/generatedKey" method="POST">
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="email" placeholder="Email" required name="People"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Subject" required name="People"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p><button class="w3-button w3-black" type="submit">SEND MESSAGE</button></p>
    </form>
   <!--   <form action="https://formspree.io/f/moqoakan" method="POST">  
  
  
           <input type="text" name="name" placeholder="Fullname" required>  
            <input type="email" name="email" placeholder="Email Address" required>  
            <textarea name="message" placeholder="Your questions..." cols="30" rows="5" required></textarea>  
            <button type="submit" >Send message</button>  
  
        </form>  
        -->
  </div>
</div>

<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-48 w3-large w3-red">
  <p>@Copyright <a href="/" title="LeaveEase" target="_blank" class="w3-hover-text-green">LeaveEase</a></p>
</footer>

<script>
// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" w3-dark-grey", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-dark-grey";
}
document.getElementById("myLink").click();
</script>

</body>
</html>