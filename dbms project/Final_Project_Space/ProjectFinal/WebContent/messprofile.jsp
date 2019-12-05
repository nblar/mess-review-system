<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="project.staffresult" %>
<%@page import="project.staffloginhoja" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mess Staff Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: 'Times New Roman', Times, serif;
        }
        .container {
            margin-top: 10%;
            margin-bottom: 10%;
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
        h4 {
            text-align: center;
        }
        .btn-space {
            margin: 5px;
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
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3 ">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top" src="chef(1).png" alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><%=staffresult.getfname()+" "+staffresult.getlname() %></h4>
                        <p class="card-text lead"></p>
                        <hr class="my-4 bg-dark">
                        <!-- Button -->
                    </div>
                </div>

            </div>
            <div class="col-lg-8 bg-light">
                <h4 class="text-lg-left font-weight-bold text-dark">Staff Id:<%=staffresult.getstaffid()%></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Email:<%=staffresult.getstaffemail()%></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Salary:<%=staffresult.getstaffsalary()%></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Job Role:</h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Address:<%=staffresult.getstaffaddr()%></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Contact Information:<%=staffresult.getstaffcontact()%></h4>
                <br>
            </div>
        </div>
    </div>
   
</body>

</html>