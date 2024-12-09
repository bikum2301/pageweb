<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>


<form class="we-form" method="post" action="${pageContext.request.contextPath}/auth/signup">
    <input type="text" placeholder="Email" name="email">
    <input type="password" placeholder="Password" name="password">
    <input type="text" placeholder="Full name" name="fullname">
    <input type="checkbox"><label>Gửi mã xác nhận về gmail</label>
    <button type="submit" data-ripple="">Đăng kí</button>
    <a class="forgot underline" href="#" title="">Quên mật khẩu</a>
</form>