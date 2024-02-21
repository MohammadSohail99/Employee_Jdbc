<!DOCTYPE html>
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
<form action="/updateDetails" class="align-center">
    <div class="form-group">
        <label for="id">Enter ID:</label><br>
        <input type="number" id="id" name="id"><br>
        <br>
        <input type="submit" value="Previous Details">
    </div>
</form>
</body>
</html>
