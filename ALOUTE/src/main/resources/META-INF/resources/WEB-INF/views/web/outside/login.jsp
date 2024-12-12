<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<form class="we-form" method="post" action="${pageContext.request.contextPath}/login">
    <input type="text" placeholder="Email" name="email">
    <input type="password" placeholder="Mật khẩu" name="password">
    <input type="checkbox"><label>Nhớ tôi</label>
    <button type="submit" data-ripple="">Đăng nhập</button>
    <a class="forgot underline" href="/forgot-password" title="">Quên mật khẩu?</a><br>
    <a class="forgot underline" href="/create-account" title="">Đăng ký</a>
</form>
