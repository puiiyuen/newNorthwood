<%@ page import="com.foodFeedback.fetchMenu" %>

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
  
<div class="topnav">
    
    <!-- side navigation options-->


    
    <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" 
               onclick="closeNav()">&times;</a>
            <a href="#">HOME</a>
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
        <h1 align ="center"> <b> Northwood Food Feedback </b></h1>
        <br>
        
        <!--
            ================== TAble for feedback =============================
        -->

        <% //String date = request.getParameter("date");
            fetchMenu menu =new fetchMenu();
            String[] getMenu=menu.menu("Monday");

        %>


        <table id = "table" align="center" width= "device-width">
            <tr> 
                <th>Food Item</th> 
                <th> Like it</th> 
                <th> Dislike it</th> 
                <th> Want More Often</th> 
            </tr>

            <%for (int i=0;i<getMenu.length;i++)
            {

            %>

            <tr> 
                <td><%=getMenu[i]%></td>
                <td>  <input type="radio" name="pizza" value="like"></td> 
                <td> <input type="radio" name="pizza" value="dislike"></td> 
                <td> <input type="radio" name="pizza" value="more"></td> 
            </tr>

            <%
            }
            %>

        
        </table>
        
        <br><br>
        
        <!--
        
            =====================  Text box =====================
        
        -->
        <div align = "center">
            <label for="feedback">Tell Northwood about your food :</label>
            <input type="text" id="feedback" name="feedback" 
                   placeholder="    Write Feedback ....">
            <br>
            <input type="submit" value="Submit">
            
        </div>
        
        
        
      
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
