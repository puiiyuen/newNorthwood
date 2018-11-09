<%--
  Created by intelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-09-30
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="../error.jsp" %>
<%@ page import="com.User.Register" %>
<!DOCTYPE html>
<html>
<head>

    <title>Register</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/RegPage.css">
    <!-- Having trouble linking the css, so re-added them -Emily-->

</head>
<!-- Load an icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>

<%
    Register userReg=new Register();
    String username=request.getParameter("inputName");
    String email=request.getParameter("inputEmail");
    String passwd1=request.getParameter("inputPassword1");
    String passwd2=request.getParameter("inputPassword2");

    //temporary password check
    if (username==null || email==null || passwd1==null || passwd2==null){
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
            <a href="login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
        </div>

        <section class="col-12 col-sm-6 col-md-3">
            <!--Add the login icon at the top of the form-->
            <img src="img/icon2.png" class="icon">
            <!--using bootsrap-->
            <form class="form-container" action="register.jsp" method="post">
                <!-- use the bootstrap class text-center and font-weight-bold to center the text on the form-->
                <h4 class="text-center font-weight-bold text-color">Create Account</h4>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputName" name="inputName" aria-describedby="emailHelp" placeholder="Your Username">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="inputEmail" name="inputEmail" aria-describedby="emailHelp" placeholder="Your Email">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="inputPassword1" name="inputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="inputPassword2" name="inputPassword2" placeholder="Confirm Password">
                </div>
                <button type="submit" class="btn btn-primary btn-block btn-color">Sign Up</button>
            </form>
        </section>
    </section>
</section>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <%
    }
    else{
        if (passwd1.equals(passwd2)){
            if (userReg.register(username,email,passwd1)){
                out.println("<h1 align=\'center\'>Register Successful!</h1>");
                response.setHeader("REFRESH","1;URL=login.jsp");
            }
            else{
                //Usually should be existed account
                out.println("<h1 align=\'center\'>You already have an account:)</h1>");
                response.setHeader("REFRESH","2;URL=login.jsp");
            }
        }
        else{
            out.println("<h1 align=\'center\'>Two password should be same:)</h1>");
            response.setHeader("REFRESH","2;URL=register.jsp");
        }
    }
%>

</body>
</html>
