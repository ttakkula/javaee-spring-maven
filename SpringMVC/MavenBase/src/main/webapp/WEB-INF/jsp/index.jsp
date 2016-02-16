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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">        
        <link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
        <script src="resources/js/scripts.js"></script>
        <title>Start Page</title>
    </head>
    <body>

    <%@include file="header.jsp" %>
    
    <div class="container">
    <div class="row">
    <div class="col-md-6 col-md-push-3">
        <div class="panel panel-info">
            <div class="panel-heading">
            <h1 class="panel-title">Welcome, please login<!-- or register new user--></h1>
            </div>
            <div class="panel-body">
                <form:form action="/login" method="POST" class="form form-horizontal">
                    <div class="form-group">
                        <label for="username" class="control-label col-md-4">Username</label>
                        <div class="col-md-8">
                        <input type="text" id="username" name="username" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label col-md-4">Password</label>
                        <div class="col-md-8">
                        <input type="password" id="password" name="password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                    <div class="col-md-8 col-md-offset-4">
                        <input type="submit" value="Login" class="btn btn-primary">
                    <!--<a href="/register" class="btn btn-link">Create new user</a>-->
                    </div>
                    </div>
                </form:form>
            </div>
            <div class="panel-footer"><p class="text-danger">${login_error}</p></div>
        <!-- end of panel -->
        </div>
    <!-- end of column -->
    </div>
    </div>
    </div>
        
        <!--
        <h1 class="my_color">Hello <span style="color:#499167">${name}</span>!</h1>
        <p><a href="/second">To second page</a></p>
        -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
