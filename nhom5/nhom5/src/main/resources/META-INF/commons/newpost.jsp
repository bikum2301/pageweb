<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="card">
    <div class="card-body">
        <form id="newpost-form" method="POST" action="${pageContext.request.contextPath}/create-post">
            <div class="form-group">
                <textarea name="content" class="form-control" rows="3"
                          placeholder="What's on your mind?" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Post</button>
        </form>
    </div>
</div>
