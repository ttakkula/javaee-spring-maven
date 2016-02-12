<%-- 
    Document   : second
    Created on : Feb 9, 2016, 1:04:37 PM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Form & Table page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    </head>
    <body style="padding-top: 60px;">
        
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Spring MVC example</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/">Home</a></li>
            <!--<li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>-->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

        
        <div class="container" style="padding-top: 20px;">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">

            <div class="panel panel-primary">            
            <div class="panel-heading">
                <h1 class="panel-title">Add new teacher information</h1>
            </div>
            <div class="panel-body">
            <form:form action="/teacher" method="POST" modelAttribute="teacher" class="form form-horizontal">
                <div class="form-group">
                    <form:label path="" class="control-label col-sm-2">Name</form:label>
                    <div class="col-sm-10">
                        <form:input path="TName" class="form-control"></form:input>
                    </div>
                </div>
                <div class="form-group">
                <form:label path="" class="control-label col-sm-2">Phone</form:label>
                    <div class="col-sm-10">
                    <form:input path="phone" class="form-control"></form:input>
                    </div>
                </div>
                <div class="form-group">
                <form:label path="" class="control-label col-sm-2">Email</form:label>
                    <div class="col-sm-10">
                    <form:input path="email" class="form-control"></form:input>
                    </div>    
                </div>
                <div class="form-group">
                    <form:label path="" class="control-label col-sm-2">Subject</form:label>
                    <div class="col-sm-10">
                    <form:input path="TSubject" class="form-control"></form:input>
                    </div>                        
                </div>
                <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" value="Save teacher" class="btn btn-primary"/>
                </div>
                </div>                
            </form:form>
            </div>
            <div class="panel-footer">
                <p>${save_info}</p>
            </div>
            </div>    
            </div>
        </div>
            
        
        <table class="table">
            <caption>Teachers
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Subject</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="teach" items="${teachers}">
                    <tr>
                        <td>${teach.getTName()}</td>
                        <td>${teach.getEmail()}</td>
                        <td>${teach.getPhone()}</td>
                        <td>${teach.getTSubject()}</td>
                    </tr>
                    
                </c:forEach>
            </tbody>
        </table>
        </div>
        </div>
        </div>
    </body>
</html>
