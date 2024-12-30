<%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 12/27/2024
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        h1, h2 {
            color: #0056b3;
            margin: 10px 0;
        }

        center {
            margin: 20px 0;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Form styles */
        form {
            margin: 20px auto;
            width: 50%;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        caption {
            margin-bottom: 10px;
            font-size: 1.5em;
            font-weight: bold;
            color: #333;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #34495e;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:hover td {
            background-color: #e9ecef;
        }

        /* Input fields */
        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 3px;
            font-size: 1em;
        }

        input[type="submit"] {
            background-color: #34495e;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #34495e;
            opacity: 0.8;
        }
    </style>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Permission:</th>
                <td>
                    <input type="checkbox" name="add" size="15"/> add |
                    <input type="checkbox" name="edit" size="15"/> edit |
                    <input type="checkbox" name="delete" size="15"/> delete |
                    <input type="checkbox" name="view" size="15"/> view
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
