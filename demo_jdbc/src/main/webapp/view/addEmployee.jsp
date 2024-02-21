<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<!DOCTYPE html>


<div class="button-container">
    <form action="/addEmployee">
        <input type="submit" value="Add Employee">
    </form>
    <form action="/update">
        <input type="submit" value="Update Employee">
    </form>
    <form action="/all">
        <input type="submit" value="show All">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<form:form modelAttribute="employee" action="addEmployeeResult">
    <table>
        <tr>
            <td> Employee Id</td>
            <td><form:input type ="number" path="id" required="true"/></td>
        </tr>
        <tr>
            <td> Employee Name</td>
            <td><form:input path="name" required="true"/></td>
        </tr>
        <tr>
            <td> Employee designation</td>
            <td><form:input path="designation" required="true"/></td>
        </tr>
        <tr>
            <td> Employee email</td>
            <td><form:input path="email" required="true"/></td>
        </tr>
        <tr>
                    <td> Employee Street</td>
                    <td><form:input type ="text" path="address.street" required="true"/></td>
                </tr>
        <tr>
                     <td> Employee City</td>
                            <td><form:input type ="text" path="address.city" required="true"/></td>
                        </tr>
                <tr>
            <td><input type="submit" value="Add Employee"></td>
        </tr>
    </table>
</form:form>
</body>
</html>