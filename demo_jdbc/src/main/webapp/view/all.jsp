<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
        <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .button-container {
            margin-bottom: 20px;
        }

        .button-container form {
            display: inline-block;
            margin-right: 10px;
        }
    </style>

</head>
<body>
<br>
<br>
<h2>Table form DataBase</h2>
<table border="1">
    <tr>
        <th>Employee ID</th>
        <th>Employee Name</th>
        <th>Employee Designation</th>
        <th>Employee Email</th>
        <th>Employee Street</th>
                <th>Employee City</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td><c:out value="${employee.getId()}"/></td>
            <td><c:out value="${employee.getName()}"/></td>
            <td><c:out value="${employee.getDesignation()}"/></td>
            <td><c:out value="${employee.getEmail()}"/></td>
            <td><c:out value="${employee.address.getStreet()}"/></td>
            <td><c:out value="${employee.address.getCity()}"/></td>
            <td>
                <form action="/updateDetails">
                    <input type="hidden" name="id" value="${employee.getId()}">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td>
                <form action="/Employee/delete">
                    <input type="hidden" name="id" value="${employee.getId()}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>