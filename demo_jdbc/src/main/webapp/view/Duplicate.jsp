<!DOC TYPE html>
<html>
<head>
    <style>
        .button-container {
            text-align: center; /* Align buttons to the center */
        }

        .button-container form {
            display: inline-block; /* Make forms display inline */
            margin: 0 10px; /* Add some spacing between buttons */
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
    <form action="/Employee/getall">
        <input type="submit" value="show All Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>

</div>
<h1>ID is already present</h1>
</body>
</html>
