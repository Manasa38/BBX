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
    
              <img src="data:image/png;base64,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" class="img-rounded" alt="Cinque Terre" width="204" height="236">
      
  <form method="post" action="LoginServlet">
    <div class="form-horizontal">
     <div class="rows-xs-3">
      <label for="email">Email:</label>
     
      <input type="email" class="form-control" id="ex3" id="email" placeholder="Enter email" name="un" required>
    </div>
    </div>
    <div class="form-horizontal">
    <div class="rows-xs-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control"  id="ex3"id="pwd" placeholder="Enter password" name="pw">
    </div>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit">Submit</button>
  </form>
  
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