<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/commons/header.jsp" />
</head>
<body>

<jsp:include page="/commons/navbar.jsp" />

<sitemesh:write property="body"/>

<jsp:include page="/commons/footer.jsp" />

</body>
</html>