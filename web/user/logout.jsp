<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-09-30
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page errorPage="../error.jsp" %>
<%@ page import="com.User.User" %>
<!doctype html>
<html>
<head>
    <title>Logout</title>
    <style>
        body {
            background: linear-gradient(132deg, #F09459, #e66586);
        }

        h1, h2 {
            color: white;
        }

        a {
            text-decoration: none;
            color: #ffffff;
        }
    </style>
</head>
<body>
<%
    String status = (String) session.getAttribute("LogSuccess");
    if (status == null) {
        //user didn't login
        response.sendRedirect("../update-menu.jsp");
    } else {
        session.invalidate();
        User user = new User();
%>
<h1 align="center">Hope see you again! <%=user.getUsernameInDB(status)[0]%>
</h1>
<h2 align="center"><a href="login.jsp">Login Again</a></h2>
<h2 align="center"><a href="../index.jsp">Back to Home</a></h2>
<%
    }
%>
</body>
</html>