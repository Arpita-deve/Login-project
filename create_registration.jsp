<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }
    h2 {
        text-align: center;
        color: #333333;
    }
    .form-container {
        max-width: 500px;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    form {
        display: flex;
        flex-direction: column;
    }
    label {
        margin: 10px 0 5px;
        color: #333333;
    }
    input[type="text"] {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #cccccc;
        border-radius: 4px;
        font-size: 16px;
    }
    input[type="submit"] {
        padding: 10px;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .message {
        margin-top: 15px;
        color: red;
        text-align: center;
    }
</style>
</head>
<body>
    <h2>Add Registration</h2>
    <div class="form-container">
        <form action="saveReg" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required/>

            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required/>

            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" required/>

            <input type="submit" value="ADD"/>
        </form>

        <%
        if(request.getAttribute("msg") != null) {
            out.println("<div class='message'>" + request.getAttribute("msg") + "</div>");
        }
        %>
    </div>
</body>
</html>
