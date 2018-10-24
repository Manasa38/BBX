<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BBX</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
function validate()
{

 var userName = document.form.userName.value;

 var password = document.form.password.value;
 var confirmpassword= document.form.confirmpassword.value;
 
 
 if (userName==null || userName=="")
 {
 alert("Username can't be blank");
 return false;
 }
 else if(password.length<6)
 {
 alert("Password must be at least 6 characters long.");
 return false;
 }
 else if (password!=confirmpassword)
 {
 alert("Confirm Password should match with the Password");
 return false;
 }
 }
</script>
  
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
   
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
   
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
   
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 20px;
    }
   
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 25px;
      }
      .row.content {height:auto;}
    }
    input[type=text] {
    width: 180px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */

  </style>
  </head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                       
      </button>
      <a class="navbar-brand" href="Home.jsp">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">About</a></li>
      
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
            <li><a href="Register.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a></li>
   
      </ul>
    </div>
  </div>
</nav>
 
<div class="container-fluid text-center">   
  <div class="row content">
    <div class="col-sm-1 sidenav">
    
    </div>
    <div class="col-sm-10 text-center">
    
     

     <img src="https://cdn.iconscout.com/public/images/icon/free/png-256/account-profile-avatar-man-circle-round-user-3ce4172e278680ce-256x256.png">

<form name="form" method="post" action="RegisterServlet" onsubmit = "return validate()">
  Email:<br>
  <input type="text" name="userName"  required><br>
  
  Password:<br>
  <input type="password" name="password" required><br>
  
  Confirm Password:<br>
  <input type="password" name="confirmpassword" required  ><br>
  <%=(request.getAttribute("errorMessage")==null) ? ""
		  :request.getAttribute("errorMessage")%>
  
 
 <br>
  <input type="submit" value="Register">
</form>

    
     <!-- input type="text" name="search" placeholder="Search..">  -->
    </div>
   
    <div class="col-sm-1 sidenav">
   
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>BOOKS AND BIKES EXCHANGE</p>
</footer>

</body>
</html>