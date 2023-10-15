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
.button {
        background-color: #2c1aed;
        border: none;
        border-radius: 10px ;
        color: white;
        padding: 20px 40px;
        text-align: center;
        text-decoration: none;
        font-size: 20px;
        cursor: pointer;
      }
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
  background-image:url("/images/loginside.jpg");
}
.rounded-corners {
  border-radius: 5px;
}
.bgimg {
  background-position: center;
  background-size: cover;
  background-image: url("/images/LeaveEase.jpg");
  min-height: 100%;
}
.center {
  margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
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
      <a href="/" class="w3-button w3-block w3-red">HOME</a>
    </div>
  </div>
</div>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<div style="margin-left : 60%">

<a href="/emplogin" class="button" > Login as Employee</a>           
<br/><br/><br/>
  <a href="/adminlogin" class="button" > Login as Admin</a>  
  </div>>
</body>
</html>