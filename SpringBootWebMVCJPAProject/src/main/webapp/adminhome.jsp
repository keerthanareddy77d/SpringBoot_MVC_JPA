<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
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
<%@ include file="adminnavbar.jsp" %>
<div style="margin-left : 60%">

 <a href="empreg" class="button" > Add Employee</a> 
   <br/><br/><br/>
<a href="viewallemps" class="button" > View All Employees</a>           
<br/><br/><br/>
  <a href="deleteemp" class="button" > Delete Employee</a> 
  <br/><br/><br/>
  <a href="acceptreject" class="button" > Accept/Reject Leaves</a>  
  </div>
</body>
</html>