<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Registrations</title>
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
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #ffffff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #dddddd;
    }
    th {
        background-color: #f2f2f2;
        color: #333333;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #eaeaea;
    }
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <h2>All Registrations</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>

        <%
        ResultSet result = (ResultSet) request.getAttribute("res");
        while (result.next()) {
        %>

        <tr>
            <td><%= result.getString(1) %></td>
            <td><%= result.getString(2) %></td>
            <td><%= result.getString(3) %></td>
            <td><a href="delete?emailId=<%= result.getString(2) %>">Delete</a></td>
            <td><a href="update?email=<%= result.getString(2) %>&mobile=<%= result.getString(3) %>">Update</a></td>
        </tr>

        <%
        }
        %>

    </table>
</body>
</html>
