<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-09-30
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="../jsp/error.jsp" %>
<html>
<head>
    <title>Register</title>
    <style>
        body{ background: linear-gradient(132deg, #F09459, #e66586);}
        h1{color:white;}
        a{text-decoration: none;
            color: #fff;}
    </style>
</head>
<body>
    <jsp:useBean id="userReg" class="com.User.Register"></jsp:useBean>

    <%
        String email=request.getParameter("exampleInputEmail");
        String passwd1=request.getParameter("exampleInputPassword1");
        String passwd2=request.getParameter("exampleInputPassword2");

        //temporary password check
        if (email!="" && passwd1!="" && passwd2!=""){
            if (passwd1.equals(passwd2)){
                if (userReg.register(email,passwd1)){
                    out.println("<h1 align=\'center\'>Register Successful!</h1>");
                    response.setHeader("REFRESH","1;URL=../login.html");
                }
                else{
                    //Usually should be existed account
                    out.println("<h1 align=\'center\'>You already have an account:)</h1>");
                    response.setHeader("REFRESH","2;URL=../login.html");
                }
            }
            else{
                out.println("<h1 align=\'center\'>Two password should be same:)</h1>");
                response.setHeader("REFRESH","2;URL=../RegPage.html");
            }
        }
        else{
            response.sendRedirect("../RegPage.html");
        }
    %>
</body>
</html>
