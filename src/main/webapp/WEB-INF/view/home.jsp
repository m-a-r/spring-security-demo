<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Company Home Page</title>
</head>
<body>

<h2>Company Home Page</h2>
<hr>

<p>
    Welcome to the Company Home Page
</p>

<hr>

<p>User: <security:authentication property="principal.username"/></p>
<p>Role(s): <security:authentication property="principal.authorities"/></p>

<security:authorize access="hasRole('MANAGER')">
    <p><a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a> (Only for Manager peeps)</p>
</security:authorize>

<security:authorize access="hasRole('ADMIN')">
    <p><a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a> (Only for IT peeps)</p>
</security:authorize>

<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Logout">
</form:form>


</body>
</html>
