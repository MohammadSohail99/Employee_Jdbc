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

<c:if test="${not empty empDel}">
    <h1> Employee deleted Successfully</h1>
    Employee id: ${empDel.id}<p></p>
    Employee Name: ${empDel.name}<p></p>
    Employee Designation: ${empDel.designation}<p></p>
    Employee Email: ${empDel.email}<p></p>
    Employee Email: ${empDel.address.street}<p></p>
    Employee Email: ${empDel.address.city}<p></p>
</c:if>
<c:if test="${empty empDel}">
    <h1>Employee not found</h1>
</c:if>

</body>
</html>
