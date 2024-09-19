<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Page</title>
<style>
body {
	font-family: Arial, sans-serif;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	background-color: #f1f1f1;
}

.manager-box {
	border: 1px solid #ccc;
	padding: 20px;
	margin: 20px;
	background-color: #fafafa;
}

.logout-button {
	background-color: #ff4b5c;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
}

.logout-button:hover {
	background-color: #ff1c3c;
}
</style>
</head>
<body>
	<div class="header">
		<div class="manager-box">MANAGER</div>
		<form action="/page/manager/logout"
			method="post">
			<button type="submit" class="logout-button">Logout</button>
		</form>
	</div>
</body>
</html>