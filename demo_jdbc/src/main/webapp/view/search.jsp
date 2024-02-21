<!DOCTYPE html>
<html>
<head>
    <style>
        .button-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .button-container form, form.align-center {
            display: inline-block;
            margin: 0 10px;
        }

        form.align-center {
            text-align: center;
        }

        .form-group {
            text-align: center;
        }
    </style>
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
<form action="/deletedByName" class="align-center">
    <div class="form-group">
        <label for="name">Enter Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <br>
        <input type="submit" value="search">
    </div>
</form>
</body>
</html>
