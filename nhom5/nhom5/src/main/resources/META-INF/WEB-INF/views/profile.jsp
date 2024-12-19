<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Bootstrap layout -->
<div class="container mt-3">
    <div class="row">
        <div class="col-md-3">
            <!-- User information -->
            <jsp:include page="/commons/userInfo.jsp"/>

            <!-- Follow / Unfollow button -->
            <c:if test="${sessionUser.username ne username}">
                <c:choose>
                    <c:when test="${isFollowing}">
                        <form action="<c:url value='/unfollow/${username}'/>" method="post">
                            <input class="btn btn-primary m-3" type="submit" value="Unfollow"/>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <form action="<c:url value='/follow/${username}'/>" method="post">
                            <input class="btn btn-primary m-3" type="submit" value="Follow"/>
                        </form>
                    </c:otherwise>
                </c:choose>
            </c:if>

            <!-- Edit profile button -->
            <c:if test="${sessionUser.username eq username}">
                <a href="<c:url value='/profile/edit'/>">
                    <button class="btn btn-primary m-3" type="submit" value="Edit profile">Edit profile</button>
                </a>
            </c:if>
        </div>

        <div class="col-md-9">
            <!-- Make a new post form -->
            <c:if test="${sessionUser.username eq username}">
                <div class="mb-3">
                    <jsp:include page="/commons/newpost.jsp"/>
                </div>
            </c:if>

            <!-- For each post in posts -->
            <c:forEach items="${posts}" var="post">
                <div class="post card mb-3">
                    <jsp:include page="/commons/post.jsp"/>
                </div>
            </c:forEach>
        </div>
    </div>
</div>