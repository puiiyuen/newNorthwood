<%--
    Document:login
    Author: Peiyuan
--%>

<%@ page pageEncoding="utf-8"%>
<%@ page errorPage="../error.jsp" %>
<%@ page import="com.User.Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
    <link rel="stylesheet" href="css/signin.css">
    <!-- Having trouble linking the css, so re-added them -Emily-->

</head>
<!-- Load an icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>

    <%
        String logUser=(String)session.getAttribute("LogSuccess");

        Login userLogin=new Login();

        String email=request.getParameter("inputEmail");
        String password=request.getParameter("inputPassword");

        if(logUser==null&&(email==null||password==null))
        {
            %>
    <section class="container-fluid">
        <!-- use bootstrap class ! justify-content-center to bring the form in the center of the page-->
        <section class="row justify-content-center">
            <!-- create the bootsrap grid system for tablets (sm) and desktops (md) layouts.-->

            <!-- Nav Bar added by Emily -->
            <!-- Add icons to bar -->
            <div class="navbar">
                <a class="active" href="../index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
                <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>
                <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>
                <a href="register.jsp"><i class="fa fa-fw fa-user"></i> Sign Up</a>
            </div>

            <section class="col-12 col-sm-6 col-md-3">
                <!--Add the login icon at the top of the form-->
                <img src="img/icon2.png" class="icon">
                <!--using bootsrap-->
                <form class="form-container" action="login.jsp" method="post">
                    <!-- use the bootstrap class text-center and font-weight-bold to center the text on the form-->
                    <h4 class="text-center font-weight-bold text-color">Sign In Your Account</h4>
                    <div class="form-group">
                        <input type="email" class="form-control" id="inputEmail" name="inputEmail" aria-describedby="emailHelp" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="inputPassword" name="inputPassword" placeholder="Password">
                    </div>
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block btn-color">LOGIN</button>
                </form>
            </section>
        </section>
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <%
        }
        else if (logUser!=null)
        {
            response.sendRedirect("../index.jsp");
        }
        else
        {
            if(userLogin.login(email,password)){
                session.setAttribute("LogSuccess",email);   //Register email on session to make user status active
                response.sendRedirect("../index.jsp");
            }
            else{
    %>
    <h1 align="center">Sorry :( Maybe you don't have an account or type something wrong.</h1>
    <h2 align="center"><a href="login.jsp">Try Again:)</a></h2>
    <h2 align="center"><a href="register.jsp">Get a New Account</a></h2>
    <h2 align="center"><a href="../index.jsp">Back to Home</a></h2>
    <%      }
        }
    %>

</body>
</html>