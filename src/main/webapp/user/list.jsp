<%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 12/27/2024
  Time: 9:59 AM
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
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fa;
            color: #333;
        }

        h1, h2 {
            color: #2c3e50;
            margin: 10px 0;
        }

        center {
            margin: 20px 0;
        }

        a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Table styles */
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table caption {
            margin-bottom: 15px;
            font-size: 1.8em;
            font-weight: bold;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #34495e;
            color: #ffffff;
            font-weight: bold;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        tr:hover {
            background-color: #ecf0f1;
        }

        /* Action links */
        td a {
            margin: 0 5px;
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            background-color: #3498db;
            color: #ffffff;
            text-align: center;
            display: inline-block;
            font-size: 0.9em;
            transition: background-color 0.3s ease;
        }

        td a:hover {
            opacity: 0.8;
        }

        /* Search and sort links */
        form {
            margin: 20px auto;
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        form input[type="text"] {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 200px;
        }

        form button {
            padding: 10px 20px;
            font-size: 1em;
            background-color: #3498db;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #2980b9;
        }

        .sort-link {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            font-size: 1em;
            background-color: #2ecc71;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .sort-link:hover {
            opacity: 0.8;
        }

        .search-btn {
            padding: 12px 20px;
            background: #2ecc71;
            color: #fff;
            border: none;
            border-radius: 5px;
            margin: 0 10px;
        }

        .search-btn:hover {
            opacity: 0.8;
            cursor: pointer;
        }

        input {
            padding: 10px;
            width: 500px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .delete {
            color: #f94646;
        }
    </style>
</head>
<body>

<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <form action="users" method="get">
            <input type="hidden" name="action" value="search"/>
            <input type="text" name="country" placeholder="Search by country"/>
            <button class="search-btn" type="submit">Search</button>
        </form>
        <div><a class="sort-link" href="users?action=sort">Sort by Name</a></div>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a class="delete" href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
