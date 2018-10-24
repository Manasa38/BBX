<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@page import="com.training.bean.UserBean"%>
    	<%@ page language="java" import="java.util.*,com.training.bean.*"%>
    	
  
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
      <a class="navbar-brand" href="Home.jsp">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">About</a></li>
      
      </ul>
      <ul class="nav navbar-nav navbar-right">
               <li><a method="doget" href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
       
   
      </ul>
    </div>
  </div>
</nav>
 
<div class="container-fluid text-center">   
  <div class="row content">
    <div class="col-sm-1 sidenav">
      <p><a href="SearchBike.jsp">BIKES</a></p>
      <p><a href="SearchBooks.jsp">BOOKS</a></p>
     
    </div>
    <div class="col-sm-10 text-center">
    <div class="container">
    
  <h2>BIKES</h2>
  <form class="form-horizontal" action="Bike.jsp">
    <div class="form-group">
      <label class="control-label col-sm-2" for="o">Company:</label>
      <div class="col-sm-2">
       <select class="form-control" >
              <option>honda</option>
                <option>ford</option>
                <option>hero</option>
            <option>bajaj</option>
              </select>
          
         
      </div>
          </div>
      
          <div class="form-group">
      
        <label class="control-label col-sm-2" for="o">Year Of Manufacture:</label>
      <div class="col-sm-2">
       <select class="form-control" >
              <option>2012</option>
                <option>2014</option>
                <option>2009</option>
            <option>2013</option>
              </select>
          
         
      </div>
    </div>
 
  <form class="form-inline" action="Bike.jsp">
      <div class="form-group">
      <label class="control-label col-sm-2" >Mileage:</label>
             <div class="col-sm-2">
             
              <select class="form-control" >
              <option>100</option>
                <option>200</option>
                <option>300</option>
            <option>400</option>
              </select>
          
            to
                   

             <select class="form-control" >
              <option>200</option>
                <option>300</option>
                <option>400</option>
            <option>500 and above</option>
              </select>
          
          
 <hr>
    
    <div class="form-group-center">       
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">OK</button>
        
      </div>
    </div>
      </div>
    </div>
   
  </form>
  </form>
</div>

    
     
    

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