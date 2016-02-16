<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-inverse navbar-fixed-top" role='navigation'>
    <div class='container'>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle='collapse' data-target='.navabar-ex-collapse'>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
            </button>
            <a class='navbar-brand'>Spring MVC Example</a>
        </div>
        <div class='collapse navbar-collapse navabar-ex-collapse'>
            <ul id='anc_list' class="nav navbar-nav navbar-right">
                <c:if test="${isLogged == true}">
                <li><a href="/logout">Logout</a></li>
                <li><a href="/admin/second">Teachers</a></li>
                <li><a href="/admin/student">Students</a></li>
                <li><a href="/admin/course">Courses</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>