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
    <style>

        table {
            width: 100%; /* Ширина таблицы */
            background: white; /* Цвет фона таблицы */
            color: white; /* Цвет текста */
            border-spacing: 1px; /* Расстояние между ячейками */
        }
        th {

        }
        td {
            background: green; /* Цвет фона ячеек */
            padding: 5px; /* Поля вокруг текста */
        }
        p {
            text-align: center;
        }
    </style>
</head>
<body>
<p><button>Кнопка с текстом</button>
<table cellspacing="1" cellpadding="10" border="1" width="100%">
    <tr>
        <th>id</th>
        <th>licensePlate</th>
        <th>camera</th>
        <th>libraWeight</th>
        <th>status</th>
        <th>timestamp</th>
        <th>libraIn</th>
        <th>libraOut</th>
    </tr>

    <c:forEach items="${statuses}" var="a">
        <tr>
            <td> ${a.id}</td>
            <td> ${a.licensePlate}</td>
            <td> ${a.camera}</td>
            <td> ${a.libraWeight}</td>
            <td> ${a.status}</td>
            <td> ${a.timestamp}</td>
            <td> ${a.libraIn}</td>
            <td> ${a.libraOut}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
