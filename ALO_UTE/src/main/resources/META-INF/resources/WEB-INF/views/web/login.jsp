<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<form class="we-form" method="post">
    <input type="text" placeholder="Email">
    <input type="password" placeholder="Mật khẩu">
    <input type="checkbox"><label>Nhớ tôi</label>
    <button type="submit" data-ripple="">Đăng nhập</button>
    <a class="forgot underline" href="#" title="">Quên mật khẩu?</a>
</form>
