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
    <title>Login</title>
</head>
<body>
    <jsp:useBean id="userLogin" scope="session" class="com.jspJava.Login"></jsp:useBean>

    <%
        String email=request.getParameter("exampleInputEmail");
        String password=request.getParameter("exampleInputPassword");

        if(userLogin.login(email,password)){
            session.setAttribute("LogSuccess",email);   //Register email on session to make user status active
            out.println("<h1 align=\'center\'>Login Successful!</h1>");
        }
        else
            out.println("<h1 align=\'center\'>Login Failed!</h1>");
    %>
</body>
</html>