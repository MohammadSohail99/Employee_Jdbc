<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<style>
    .button-container {
        text-align: center;
    }

    .button-container form {
        display: inline-block;
        margin: 0 10px;
    }
</style>

<div class="button-container">
    <form action="/addEmployee">
        <input type="submit" value="Add Employee">
    </form>
    <form action="/update">
        <input type="submit" value="Update Employee">
    </form>
    <form action="/all">
        <input type="submit" value="show Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<h1> Employee Added Successfully</h1>
Employee id: ${employee.id}<p></p>
Employee Name: ${employee.name}<p></p>
Employee designation: ${employee.designation}<p></p>
Employee email: ${employee.email}<p></p>
Employee street: ${employee.address.street}<p></p>
Employee city: ${employee.address.city}<p></p>
<a href="addEmployee">Home</a>
</body>
</html>
