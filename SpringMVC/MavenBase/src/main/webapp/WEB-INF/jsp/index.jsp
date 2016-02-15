<%-- 
    Document   : index
    Created on : 14.10.2015, 8:33:25
    Author     : Opiframe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
        <script src="resources/js/scripts.js"></script>
        <title>Start Page</title>
    </head>
    <body>
        <form:form action="/login" method="POST">
            <label for="username">Username</label>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" /><br>
            <input type="submit" value="Login"/>
        </form:form>
        <!--
        <h1 class="my_color">Hello <span style="color:#499167">${name}</span>!</h1>
        <p><a href="/second">To second page</a></p>
        -->
    </body>
</html>
