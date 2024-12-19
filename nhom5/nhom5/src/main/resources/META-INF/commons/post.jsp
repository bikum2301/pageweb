<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="card-body">
    <div class="row">
        <!-- Profile picture -->
        <div class="col-auto pr-0">
            <a href="/${post.user.username}">
                <c:choose>
                    <c:when test="${not empty post.user.profileImage}">
                        <img src="/images/${post.user.profileImage.id}" width="50" alt="Profile Picture"/>
                    </c:when>
                    <c:otherwise>
                        <img src="/images/default" width="50" alt="Default Profile Picture"/>
                    </c:otherwise>
                </c:choose>
            </a>
        </div>
        <div class="col">
            <div class="d-flex justify-content-between">
                <!-- Post content -->
                <div class="post-content ml-2">
                    <a href="/${post.user.username}">
                        <h5 class="card-title user-link">${post.user.username}</h5>
                    </a>
                    <p class="card-text">${post.content}</p>
                </div>
                <!-- 3-dot menu -->
                <div class="dropdown">
                    <c:if test="${!fn:contains(currentPath, 'post') || post.user.username eq sessionUser.username}">
                        <button class="btn" style="background-color:transparent" type="button"
                                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">⋮
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                            <c:if test="${!fn:contains(currentPath, 'post')}">
                                <a href="/post/${post.id}" class="dropdown-item">View post</a>
                            </c:if>
                            <c:if test="${post.user.username eq sessionUser.username}">
                                <form method="post" action="/post/${post.id}/delete">
                                    <button class="dropdown-item" type="submit">Delete post</button>
                                </form>
                            </c:if>
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="mt-2 d-flex" style="display:inline-flex">
                <!-- Like button -->
                <c:choose>
                    <c:when test="${!post.likedBy(sessionUser)}">
                        <form method="post" action="/like/${post.id}">
                            <input type="hidden" name="referer" value="${currentPath}">
                            <button class="btn btn-sm" style="background-color: transparent"
                                    type="submit">
                                <i class="fa fa-heart-o"></i>
                            </button>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <form method="post" action="/unlike/${post.id}">
                            <input type="hidden" name="referer" value="${currentPath}">
                            <button class="btn btn-sm" style="background-color: transparent"
                                    type="submit">
                                <i class="fa fa-heart"></i>
                            </button>
                        </form>
                    </c:otherwise>
                </c:choose>
                <!-- Like number -->
                <c:choose>
                    <c:when test="${not empty post.likes}">
                        <c:choose>
                            <c:when test="${fn:length(post.likes) eq 1}">
                                <span style="font-weight: bold;">${fn:length(post.likes)} like</span>
                            </c:when>
                            <c:otherwise>
                                <span style="font-weight: bold;">${fn:length(post.likes)} likes</span>
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                    <c:otherwise>
                        <span style="font-weight: bold;">0 likes</span>
                    </c:otherwise>
                </c:choose>
                <!-- Created at -->
                <div class="ml-auto mr-4">
                    <span>${post.createdAt.format(formatterHour)}</span>
                </div>
            </div>
        </div>
    </div>
</div>