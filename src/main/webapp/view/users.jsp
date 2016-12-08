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
    <title>Тазакала</title>
    <style>

        body {
            background-color: navajowhite;
        }

        table {
            background: #f5f5f5;
            border-collapse: separate;
            box-shadow: inset 0 1px 0 #fff;
            font-size: 15px;
            line-height: 24px;
            margin: 30px auto;
            text-align: left;
            width: 800px;
        }
        th {
            background: url(http://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
            border-left: 1px solid #555;
            border-right: 1px solid #777;
            border-top: 1px solid #555;
            border-bottom: 1px solid #333;
            box-shadow: inset 0 1px 0 #999;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            position: relative;
            text-shadow: 0 1px 0 #000;
        }

        th:after {
            background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
            content: '';
            display: block;
            height: 25%;
            left: 0;
            margin: 1px 0 0 0;
            position: absolute;
            top: 25%;
            width: 100%;
        }

        th:first-child {
            border-left: 1px solid #777;
            box-shadow: inset 1px 1px 0 #999;
        }

        th:last-child {
            box-shadow: inset -1px 1px 0 #999;
        }

        td {
            border-right: 1px solid #fff;
            border-left: 1px solid #e8e8e8;
            border-top: 1px solid #fff;
            border-bottom: 1px solid #e8e8e8;
            padding: 10px 15px;
            position: relative;
            transition: all 300ms;
        }

        td:first-child {
            box-shadow: inset 1px 0 0 #fff;
        }

        td:last-child {
            border-right: 1px solid #e8e8e8;
            box-shadow: inset -1px 0 0 #fff;
        }

        tr {
            background: url(http://jackrugile.com/images/misc/noise-diagonal.png);
        }

        tr:nth-child(odd) td {
            background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);
        }

        tr:last-of-type td {
            box-shadow: inset 0 -1px 0 #fff;
        }

        tr:last-of-type td:first-child {
            box-shadow: inset 1px -1px 0 #fff;
        }

        tr:last-of-type td:last-child {
            box-shadow: inset -1px -1px 0 #fff;
        }

        tbody:hover td {
            color: transparent;
            text-shadow: 0 0 3px #aaa;
        }

        tbody:hover tr:hover td {
            color: #444;
            text-shadow: 0 1px 0 #fff;
        }

        button.submit {
            background-color: #68b12f;
            background: -webkit-gradient(linear, left top, left bottom, from(#68b12f), to(#50911e));
            background: -webkit-linear-gradient(top, #68b12f, #50911e);
            background: -moz-linear-gradient(top, #68b12f, #50911e);
            background: -ms-linear-gradient(top, #68b12f, #50911e);
            background: -o-linear-gradient(top, #68b12f, #50911e);
            background: linear-gradient(top, #68b12f, #50911e);
            border: 1px solid #509111;
            border-bottom: 1px solid #5b992b;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            -ms-border-radius: 3px;
            -o-border-radius: 3px;
            box-shadow: inset 0 1px 0 0 #9fd574;
            -webkit-box-shadow: 0 1px 0 0 #9fd574 inset ;
            -moz-box-shadow: 0 1px 0 0 #9fd574 inset;
            -ms-box-shadow: 0 1px 0 0 #9fd574 inset;
            -o-box-shadow: 0 1px 0 0 #9fd574 inset;
            color: white;
            font-weight: bold;
            padding: 6px 20px;
            text-align: center;
            text-shadow: 0 -1px 0 #396715;
        }

        button.submit:hover {
              opacity:.85;
              cursor: pointer;
        }

        button.submit:active {
              border: 1px solid #20911e;
              box-shadow: 0 0 10px 5px #356b0b inset;
              -webkit-box-shadow:0 0 10px 5px #356b0b inset ;
              -moz-box-shadow: 0 0 10px 5px #356b0b inset;
              -ms-box-shadow: 0 0 10px 5px #356b0b inset;
              -o-box-shadow: 0 0 10px 5px #356b0b inset;
        }


        .filter input {
            padding: 6px 20px;
            border:1px solid #aaa;
            box-shadow: 0px 0px 3px #ccc, 0 10px 15px #eee inset;
            border-radius:2px;
        }
        .filter input:focus {
              background: #fff;
              border:1px solid #555;
              box-shadow: 0 0 3px #aaa;
        }
    </style>
</head>
<body>
<div style="margin: auto;width: 600px">
    <form class="filter" action="/" method="POST">
        <p>libraWeight</p>
        C:
        <input type="text" name="weightForm">
        по:
        <input type="text" name="weightTo">
        <button class="submit" type="submit">Сформировать</button>
    </form>
</div>
<table>
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
