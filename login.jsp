<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .login-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    h2 {
        text-align: center;
        color: #333333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    input[type="text"], input[type="password"] {
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #cccccc;
        border-radius: 4px;
        font-size: 16px;
    }
    input[type="submit"] {
        padding: 10px;
        background-color: #28a745;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
        background-color: #218838;
    }
    .error {
        color: red;
        margin-top: 10px;
        text-align: center;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>Login here...</h2>
        <form action="verifyLogin" method="post">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required/>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required/>
            <input type="submit" value="Login"/>
        </form>
        <%
        if(request.getAttribute("error") != null){
            out.println("<div class='error'>" + request.getAttribute("error") + "</div>");
        }
        %>
    </div>
</body>
</html>
