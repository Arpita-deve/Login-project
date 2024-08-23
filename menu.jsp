<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
        text-align: center;
    }
    .nav-links {
        margin: 20px 0;
    }
    .nav-links a {
        margin: 0 15px;
        padding: 10px 20px;
        text-decoration: none;
        color: #007bff;
        background-color: #ffffff;
        border: 1px solid #007bff;
        border-radius: 4px;
        font-size: 16px;
    }
    .nav-links a:hover {
        background-color: #007bff;
        color: #ffffff;
    }
    .logout-form {
        margin-top: 20px;
    }
    .logout-form input[type="submit"] {
        padding: 10px 20px;
        background-color: #dc3545;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    .logout-form input[type="submit"]:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
    <div class="nav-links">
        <a href="saveReg">Add Registration</a>
        <a href="allReg">List Registration</a>
    </div>
    <div class="logout-form">
        <form action="logOut" method="post">
            <input type="submit" value="Logout" />
        </form>
    </div>
</body>
</html>
