<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Category List</title>
</head>
<body>
    <table>
        <tr>
            <th>STT</th>
            <th>Category name</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${categories}" var="category" varStatus="index">
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
                <td>${category.image}</td>
                <td>
                    <a href="/admin/categories/edit/${category.id}">Edit</a>
                    <a href="/admin/categories/delete/${category.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
