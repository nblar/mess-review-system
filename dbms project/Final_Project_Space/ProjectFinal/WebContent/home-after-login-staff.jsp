<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%@page import="project.reteriverating" %>
<%@page import="project.rating" %>
<%@page import="project.staffresult" %>
<%@page import="project.staffloginhoja" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Home</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>


  <style>
    body {
      font-family: 'Times New Roman', Times, serif;
    }
    #logo {
      height: 40px;
      width: 40px;
    }
    .navbar {
      font-family: 'Times New Roman', Times, serif;
    }
    .navbar-brand {
      font-family: cursive;
    }
    .btn-space {
      margin: 5px;
    }
    .carousel {
      margin-bottom: 4rem;
    }
    .carousel-inner img {
      position: relative;
      width: 100%;
      overflow: hidden;
      overflow-x: hidden;
      overflow-y: hidden;
    }
    .fa {
      font-size: 25px;
    }
    .container {
      font-family: cursive;
    }
    .checked {
      color: orange;
    }
    /* Three column layout */
    .side {
      float: left;
      width: 15%;
      margin-top: 10px;
    }
    .middle {
      margin-top: 10px;
      float: left;
      width: 70%;
    }
    /* Place text to the right */
    .right {
      text-align: right;
    }
    /* Clear floats after the columns */
    .row:after {
      content: "";
      display: table;
      clear: both;
    }
    /* The bar container */
    .bar-container {
      width: 100%;
      background-color: #f1f1f1;
      text-align: center;
      color: white;
    }
    /* Individual bars */
    .bar-5 {
      width: 60%;
      height: 18px;
      background-color: #4CAF50;
    }
    .bar-4 {
      width: 30%;
      height: 18px;
      background-color: #2196F3;
    }
    .bar-3 {
      width: 10%;
      height: 18px;
      background-color: #00bcd4;
    }
    .bar-2 {
      width: 4%;
      height: 18px;
      background-color: #ff9800;
    }
    .bar-1 {
      width: 15%;
      height: 18px;
      background-color: #f44336;
    }
    /* Responsive layout - make the columns stack on top of each other instead of next to each other */
    @media (max-width: 400px) {
      .side,
      .middle {
        width: 100%;
      }
      .right {
        display: none;
      }
      h2 {
        font-size: 3rem;
      }
    }
  </style>

</head>

<body>


    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark ">
            <a class="navbar-brand .text-white" href="Home-after-login.html"><img src="logo.png" alt="Rnsit logo" id="logo"><b>RNSIT
                    MESS</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto btn-space">
                    <li class="nav-item">
                     <form action="home-after-login-staff.jsp"> 
                         <button class="btn btn-outline-success my-1 my-sm-1 btn-space" type="submit"><b>HOME</b></button> 
                     </form>
                    </li>
                    <li class="nav-item">
                     <form action="menu-after-login-staff.jsp" method="POST">
                          <button class="btn btn-outline-success my-1 my-sm-1 btn-space" type="submit"><b>MENU</b></button>
                     </form>
                    </li>
                    <li class="nav-item ">
                     <form action="guidelines-after-login-staff.jsp"> 
                         <button class="btn btn-outline-success my-1 my-sm-1 btn-space" type="submit"><b>GUIDELINES</b></button> 
                     </form>
                    </li>
            
                  </ul>
                 <form action="messprofile.jsp" class="form-inline my-2 my-lg-0" >
      	<button class="btn btn-outline-light my-1 my-sm-1 btn-space" type="submit"><b><%=staffresult.getstaffid()%></b></button>
      </form>
                <form action="homejsp.jsp" class="form-inline my-2 my-lg-0" >
                    <button class="btn btn-outline-warning my-1 my-sm-1 btn-space" type="submit"><b>LOGOUT</b></button> 
            </form>
            </div>
        </nav>


  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://upload.wikimedia.org/wikipedia/commons/f/f2/Infosys.Electronic.City.Cafeteria.JPG"
          class="d-block w-100" height="800px" alt="...">
      </div>
      <div class=" carousel-item">
        <img src="Cafeteria-tables.jpg" class="d-block w-100" height="800px" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <div>

  </div>
  <div class="container bg-light shadow p-3">
    <h2 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>MESS FOOD REVIEW</a></h2>
    <div class="row">
      <div class="col-lg-6">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>MONDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getMonday()%> <span class="fa fa-star checked"></span></h4>
           </div> 
        </div>
        <!-- Card -->
      </div>
      <br>
      <div class="col-lg-6">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>TUESDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getTuesday()%><span class="fa fa-star checked"></span></h4>
           </div>
        </div>
        <!-- Card -->
      </div>
      <br>
    </div>
    <br>
    <div class="row">
      <div class="col-lg-6">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>WEDNESDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getWednesday()%> <span class="fa fa-star checked"></span></h4>
           </div> 
        </div>
        <!-- Card -->
      </div>
      <br>
      <div class="col-lg-6">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>THURSDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getThursday()%> <span class="fa fa-star checked"></span></h4>
            
          </div>
        </div>
        <!-- Card -->
      </div>
      <br>
    </div>
    <br>
    <div class="row">
      <div class="col-lg-6">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>FRIDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getFriday()%>  <span class="fa fa-star checked"></span></h4>
            
          </div>
        </div>
        <!-- Card -->
      </div>
      <br>
      <div class="col-lg-6">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>SATURDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getSaturday()%>  <span class="fa fa-star checked"></span></h4>
          </div>
        </div>
        <!-- Card -->
      </div>
      <br>
    </div>
    <br>
    <div class="row">
      <div class="col-lg-6 mx-auto">
        <!-- Card -->
        <div class="card booking-card shadow p-3 ">
          <!-- Card content -->
          <div class="card-body">
            <!-- Title -->
            <h3 class="card-title font-weight-bold" style="text-align: center; font-size: 3rem;"><a>SUNDAY</a></h3>
            <hr style="border:3px solid #f1f1f1">
            <h4 class=" text-lg-center font-weight-bold">Average Rating:<%=reteriverating.getSunday()%>  <span class="fa fa-star checked"></span></h4>
			</div>
        </div>
        <!-- Card -->
      </div>
      <br>
    </div>
    <br>

  </div>


</body>

</html>