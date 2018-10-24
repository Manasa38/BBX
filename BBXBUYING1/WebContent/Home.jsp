<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BBX</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    width: 130px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */
input[type=text]:focus {
    width: 100%;
}
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
      <a class="navbar-brand" href="#">About Us</a>
    </div>
  
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
    
     
      <img src="data:image/png;base64,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"  style="width:404px;height:328px;">
    
 

    </div>
    <div class="col-sm-1 sidenav">
   
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>BOOKS AND BIKES EXCHANGE!!!!</p>
</footer>

</body>
</html>