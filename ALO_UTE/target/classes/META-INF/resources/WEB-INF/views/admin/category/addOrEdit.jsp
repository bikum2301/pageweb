<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<html>
<head>
    <title>Home Page</title>
    <style>
        .homepage {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
    <h2>${category.isEdit ? "Edit Category" : "Add Category"}</h2>
</body>
</html>
