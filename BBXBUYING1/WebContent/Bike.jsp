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
      <a class="navbar-brand" href="#">About Us</a>
    </div>
 
      <ul class="nav navbar-nav navbar-right">
          <li><a method="doget" href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
  
  
      </ul>
    </div>
 
</nav>
 
<div class="container-fluid text-center">  
  <div class="row content">
    <div class="col-sm-1 sidenav">
    
    
    </div>
    <div class="col-sm-10 text-center">
   
    
<%!List<Bike> bikes = new ArrayList<Bike>();%>
<%
    Bike bike = new Bike();
    bike.setImage("bike/bike4.jpg");
    bike.setBikeId("1289 ");
    bike.setBikeType("TWO WHEELER");
    bike.setCompany("BAJAJ");
    bike.setModel("AVENGER 150");
    bike.setYom(1998);

    bikes.add(bike);

    bike = new Bike();
    bike.setImage("bike/bike3.jpeg");
    bike.setBikeId("1496 ");
    bike.setBikeType("TWO WHEELER");
    bike.setCompany("HERO");
    bike.setModel("SPLENDOR +");
    bike.setYom(2000);
    bikes.add(bike);

    bike = new Bike();
    bike.setImage("bike/bike2.jpeg");
    bike.setBikeId("1789 ");
    bike.setBikeType("TWO WHHEELER");
    bike.setCompany("BAJAJ");
    bike.setModel(" DUKE 250");
    bike.setYom(2010);
    bikes.add(bike);
%>

<table border="2" width=300 height=50 align=center>
    <%
        for (Bike b : bikes) {
    %>
    <tr>
        <td><a href="DetailsOfBikes.jsp"><img src=<%=b.getImage() %> /></a></td></td>
        <td><%=b.getBikeId()%></td>
        <td><%=b.getBikeType()%></td>
        <td><%=b.getCompany()%></td>
        <td><%=b.getModel()%></td>
        <td><%=b.getYom()%></td>

    </tr>
    <%
        }
    %>

</table>   
 

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