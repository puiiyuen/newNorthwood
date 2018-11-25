<%@ page import="com.foodFeedback.fetchMenu" %>
<%@ page import="java.util.Calendar" %>

<%--
* Modify by Patrick Peiyuan Chen
* Connect Client-Side to Server
--%>

<!DOCTYPE html>


<!--
============================================================================
Developed by ...
Mohammed Ali Khan (A00415590)
============================================================================
-->


<html>


<head>
    <title>Food Feedback</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>


<body>


<!-- top navigation options-->
<%
    String userType = (String) session.getAttribute("userType");
    if (session.getAttribute("LogSuccess") == null && userType != "user") {
        session.setAttribute("ForwardURL", request.getRequestURI());
        response.sendRedirect("../user/login.jsp");
    }

    if (session.getAttribute("LogSuccess") != null && userType == "admin")
        response.sendRedirect("../admin/update-menu.jsp");

%>

<div class="topnav">

    <!-- side navigation options-->


    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn"
           onclick="closeNav()">&times;</a>
        <a href="../index.jsp">HOME</a>
        <a href="#">Option 2</a>
        <a href="#">Option 3</a>
        <a href="#">Option 4</a>

        <img src='img2.jpg' alt="Free Yourself" class='image'>

    </div>

    <span class='menuSign'
          style="font-size:30px;
          cursor:pointer" onclick="openNav()">&#9776; Menu</span>

</div>

<br>
<h1 align="center"><b> Northwood Food Feedback </b></h1>
<br>

<!--
    ================== TAble for feedback =============================
-->

<form action="submit.jsp" method="post">
    <% //String date = request.getParameter("date");
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

    %>
    <table id="table" align="center" width="device-width">
        <tr>
            <th>Food Item</th>
            <th> Like it</th>
            <th> Dislike it</th>
            <th> Want More Often</th>
        </tr>

        <%
            for (int i = 0; i < getMenu.length; i++) {

        %>

        <tr>
            <td><%=getMenu[i]%>
            </td>
            <td><input type="radio" name="<%=getMenu[i]%>" value="like"></td>
            <td><input type="radio" name="<%=getMenu[i]%>" value="dislike"></td>
            <td><input type="radio" name="<%=getMenu[i]%>" value="more"></td>
        </tr>

        <%
            }
        %>

    </table>
    <br><br>

    <!--=====================  Text box =====================-->

    <div align="center">
        <label for="feedback">Tell Northwood about your food :</label>
        <input type="text" id="feedback" name="feedback"
               placeholder="    Write Feedback ....">
        <br>
        <input type="submit" value="Submit">

    </div>


</form>


<!--
     ======================= LINKS ===================
-->

<link href="food_feedback_css.css" rel="stylesheet" type="text/css"/>
<script src="food_feedback.js" type="text/javascript"></script>


<link href=
              "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
      rel="stylesheet" id="bootstrap-css">
<script src=
                "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js">

</script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

</body>

</html>
