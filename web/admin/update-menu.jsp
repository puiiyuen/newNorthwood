<%@ page import="com.foodFeedback.fetchMenu" %>
<%@ page import="com.foodFeedback.updateMenu" %>
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
        <a href="#">Update Menu</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="vote-result.jsp">Vote Result</a>

        <img src='img/img2.jpg' alt="Free Yourself" class='image'>

    </div>

    <span class='menuSign'
          style="font-size:30px;
          cursor:pointer" onclick="openNav()">&#9776; Menu</span>

</div>

<h1 align="center">

    <b> Northwood Food Menu Update </b>
</h1>
<br>

<!--
    ==================  Admin Input/editing ===================
-->

<div align=center>

    <form action="update-menu.jsp" method="post">
        <div align="center">
            <label id="editing"></label>
            <input type="hidden" id="rowId" name="rowId">
            <label for="foodName">Food Item : </label>
            <input type="text" name="foodName" id="foodName" placeholder="food name">
            <label for="day">Day : </label>
            <select name="day" id="day">
                <option value="Sunday">Sunday</option>
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
            </select>
        </div>
        <button type="submit" name="add" id="add" value="add" class='btn' onclick="addHtmlTableRow();">Add</button>
        <button type="submit" name="edit" id="edit" value="edit" class='btn' onclick="editHtmlTbleSelectedRow();">Edit
        </button>
        <button type="submit" name="del" id="del" value="del" class='btn' onclick="removeSelectedRow();">Delete</button>
        <br><br>

        <table id="table" align="center" width="device-width">
            <tr>
                <th>Food Item</th>
                <th>Day</th>
            </tr>
            <%
                fetchMenu menu = new fetchMenu();
                String[] getMenu = menu.allMenu();
                String[] getDay = menu.allDay();
                String[] getId = menu.allId();


                updateMenu update = new updateMenu();
                String content = request.getParameter("foodName");
                String day = request.getParameter("day");
                String rowId = request.getParameter("rowId");
                int dishId = -1;
                if (rowId != null&& !rowId.equals("")) {
                    dishId = Integer.parseInt(rowId);
                }


                if (request.getParameter("add") != null && content != null && day != null) {
                    update.insertDish(content, day);
                    getMenu = menu.allMenu();
                    getDay = menu.allDay();
                    getId = menu.allId();
                } else if (request.getParameter("edit") != null && dishId != -1 && content != null && day != null) {
                    update.editDish(content, day, getId[dishId-1]);
                    getMenu = menu.allMenu();
                    getDay = menu.allDay();
                    getId = menu.allId();
                } else if (request.getParameter("del") != null && dishId != -1) {
                update.delDish(getId[dishId-1]);
                    getMenu = menu.allMenu();
                    getDay = menu.allDay();
                    getId = menu.allId();
                } else {

                }

                for (int i = 0; i < getId.length; i++) {
            %>
            <tr>
                <td>
                    <%=getMenu[i]%>
                </td>
                <td>
                    <%=getDay[i]%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </form>
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
