<%-- 
    Document   : login
    Created on : Jun 1, 2022, 12:16:43 PM
    Author     : Xqy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <link rel="stylesheet" href="./AnimationLogin/style.css">
    </head>
    <body>
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
                        <h2>Login Form</h2>
                        <form action="MainController" method="POST">
                            <div class="inputBox">
                                <input type="text" placeholder="UserID" name="userID" required="">
                            </div>
                            <div class="inputBox">
                                <input type="password" placeholder="Password" name="password" required="">
                            </div>
                            <div class="inputBox">
                                <input type="submit" name="action" value="Login">
                                <input type="reset" value="Reset">
                            </div>
                        </form>
                        <%
                            String error = (String) request.getAttribute("ERROR");
                            if (error == null) {
                                error = "";
                            }
                        %>
                        <%= error%>
                    </div>
                </div>
            </div>
        </section>

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
