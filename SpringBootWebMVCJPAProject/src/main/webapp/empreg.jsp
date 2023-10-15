<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style>
 body,html{
 background-color: #ffd1d6;
 }
 .gradient-custom {
/* fallback for old browsers */
background: #ffd1d6;

/* Chrome 10-25, Safari 5.1-6 */
background: #ffd1d6;

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: #ffd1d6)
}

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<br>
<!--  
<h3 align=center><u>Employee Registration</u></h3>

<br>


<form method="post" action="insertemp">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<input type="radio" name="gender" value="MALE" required/>Male
<input type="radio" name="gender" value="FEMALE" required/>Female
<input type="radio" name="gender" value="OTHERS" required/>Others
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Department</label></td>
<td>
<select name="dept" required>
<option value="">---Select---</option>
<option value="SALES">Sales</option>
<option value="TECHNICAL">Technical</option>
<option value="MARKETING">Marketing</option>
<option value="OTHERS">Others</option>
</select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Salary</label></td>
<td><input type="number" name="salary" step="0.01" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><input type="text" name="location" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" pattern="[6789][0-9]{9}"  placeholder="Must be 10 digits" required/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form>


-->

 <section class="vh-100 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add Employee</h2>

              <form method="post" action="insertemp">

                <div class="form-outline mb-4">
                   <label class="form-label" for="form3Example4cg">Name</label>
                
                  <input type="text" name="name" placeholder="Enter employee name" id="form3Example1cg" class="form-control form-control-lg" />
                </div>

<div class="form-outline mb-4">
<label class="form-label" for="form3Example4cg">Gender</label>
 </div>
 <div class="form-outline mb-4">
<input type="radio" name="gender" value="MALE" required/>Male
<input type="radio" name="gender" value="FEMALE" required/>Female
<input type="radio" name="gender" value="OTHERS" required/>Others
 </div>
<div class="form-outline mb-4">
<label class="form-label" for="form3Example4cg">Date of birth</label>
<input type="date" name="dob" required="required"/>
</div>

<div class="form-outline mb-4">
<label class="form-label" for="form3Example4cg">Department</label>
</div>
                <div class="form-outline mb-4">
                
                <select name="dept" required>
<option value="">---Select---</option>
<option value="SALES">Sales</option>
<option value="TECHNICAL">Technical</option>
<option value="MARKETING">Marketing</option>
<option value="OTHERS">Others</option>
</select>
</div>

 <div class="form-outline mb-4">
<label>Salary</label>
</div>
 <div class="form-outline mb-4">
<input type="number" name="salary" step="0.01" required/>
</div>

<div class="form-outline mb-4">
<label>Email ID</label>
</div>
<div class="form-outline mb-4">
                  <input type="email" name="email" placeholder="Enter employee email" id="form3Example3cg" class="form-control form-control-lg" />
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example4cdg">password</label>
                  <input type="password" name="pwd" id="form3Example4cdg" class="form-control form-control-lg" />
                  
                </div>
<div class="form-outline mb-4">
                   <label class="form-label" for="form3Example4cg">Location</label>
                
                  <input type="text" name="location" placeholder="Address" id="form3Example1cg" class="form-control form-control-lg" />
                </div>
                
                <div class="form-outline mb-4">
                   <label class="form-label" for="form3Example4cg">Contact no.</label>
                <input type="text" name="contact" pattern="[6789][0-9]{9}"  placeholder="Must be 10 digits" required/>
                 </div>
                

                <div class="d-flex justify-content-center">
                  <button type="submit" value="Register"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                </div>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section></body>
</html>
