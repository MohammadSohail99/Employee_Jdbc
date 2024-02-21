<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
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
        <input type="submit" value="show All Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<c:if test="${not empty empGet}">
    <h1> Employee found</h1>
    Employee id: ${empGet.id}<p></p>
    Employee Name: ${empGet.name}<p></p>
    Employee Designation: ${empGet.designation}<p></p>
    Employee Email: ${empGet.email}<p></p>
</c:if>
<c:if test="${empty empGet}">
    <h1>Employee not found</h1>
</c:if>


</body>
</html>
