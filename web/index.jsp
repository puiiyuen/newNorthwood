<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-11-03
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personal Assistant</title>
    <link rel="stylesheet" href="index/css/cards.css">
    <link rel="stylesheet" href="public_css/font-awesome.min.css">

</head>

<!-- Load an icon library -->

<body>


<header>
    <div class="nav">
        <ul class="menu">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">Search</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="user/login.jsp">Login</a></li>
        </ul>
    </div>
</header>

<!-- Nav Bar added by Emily -->
<!-- Add icons to bar -->
<!--<div class="navbar">
    <a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a>
    <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>
    <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>
    <a href="#"><i class="fa fa-fw fa-user"></i> Login</a>
</div>
-->
<div class="msg">
    <h1>Welcome To HELLEN</h1>
</div>

<!-- <p>Resize the browser window to see the effect.</p> */ -->

<div class="row">
    <div class="column">
        <a href="user/login.jsp">
            <div class="card" id = 'card1'>
                <h3>Login</h3>
            </div>
        </a>
    </div>

    <div class="column">
        <a href="user/register.jsp">
            <div class="card" id='card2'>
                <h3>Register</h3>
            </div>
        </a>
    </div>

    <div class="column">
        <div class="card" id='card3'>
            <h3>Flip Game</h3>
        </div>
    </div>

    <div class="column">
        <div class="card" id='card4' >
            <h3>Food</h3>
        </div>
    </div>
</div>

<div class="row">
    <div class="column">
        <div class="card" id='card5'>
            <h3>Deep Breath</h3>
        </div>
    </div>

    <div class="column">
        <div class="card" id='card6'>
            <h3>Option 1</h3>
        </div>
    </div>

    <div class="column">
        <div class="card" id='card7'>
            <h3>Option 2</h3>
        </div>
    </div>

    <div class="column">
        <a href="user/logout.jsp">
            <div class="card" id='card8'>
                <h3>Logout</h3>
            </div>
        </a>
    </div>
</div>

</body>
</html>