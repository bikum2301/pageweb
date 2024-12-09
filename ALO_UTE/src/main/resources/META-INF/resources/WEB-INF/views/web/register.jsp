<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>


<form class="we-form" method="post">
    <input type="text" placeholder="Email">
    <input type="password" placeholder="Password">
    <input type="text" placeholder="examole@gmail.com">
    <input type="checkbox"><label>Gửi mã xác nhận về gmail</label>
    <button type="submit" data-ripple="">Đăng kí</button>
    <a class="forgot underline" href="#" title="">Quên mật khẩu</a>
</form>