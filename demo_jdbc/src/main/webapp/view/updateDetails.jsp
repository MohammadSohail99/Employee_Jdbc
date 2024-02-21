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
        <input type="submit" value="show All Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<form:form modelAttribute="empUpd" method="post" action="/Employee/update">
    <table>
        <tr>
            <td> Employee ID</td>
            <td><form:input path="id" readonly="true" value ="${empUpd.getId()}"/></td>
        </tr>
        <tr>
            <td> Employee Name</td>
            <td><form:input path="name" value = "${empUpd.getName()}" /></td>
        </tr>
        <tr>
            <td> Employee Designation</td>
            <td><form:input path="designation" value = "${empUpd.getDesignation()}"/></td>
        </tr>
        <tr>
            <td> Employee Email</td>
            <td><form:input path="email" type="email" value = "${empUpd.getEmail()}"/></td>
        </tr>
         <tr>
                    <td> Employee Street</td>
                    <td><form:input path="address.street" type="text" value = "${empUpd.address.getStreet()}"/></td>
                </tr>
                 <tr>
                            <td> Employee City</td>
                            <td><form:input path="address.city" type="text" value = "${empUpd.address.getCity()}"/></td>
                        </tr>
        <tr>
            <td><input type="submit" value="update"></td>
        </tr>
    </table>
</form:form>

</body>
</html>