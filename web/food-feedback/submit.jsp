<%--
  Created by IntelliJ IDEA.
  User: Peiyuan's Dell
  Date: 2018-11-11
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.foodFeedback.fetchMenu" %>
<%@ page import="com.foodFeedback.submitFeedback" %>

<html>
<head>
    <title>Thanks for your feedback</title>
</head>
<body>



<%
    fetchMenu menu =new fetchMenu();
    String[] getMenu=menu.menu("Monday");
    String[] dishId=menu.dishId("Monday");

    int[] vote=new int[getMenu.length];

    for (int i=0;i<getMenu.length;i++)
    {
        String dish=request.getParameter(getMenu[i]);

        if(dish.equals("like"))
            vote[i]=1;
        else if(dish.equals("dislike"))
            vote[i]=2;
        else if(dish.equals("more"))
            vote[i]=3;
        else
            vote[i]=0;
    }
    String fbContent=request.getParameter("feedback");
    String userEmail=(String)session.getAttribute("LogSuccess");

    submitFeedback sb=new submitFeedback();
    sb.submit(userEmail,fbContent,vote,dishId);

%>

<h1 align="center">Thanks for your feedback</h1>
<h2 align="center"><a href="../index.jsp">Back to Home</a></h2>

</body>
</html>
