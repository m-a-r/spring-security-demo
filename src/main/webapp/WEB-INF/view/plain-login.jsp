<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Custom Login Page</title>

    <style>
        .fail {
            color: red;
        }
    </style>

</head>
<body>

<h3>My Custom Login Page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

    <c:if var="test" test="${param.error != null}">
        <i class="fail">Sorry! You eneterd invalid username/password.</i>
    </c:if>

    <p>User name: <input type="text" name="username"></p>
    <p>Password: <input type="password" name="password"></p>
    <input type="submit" value="Login">

</form:form>

</body>
</html>
