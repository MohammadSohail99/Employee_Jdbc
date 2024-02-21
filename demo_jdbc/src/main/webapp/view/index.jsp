<%@page language="java"%>
<html>
<head>
    <style>
        .button-container {
            text-align: center;
        }

        .button-container form {
            display: inline-block;
            margin: 0 10px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<div class="button-container">
    <h1>Employee Application</h1>
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
</body>
</html>
