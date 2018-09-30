<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-09-30
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <jsp:useBean id="userReg" class="com.jspJava.Register"></jsp:useBean>

    <%
        String email=request.getParameter("exampleInputEmail");
        String passwd1=request.getParameter("exampleInputPassword1");
        String passwd2=request.getParameter("exampleInputPassword2");

        //temporary password check
        if (passwd1.equals(passwd2)){
            if (userReg.register(email,passwd1)){
                out.println("<h1 align=\'center\'>Register Successful!</h1>");
            }
            else
                out.println("<h1 align=\'center\'>Register Failed!</h1>");
        }
        else
            out.println("<h1 align=\'center\'>Password should be same!</h1>");
    %>
</body>
</html>
