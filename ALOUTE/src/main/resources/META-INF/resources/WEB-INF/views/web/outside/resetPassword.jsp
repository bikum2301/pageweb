<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>


<form class="we-form" method="post">
	<label>Đặt lại mật khẩu cho tài khoản ${email}</label>
    <input type="password" placeholder="Password" name="password" id="password">
    <button type="submit" data-ripple="">Xác nhận</button>
</form>