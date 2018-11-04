<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" >
    <title>Cards</title>
    <link rel="stylesheet" href="/web/user/css/cards.css">
</head>

<!-- Load an icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>

<header>
    <div class="nav">
    <ul class="menu">
        <li><a href="/newNorthwood/web/user/cards.jsp">Home</a></li>
        <li><a href="/newNorthwood/web/user/signin.jsp">Login</a></li>
        <li><a href="">Log Out</a></li>
    </ul>
    </div>
</header>
<div class="msg">
    <h1>Welcome To GeniusHub</h1>
</div>

<!-- <p>Resize the browser window to see the effect.</p> */ -->

<div class="row">

    <div class="column">
        <a style="text-decoration:none" href="signin.jsp">
        <div class="card" id = 'card1'>
            <div><h3>Login</h3></div>
        </div></a>
    </div>

    <div class="column">
        <a style="text-decoration:none" href="RegPage.jsp">
        <div class="card" id='card2'>
            <div ><h3>Register</h3></div>
        </div></a>
    </div>

    <div class="column">
        <a style="text-decoration:none" href="">
        <div class="card" id='card3'>
            <h3>Flip Game</h3>
        </div></a>
    </div>

    <div class="column">
        <div class="card" id='card4' >
            <h3>Food Feedback</h3>
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
            <h3>Reminders</h3>
        </div>
    </div>

    <div class="column">
        <div class="card" id='card7'>
            <h3>Memo</h3>
        </div>
    </div>

    <div class="column">
        <div class="card" id='card8'>
            <h3>Log Out</h3>
        </div>
    </div>
</div>

</body>
</html>