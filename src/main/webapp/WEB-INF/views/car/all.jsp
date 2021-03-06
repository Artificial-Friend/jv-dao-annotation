<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
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
<h1>All cars</h1>
<p><a href="${pageContext.request.contextPath}/">Return to the main page</a></p>
<p><a href="${pageContext.request.contextPath}/cars/add">Add car</a></p>
<p><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car by id</a></p>
<table border="1" class="center">
    <tr>
        <th>ID</th>
        <th>Madel</th>
        <th>Manufacturer</th>
        <th>Drivers</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/drivers?id=${car.id}">Show</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
