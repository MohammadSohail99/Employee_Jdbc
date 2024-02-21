<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>


<div class="button-container">
    <form action="/addEmployee">
        <input type="submit" value="Add Employee">
    </form>
    <form action="/update">
        <input type="submit" value="Update Employee">
    </form>
    <form action="/all">
        <input type="submit" value="show All Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<c:if test="${not empty empUpdate}">
    <h1> Employee updated</h1>
    Employee id: ${empUpdate.id}<p></p>
    Employee Name: ${empUpdate.name}<p></p>
    Employee Designation: ${empUpdate.designation}<p></p>
    Employee Email: ${empUpdate.email}<p></p>
    Employee Street: ${empUpdate.address.street}<p></p>
        Employee City: ${empUpdate.address.city}<p></p>
</c:if>

</body>
</html>
