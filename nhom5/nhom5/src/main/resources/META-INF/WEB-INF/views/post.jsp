<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-3">
            <!-- User information -->
            <jsp:include page="/commons/userInfo.jsp"/>

            <!-- View profile button -->
            <c:if test="${sessionUser.username ne post.user.username}">
                <a href="<c:url value='/${post.user.username}'/>">
                    <button class="btn btn-primary m-3" type="submit" value="View profile">View profile</button>
                </a>
            </c:if>
        </div>

        <!-- Bootstrap layout -->
        <div class="col-md-9">
            <div class="card mb-3">
                <!-- Post content -->
                <jsp:include page="/commons/post.jsp"/>
            </div>
        </div>
    </div>
</div>