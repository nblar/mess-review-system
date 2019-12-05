<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.util.*,java.sql.*" %>
<%@page import="project.menureturn" %>
<%@page import="project.result" %>
<%@page import="project.staffloginhoja" %>
<%@page import="project.staffresult" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Menu</title>
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

        .container {
            margin-top: 10%;
            margin-top: 10%;
        }

        h4 {
            text-align: center;
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

    <div class="container bg-white">
        <div class="row">
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>MONDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div><br>
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>TUEDSDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong1">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div>
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>WEDNESDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong2">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div>
        </div>
        <br><br><br>

        <div class="row">
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>THURSDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong3">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div>
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>FRIDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong4">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div>
            <div class="col-lg-4 col-sm-4 ">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>SATURDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong5">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div>
        </div>
        <br><br><br>

        <div class="row">
            <div class="col-lg-4 col-sm-4 mx-auto">
                <!-- Card -->
                <div class="card booking-card shadow p-3">

                    <!-- Card image -->
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">

                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><a>SUNDAY</a></h4>
                        <!-- Data -->
                        <ul class="list-unstyled list-inline rating mb-0">
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                            <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                        </ul>
                        <!-- Text -->
                        <p class="card-text lead"></p>
                        <hr class="my-4">
                        <!-- Button -->
                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal"
                            data-target="#exampleModalLong6">
                            Menu Item
                        </button>

                    </div>

                </div>
                <!-- Card -->

            </div>
        </div>

    </div>
    <div class="modal fade " id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">
        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>MONDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                   <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(0)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(1) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(2) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade " id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">

        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>TUEDSDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                     <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(3)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(4) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(5) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>



    </div>
    <div class="modal fade " id="exampleModalLong2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">

        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>WEDNESDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                     <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(6)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(7) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(8) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>



    </div>
    <div class="modal fade " id="exampleModalLong3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">

        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>THURSDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(9)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(10) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(11) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>



    </div>
    <div class="modal fade " id="exampleModalLong4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">

        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>FRIDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                     <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(12)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(13) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(14) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>



    </div>
    <div class="modal fade " id="exampleModalLong5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">

        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>SATURDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                     <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(15)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(16) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(17) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>



    </div>
    <div class="modal fade " id="exampleModalLong6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">

        <div class="col-lg-4 mx-auto">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">

                    <div class="modal-body">

                        <!-- Card -->
                        <div class="card booking-card shadow p-3">

                            <!-- Card image -->
                            <div class="view overlay">
                                <img class="card-img-top"
                                    src="https://mdbootstrap.com/img/Photos/Horizontal/Food/8-col/img (5).jpg"
                                    alt="Card image cap">
                                <a href="#!">
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!-- Card content -->
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="card-title font-weight-bold"><a>SUNDAY</a></h4>
                                <!-- Data -->
                                <ul class="list-unstyled list-inline rating mb-0">
                                     <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Breakfast:<%=menureturn.getUSN(18)%></i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Lunch:<%=menureturn.getUSN(19) %> </i></li>
                            <li class="list-inline-item mr-0"><i class="fas fa-star amber-text">Dinner: <%=menureturn.getUSN(20) %></i></li>
                                    <li class="list-inline-item mr-0"><i class="fas fa-star amber-text"></i></li>
                                    <li class="list-inline-item"><i class="fas fa-star-half-alt amber-text"></i></li>
                                </ul>
                                <!-- Text -->
                                <p class="card-text lead"></p>
                                <hr class="my-4">
                                <!-- Button -->
                                <button class="btn btn-primary btn-block" type="button" data-toggle="modal"
                                    data-target="1">SEE
                                    ITEM</button>
                            </div>

                        </div>
                        <!-- Card -->


                    </div>

                </div>
            </div>
        </div>



    </div>
</body>

</html>