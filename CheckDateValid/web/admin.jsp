<%-- 
    Document   : admin.jsp
    Created on : May 30, 2022, 11:31:57 AM
    Author     : Xqy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="user.UserDTO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AnimationCheckDay/style1.css">
        <title>Check Date</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleID().equals("AD")) {
                response.sendRedirect("index.jsp");
            }
            String year = request.getParameter("year");
            if (year == null) {
                year = "";
            }
            String month = request.getParameter("month");
            if (month == null) {
                month = "";
            }
            String day = request.getParameter("day");
            if (day == null) {
                day = "";
            }
        %>
        <section>
            <div class="color"></div>
            <div class="color"></div>
            <div class="color"></div>
            <div class="box">
                <div class="square" style="--i:0;"></div>
                <div class="square" style="--i:1;"></div>
                <div class="square" style="--i:2;"></div>
                <div class="square" style="--i:3;"></div>
                <div class="square" style="--i:4;"></div>
                <div class="container">
                    <div class="form">
                        <h1>Welcome: <%= loginUser.getFullName()%></h1>
                        <form action="MainController">
                            <div class="inputBox">
                                <input type="submit" name="action" value="Logout">
                            </div>
                        </form>
                        <form action="MainController">
                            <div class="inputBox">
                                <div class="title-item">Day</div>
                                <input style="color: black;" type="number" name="day" value="<%=day%>" placeholder="Input day" required="">
                            </div>
                            <div class="inputBox">
                                <div class="title-item">Month</div>
                                <input style="color: black;" type="number" name="month" value="<%=month%>" placeholder="Input month" required="">
                            </div>
                            <div class="inputBox">
                                <div class="title-item">Year</div>
                                <input style="color: black;" type="number" name="year" value="<%=year%>" placeholder="Input year" required="">
                            </div>
                            <div class="inputBox">
                                <input type="submit" name="action" value="Check">
                                <input type="reset" value="Reset" value="Reset">
                            </div>
                        </form> 
                        <%
                            String error = (String) request.getAttribute("ERROR");
                            String succesmsg = (String) request.getAttribute("SUCCESS");
                            if (error == null) {
                                error = "";
                            }
                            if (succesmsg == null) {
                                succesmsg = "";
                            }
                        %>
                        <%--<%=error%>--%>
                        <%--<%=succesmsg%>--%>
                        <font color="red"value="<%= succesmsg%>"><%= succesmsg%></font>
                    </div>
                </div>
            </div>
        </section>
        <div class="effects">
            <div class="square" style="--i:0;"></div>
            <div class="square" style="--i:1;"></div>
            <div class="square" style="--i:2;"></div>
            <div class="square" style="--i:3;"></div>
            <div class="square" style="--i:4;"></div>
            <div class="container-item">
                <ul class="thumb">
                    <li><img src="AnimationCheckDay/image/qthai.jpg" alt=""></li>
                    <li><img src="AnimationCheckDay/image/qcuong.jpg" alt=""></li>
                    <li><img src="AnimationCheckDay/image/selenium.png" alt=""></li>
                </ul>
                <ul class="thumb-item">
                    <li><img src="AnimationCheckDay/image/thy.jpg" alt=""></li>
                    <li><img src="AnimationCheckDay/image/pthai.jpg" alt=""></li>
                    <li><img src="AnimationCheckDay/image/dthai.jpg" alt=""></li>
                </ul>
                <div class="imgBox">            
                </div>
            </div>
        </div>
    </body>
    <div class="f1-effect">

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

        <div class="f1-effect-flower">
        </div>

    </div>
</html>