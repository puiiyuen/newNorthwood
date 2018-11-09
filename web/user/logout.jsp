<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-09-30
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="../error.jsp" %>
<!doctype html>
<html>
<head>
    <title>Logout</title>
    <style>
        body{ background: linear-gradient(132deg, #F09459, #e66586);}
        h1,h2{color:white;}
        a{text-decoration: none;
            color: #ffffff;}
    </style>
</head>
<body>
    <jsp:useBean id="logoutUser" scope="session" class="com.User.Login"/>
    <%
        String status=(String)session.getAttribute("LogSuccess");
        if (status==null){
            //user didn't login
            response.sendRedirect("../index.html");
        }
        else{
            session.invalidate();
            logoutUser.logout(status);
    %>
    <h1 align="center">Hope see you again! <%out.print(status);%></h1>
    <h2 align="center"><a href="login.html">Login Again</a></h2>
    <h2 align="center"><a href="../index.jsp">Back to Home</a></h2>
    <%
        }
    %>
</body>
</html>