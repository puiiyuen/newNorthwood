<!DOCTYPE html>
<html>
<head>
    <title>Desktop Register Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="/web/user/css/RegPage.css">
    <%-- Having trouble linking the css, so re-added them -Emily--%>

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

<section class="container-fluid">
    <!-- use bootstrap class ! justify-content-center to bring the form in the center of the page-->
    <section class="row justify-content-center">
        <!-- create the bootsrap grid system for tablets (sm) and desktops (md) layouts.-->

        <!-- Nav Bar added by Emily -->
        <!-- Add icons to bar -->
   <!--      <div class="navbar">
            <a href="/Application/etc/index.html">Home</a>
            <a href="/Application/etc/cards.jsp"> Cards</a>
            <a class="active" href="/Application/etc/RegPage.jsp"> Sign Up</a>
            <a href="/Application/etc/demo.html"> Demo</a>
        </div>-->



        <section class="col-12 col-sm-6 col-md-3">
            <!--Add the login icon at the top of the form-->
            <img src="web/user/img/icon2.png" class="icon">
            <!--using bootsrap-->
            <form class="form-container">
                <!-- use the bootstrap class text-center and font-weight-bold to center the text on the form-->
                <h4 class="text-center font-weight-bold text-color">Create Account</h4>
                <div class="form-group">
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Your Email">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password">
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                </div>
                <button type="submit" class="btn btn-primary btn-block btn-color">Sign Up</button>
            </form>
        </section>
    </section>
</section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>