<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
    <style>
        table.center {
            margin-left: auto;
            margin-right: auto;
        }
        h1 {text-align: center;}
        p {text-align: center;}
    </style>
</head>
<body>
<h1>All manufacturers</h1>
<p><a href="${pageContext.request.contextPath}/">Return to the main page</a></p>
<table border="1" class="center">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>
                <c:out value="${manufacturer.id}"/>
            </td>
            <td>
                <c:out value="${manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${manufacturer.country}"/>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
