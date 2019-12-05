
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="project.result,project.demologinjava" %>
<%@page import="java.util.*" %>    
<%@page import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Profile</title>
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
        h6 {
            font-size: 1.4rem;
        }
        .fa {
            font-size: 50px;
        }
        .rating {
            display: flex;
            width: 100%;
            justify-content: center;
            overflow: hidden;
            flex-direction: row-reverse;
            height: 150px;
            position: relative;
        }
        .rating-0 {
            filter: grayscale(100%);
        }
        .rating>input {
            display: none;
        }
        .rating>label {
            cursor: pointer;
            width: 40px;
            height: 40px;
            margin-top: auto;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23e3e3e3' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 76%;
            transition: .3s;
        }
        .rating>input:checked~label,
        .rating>input:checked~label~label {
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23fcd93a' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
        }
        .rating>input:not(:checked)~label:hover,
        .rating>input:not(:checked)~label:hover~label {
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='126.729' height='126.73'%3e%3cpath fill='%23d8b11e' d='M121.215 44.212l-34.899-3.3c-2.2-.2-4.101-1.6-5-3.7l-12.5-30.3c-2-5-9.101-5-11.101 0l-12.4 30.3c-.8 2.1-2.8 3.5-5 3.7l-34.9 3.3c-5.2.5-7.3 7-3.4 10.5l26.3 23.1c1.7 1.5 2.4 3.7 1.9 5.9l-7.9 32.399c-1.2 5.101 4.3 9.3 8.9 6.601l29.1-17.101c1.9-1.1 4.2-1.1 6.1 0l29.101 17.101c4.6 2.699 10.1-1.4 8.899-6.601l-7.8-32.399c-.5-2.2.2-4.4 1.9-5.9l26.3-23.1c3.8-3.5 1.6-10-3.6-10.5z'/%3e%3c/svg%3e");
        }
        .emoji-wrapper {
            width: 100%;
            text-align: center;
            height: 100px;
            overflow: hidden;
            position: absolute;
            top: 0;
            left: 0;
        }
        .emoji-wrapper:before,
        .emoji-wrapper:after {
            content: "";
            height: 15px;
            width: 100%;
            position: absolute;
            left: 0;
            z-index: 1;
        }
        .emoji-wrapper:before {
            top: 0;
            background: linear-gradient(to bottom, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 1) 35%, rgba(255, 255, 255, 0) 100%);
        }
        .emoji-wrapper:after {
            bottom: 0;
            background: linear-gradient(to top, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 1) 35%, rgba(255, 255, 255, 0) 100%);
        }
        .emoji {
            display: flex;
            flex-direction: column;
            align-items: center;
            transition: .3s;
        }
        .emoji>svg {
            margin: 15px 0;
            width: 70px;
            height: 70px;
            flex-shrink: 0;
        }
        #rating-1:checked~.emoji-wrapper>.emoji {
            transform: translateY(-100px);
        }
        #rating-2:checked~.emoji-wrapper>.emoji {
            transform: translateY(-200px);
        }
        #rating-3:checked~.emoji-wrapper>.emoji {
            transform: translateY(-300px);
        }
        #rating-4:checked~.emoji-wrapper>.emoji {
            transform: translateY(-400px);
        }
        #rating-5:checked~.emoji-wrapper>.emoji {
            transform: translateY(-500px);
        }
        .feedback {
            max-width: 360px;
            background-color: #fff;
            width: 100%;
            padding: 30px;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
            align-items: center;
        }
    </style>

</head>

<body>

    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark ">
        <a class="navbar-brand text-white" href="Home-after-login.html"><img src="logo.png" alt="Rnsit logo" id="logo"><b>RNSIT
                MESS</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto btn-space">
        <li class="nav-item">
         <form action="home-after-login.jsp"> 
         	<button class="btn btn-outline-success my-1 my-sm-1 btn-space" type="submit"><b>HOME</b></button> 
         </form>
        </li>
        <li class="nav-item">
         <form action="menu-after-login.jsp" method="POST">
         	 <button class="btn btn-outline-success my-1 my-sm-1 btn-space" type="submit"><b>MENU</b></button>
         </form>
        </li>
        <li class="nav-item ">
         <form action="guidelines-after-login.jsp"> 
         	<button class="btn btn-outline-success my-1 my-sm-1 btn-space" type="submit"><b>GUIDELINES</b></button> 
         </form>
        </li>

      </ul>
      <form action="studentprofile.jsp" class="form-inline my-2 my-lg-0" >
      	<button class="btn btn-outline-light my-1 my-sm-1 btn-space" type="submit"><b><%=result.getUSN()%></b></button>
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
                        <img class="card-img-top" src="graduate-student-avatar(1).png" alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <!-- Card content -->
                    <div class="card-body">
                
                	
    
                        <!-- Title -->
                        <h4 class="card-title font-weight-bold"><%=result.getName()+" "+result.getlname() %></h4>
                        <p class="card-text lead"></p>
                        <hr class="my-4 bg-dark">
                    </div>
                </div>

            </div>
            <div class="col-lg-8 bg-light">
                <h4 class="text-lg-left font-weight-bold text-dark">Universal Student Number:<%=result.getUSN() %></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Email Address:<%=result.getEmail() %></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Branch:<%=result.getBranch() %></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Room No:<%=result.getRoom() %></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Studying Year:<%=result.getSyear() %></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Contact Information:<%=result.getphone()%></h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Mess Fees Paid: 34180</h4>
                <br>
                <h4 class="text-lg-left font-weight-bold text-dark">Amount Due:4520</h4>
                <br>
                <button type="button" class="btn btn-outline-success btn-block font-weight-bold " onclick="location.href='reviewjsp.jsp';">REVIEW</button>
            </div>
        </div>
    </div>
    

</body>

</html>