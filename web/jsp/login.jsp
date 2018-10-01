<%--
    Document:login
    Author: Peiyuan
--%>

<%@page contentType="text/html; ISO-8859-1" pageEncoding="utf-8"%>
<%@page contentType="text/html; ISO-8859-1" errorPage="error.jsp" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
        body{ background: linear-gradient(132deg, #F09459, #e66586);}
        h1{color:white;}
        a{text-decoration: none;
            color: #fff;}
    </style>
    <title>Login</title>
</head>
<body>
    <jsp:useBean id="userLogin" scope="session" class="com.jspJava.Login"></jsp:useBean>

    <%
        String email=request.getParameter("exampleInputEmail");
        String password=request.getParameter("exampleInputPassword");
        String status=(String)session.getAttribute("LogSuccess");

        if(email==""||password=="")
            response.sendRedirect("../login.html");

        if (status==null){
            if(userLogin.login(email,password)){
                session.setAttribute("LogSuccess",email);   //Register email on session to make user status active
                out.println("<h1 align=\'center\'>"+email+" Welcome!</h1>");
                response.setHeader("REFRESH","2;URL=../index.html");
            }
            else{
                out.println("<h1 align=\'center\'>Sorry :( Maybe you don't have an account or type something wrong.</h1>");
    %>
    <h2 align="center"><a href="../login.html">Try Again:)</a></h2>
    <h2 align="center"><a href="../RegPage.html">Get a New Account</a></h2>
    <h2 align="center"><a href="../index.html">Back to Home</a></h2>
    <%      }
        }
        else
        {
    %>
        <h1 align="center">Oops! You have logged in:)</h1>
    <%
            response.setHeader("REFRESH","2;URL=../index.html");
        }


    %>
</body>
</html>