<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>


<form class="we-form" method="post" action="${pageContext.request.contextPath}/create-account">
    <input type="text" placeholder="Email" name="email" id="email">
    <input type="password" placeholder="Password" name="password" id="password">
    <input type="text" placeholder="Username" name="username" id="username">
    <button type="submit" data-ripple="">Đăng kí</button>
    <a class="forgot underline" href="${pageContext.request.contextPath}/forgot-password" title="">Quên mật khẩu</a>
</form>