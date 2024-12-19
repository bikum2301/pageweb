<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>


<!DOCTYPE html>
<html>
<head>

<jsp:include page="/commons/header.jsp" />

</head>
<body>

<sitemesh:write property="body"/>

</body>
</html>