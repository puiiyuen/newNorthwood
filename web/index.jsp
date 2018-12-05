<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-11-03
  Time: 16:12
  To change this template use File | Settings | File Templates.
  
  Index 43: Welcome page – complexity 8
As a resident I would like a friendly/easy to use welcome page so that I can feel confident to use the app
Given a user visits the app when they click on a card then they are taken to the page they wanted. 

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<%@ page import="com.User.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personal Assistant</title>
    <link rel="stylesheet" href="index/css/index.css">
    <link rel="stylesheet" href="public_css/font-awesome.min.css">

</head>

<!-- Load an icon library -->

<body>

<%
    String logStatus = (String) session.getAttribute("LogSuccess");
    String log, reg, username;
    String logLink, regLink;

    User user = new User();

    if (logStatus == null) {
        log = "Log in";
        logLink = "user/login.jsp";
        regLink = "user/register.jsp";
        username = "";
        reg = "Register";
    } else {
        logLink = "user/logout.jsp";
        log = "Log out";
        regLink = "#";
        username = user.getUsernameInDB(logStatus)[0];
        reg = "Flip Game";
    }

%>

<header>
    <div class="nav">
        <ul class="menu">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">Search</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="<%=logLink%>"><%=log%>
            </a></li>
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
    <h1><%=username%>
    </h1>
    <h1>Welcome To GeniusHub</h1>
</div>

<!-- <p>Resize the browser window to see the effect.</p> */ -->

<div class="row">
    <div class="column">
        <a href="<%=logLink%>">
            <div class="card" id='card1'>
                <h3><%=log%>
                </h3>
            </div>
        </a>
    </div>

    <div class="column">
        <a href="<%=regLink%>">
            <div class="card" id='card2'>
                <h3><%=reg%>
                </h3>
            </div>
        </a>
    </div>

    <div class="column">
        <a href="DeepBreath-master/etc/heartMain.html">
            <div class="card" id='card3'>
                <h3>Deep Breath</h3>
            </div>
        </a>
    </div>

    <div class="column">
        <a href="food-feedback/food_feedback.jsp">
            <div class="card" id='card4'>
                <h3>Food</h3>
            </div>
        </a>
    </div>
</div>

<div class="row">
    <div class="column">
        <div class="card" id='card5'>
            <h3>Option 0</h3>
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
        <div class="card" id='card8'>
            <h3>Option 3</h3>
        </div>
    </div>
</div>

</body>
</html>
