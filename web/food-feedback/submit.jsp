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
<%@ page import="java.util.Calendar" %>

<html>
<head>
    <title>Thanks for your feedback</title>
</head>
<body>


<%

    String userType = (String) session.getAttribute("userType");
    if (session.getAttribute("LogSuccess") == null && userType != "user") {
        session.setAttribute("ForwardURL", request.getRequestURI());
        response.sendRedirect("../user/login.jsp");
    }

    if (session.getAttribute("LogSuccess") != null && userType == "admin")
        response.sendRedirect("../admin/update-menu.jsp");

    fetchMenu menu = new fetchMenu();
    int todayInt;
    String today;
    Calendar now = Calendar.getInstance();
    todayInt = now.get(Calendar.DAY_OF_WEEK);
    switch (todayInt) {
        case Calendar.MONDAY:
            today = "Monday";
            break;
        case Calendar.TUESDAY:
            today = "Tuesday";
            break;
        case Calendar.WEDNESDAY:
            today = "Wednesday";
            break;
        case Calendar.THURSDAY:
            today = "Thursday";
            break;
        case Calendar.FRIDAY:
            today = "Friday";
            break;
        case Calendar.SATURDAY:
            today = "Saturday";
            break;
        case Calendar.SUNDAY:
            today = "Sunday";
            break;
        default:
            today = "Weekday";
            break;
    }
    String[] getMenu = menu.dailyMenu(today);

    String[] dishId = menu.dishId(today);

    int[] vote = new int[getMenu.length];

    for (int i = 0; i < getMenu.length; i++) {
        String dish = request.getParameter(getMenu[i]);

        if (dish.equals("like"))
            vote[i] = 1;
        else if (dish.equals("dislike"))
            vote[i] = 2;
        else if (dish.equals("more"))
            vote[i] = 3;
        else
            vote[i] = 0;
    }
    String fbContent = request.getParameter("feedback");
    String userEmail = (String) session.getAttribute("LogSuccess");

    submitFeedback sb = new submitFeedback();
    sb.submit(userEmail, fbContent, vote, dishId);

%>

<h1 align="center">Thanks for your feedback</h1>
<h2 align="center"><a href="../index.jsp">Back to Home</a></h2>
<%
    response.setHeader("Refresh","1;url=../index.jsp");
%>
</body>
</html>
