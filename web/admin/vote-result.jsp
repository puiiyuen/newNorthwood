<%@ page import="com.foodFeedback.fetchFeedback" %>
<!DOCTYPE html>


<!--
============================================================================
Developed by ...
Mohammed Ali Khan (A00415590)
============================================================================
-->


<html>


<head>
    <title>Admin Food Feedback</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>


<body>

<!-- top navigation options-->


<%
    String userType = (String) session.getAttribute("userType");
    if (session.getAttribute("LogSuccess") == null && userType != "admin") {
        session.setAttribute("ForwardURL", request.getRequestURI());
        response.sendRedirect("login.jsp");
    }
%>

<div class="topnav">

    <!-- side navigation options-->

    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn"
           onclick="closeNav()">&times;</a>
        <a href="../index.jsp">HOME</a>
        <a href="update-menu.jsp">Update Menu</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="#">Vote Result</a>

        <img src='img/img2.jpg' alt="Free Yourself" class='image'>

    </div>

    <span class='menuSign'
          style="font-size:30px;
          cursor:pointer" onclick="openNav()">&#9776; Menu</span>

</div>


<br>
<h1 align='center'>
    Northwood Residents' Voice
</h1>

<!--

    =======================  table for show feedback ===================

-->

<div>

    <table id="table" align="center" width="device-width">
        <tr>
            <th>Day</th>
            <th>Food Item</th>
            <th> Like it</th>
            <th> Dislike it</th>
            <th> Want More Often</th>
        </tr>
        <%
            fetchFeedback ffb=new fetchFeedback();
            String[] day=ffb.voteResultDay();
            String[] name=ffb.voteResultName();
            String[] like=ffb.voteResultLike();
            String[] dislike=ffb.voteResultDislike();
            String[] more=ffb.voteResultMore();

            for (int i = 0; i < name.length; i++) {

        %>

        <tr>
            <td><%=day[i]%></td>
            <td><%=name[i]%></td>
            <td><%=like[i]%></td>
            <td><%=dislike[i]%></td>
            <td><%=more[i]%></td>
        </tr>

        <%
            }
        %>

    </table>

</div>


<!--
     ======================= LINKS ===================
-->


<script src="js/table_editing_javascript.js" type="text/javascript"></script>


<link href="css/admin_food_feedback_css.css" rel="stylesheet" type="text/css"/>
<script src="js/admin_food_feedback.js" type="text/javascript"></script>


<link href=
              "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
      rel="stylesheet" id="bootstrap-css">
<script src=
                "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js">

</script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

</body>

</html>
