<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>


<form class="we-form" method="post" action="${pageContext.request.contextPath}/forgot_password">
	<label>Gửi mã xác nhận về email</label>
    <input type="text" placeholder="Email" name="email" id="email">
    <button type="submit" data-ripple="">Xác nhận</button>
</form>