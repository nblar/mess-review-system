<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="project.result" %>
<%@page import="project.staffloginhoja" %>
<%@page import="project.staffresult" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Guidelines</title>
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
            font-family: 'Times New Roman', Times, serif;;
            background-color: lightgoldenrodyellow;
        }
        #logo {
            height: 40px;
            width: 40px;
        }
        .navbar {
            font-family: 'Times New Roman', Times, serif;;
        }
        .navbar-brand {
            font-family: cursive;
        }
        .container-fluid{
            margin-top:15%;
            margin-bottom: 15%;
        }
        .btn-space {
            margin: 5px;
        }
    </style>
</head>

<body> 
    <div>
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
    </div>
    <div class="col-lg-12 mx-auto">
        
        <div class="container-fluid bg-whitesmoke">
            <h1 style="font-family: 'Times New Roman', Times, serif; text-align: center;">MESS GUIDELINES</h1>
            <div class="embed-responsive embed-responsive-16by9">
                <object data="mess.pdf" type="application/pdf">
                </object>
            </div>
        </div>
    </div>
</body>

</html>