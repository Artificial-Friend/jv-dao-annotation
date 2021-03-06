<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
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
<h1>All drivers</h1>
<p><a href="${pageContext.request.contextPath}/">Return to the main page</a></p>
<p><a href="${pageContext.request.contextPath}/drivers/add">Add driver</a></p>
<table border="1" class="center">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>LicenseNumber</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
