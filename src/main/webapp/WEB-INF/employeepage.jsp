<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>
        

        <h1>Hello ${sessionScope.email} </h1>



        <h2>You are now logged in as a EMPLOYEE of our wonderful site.<h2>

        <form name="oversigt" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="oversigt">
            <input type="submit" value="oversigts liste">
        </form>

        <form name="registerEmp" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="registerEmp">
            Email:<br>
            <input type="text" name="email" value="someone@nowhere.com">
            <br>
            Password:<br>
            <input type="password" name="password1" value="sesam">
            <br>
            Retype Password:<br>
            <input type="password" name="password2" value="sesam">
            <br>
            <input type="submit" value="Submit">
        </form>

    </body>
</html>
