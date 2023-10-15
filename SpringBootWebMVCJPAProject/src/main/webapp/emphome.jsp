<html>
<head>
<meta charset="UTF-8">
<title>ELM</title>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
  background-image:url("/images/loginside.jpg");
}
</style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<p style="text-align: center;font-size: 30pt; ">Welcome ${ename}</p>
<div style="margin-left : 60%">

 <a href="reqleave" class="button" >Apply Request</a> 
   <br/><br/><br/>
<a href="cancelleave" class="button" >Cancel Request</a>     
<br/><br/><br/>
  <a href="leavehistory" class="button">View Leave History</a> 
      
<br/><br/><br/>
  <a href="updateprofile" class="button" >Update Profile</a> 

</body>
</html>