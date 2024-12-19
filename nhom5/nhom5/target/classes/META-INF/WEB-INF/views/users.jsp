<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Following Section -->
            <c:if test="${fn:contains(currentPath, 'following')}">
                <h2 class="text-center mt-3">Following</h2>
                <c:if test="${empty users}">
                    <div class="card mb-3">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-0">You don't follow anyone</h5>
                            <a href="<c:url value='/users'/>" class="btn btn-primary btn-sm mt-2">View All Users</a>
                        </div>
                    </div>
                </c:if>
            </c:if>

            <!-- Followers Section -->
            <c:if test="${fn:contains(currentPath, 'followers')}">
                <h2 class="text-center mt-3">Followers</h2>
                <c:if test="${empty users}">
                    <div class="card mb-3">
                        <div class="card-body text-center">
                            <h5 class="card-title mb-0">You don't have any followers</h5>
                            <a href="<c:url value='/users'/>" class="btn btn-primary btn-sm mt-2">View All Users</a>
                        </div>
                    </div>
                </c:if>
            </c:if>

            <!-- Users Section -->
            <c:if test="${fn:contains(currentPath, 'users')}">
                <h2 class="text-center mt-3">Users</h2>
            </c:if>

            <!-- User List -->
            <c:if test="${(fn:contains(currentPath, 'followers') and not empty users) or 
                         (fn:contains(currentPath, 'following') and not empty users) or 
                         (fn:contains(currentPath, 'users') and not empty users)}">
                <div class="list-group mt-3">
                    <!-- For each user in users -->
                    <c:forEach items="${users}" var="user">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-auto pr-0">
                                        <c:choose>
                                            <c:when test="${not empty user.profileImage}">
                                                <img src="<c:url value='/images/${user.profileImage.id}'/>" 
                                                     width="50" alt="Profile Picture"/>
                                            </c:when>
                                            <c:otherwise>
                                                <img src="<c:url value='/images/default'/>" 
                                                     width="50" alt="Default Profile Picture"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="col d-flex align-items-start justify-content-between">
                                        <div>
                                            <h5 class="card-title mb-0">${user.username}</h5>
                                            <p>${user.biography}</p>
                                            <div class="d-flex justify-content-between">
                                                <p class="m-3"><span>${fn:length(user.posts)}</span> Posts</p>
                                                <p class="m-3"><span>${fn:length(user.likes)}</span> Likes</p>
                                            </div>
                                        </div>
                                        <a href="<c:url value='/${user.username}'/>" 
                                           class="btn btn-primary btn-sm">View Profile</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
        </div>
    </div>
</div>