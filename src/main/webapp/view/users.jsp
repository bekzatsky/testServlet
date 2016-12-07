<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bekzat
  Date: 06.12.2016
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Database</title>
</head>
<body>
<table cellspacing="1" cellpadding="10" border="1" width="100%">
    <tr>
        <th>id</th>
        <th>username</th>
        <th>password</th>
    </tr>

    <c:forEach items="${users}" var="user">
        <tr>
            <td> ${user.id}</td>
            <td> ${user.username}</td>
            <td> ${user.password}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
