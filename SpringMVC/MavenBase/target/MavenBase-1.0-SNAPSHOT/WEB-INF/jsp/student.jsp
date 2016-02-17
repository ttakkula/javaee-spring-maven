<%-- 
    Document   : student
    Created on : Feb 16, 2016, 1:54:31 PM
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
        <title>Students page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../resources/css/styles.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    </head>
    <body>
        
    <%@include file="header.jsp" %>
    <div class="container">
        <div class="row">
        <div class="col-sm-8 col-sm-offset-2 col-lg-4 col-lg-offset-0">
    
        <div class="row">
            <div class="col-md-8 col-md-offset-2 col-lg-12 col-lg-offset-0">

            <div class="panel panel-primary">            
            <div class="panel-heading">
                <h1 class="panel-title">Add new student</h1>
            </div>
            <div class="panel-body">
                <form:form action="/admin/addstudent" method="POST" modelAttribute="student" class="form form-horizontal" acceptCharset="UTF-8">
                <div class="form-group">
                    <form:label path="" cssClass="control-label col-sm-3">Name</form:label>
                    <div class="col-sm-9">
                        <form:input path="SName" cssClass="form-control"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="" cssClass="control-label col-sm-3">Address</form:label>
                    <div class="col-sm-9">
                    <form:input path="address" cssClass="form-control"></form:input>
                    </div>                        
                </div>                    
                <div class="form-group">
                <form:label path="" cssClass="control-label col-sm-3">Phone</form:label>
                    <div class="col-sm-9">
                    <form:input path="phone" cssClass="form-control"></form:input>
                    </div>
                </div>
                <div class="form-group">
                <form:label path="" cssClass="control-label col-sm-3">Email</form:label>
                    <div class="col-sm-9">
                    <form:input path="email" cssClass="form-control"></form:input>
                    </div>    
                </div>
                <div class="form-group">
                <div class="col-sm-offset-3 col-sm-9">
                    <input type="submit" value="Save student" class="btn btn-primary"/>
                </div>
                </div>                
            </form:form>
            </div>
            <div class="panel-footer">
                <p>${save_info}</p>
            </div>
            <!-- end of panel below -->
            </div>    
            <!-- end of col below -->
            </div>
        </div>
        </div>    
        <div class="col-sm-8 col-sm-offset-2 col-lg-8 col-lg-offset-0">
        <table class="table table-striped">
            <caption><i class="fa fa-lg fa-group"></i> Students</caption>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="study" items="${students}">
                    <tr>
                        <td>${study.getSName()}</td>
                        <td>${study.getAddress()}</td>
                        <td>${study.getEmail()}</td>
                        <td>${study.getPhone()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </div>
            
        <!-- end of row below -->    
        </div>
    </div>
            
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
                
    </body>
</html>