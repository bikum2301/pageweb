<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="card">
    <c:choose>
        <c:when test="${not empty user.profileImage}">
            <img src="/images/${user.profileImage.id}" alt="Profile Picture"/>
        </c:when>
        <c:otherwise>
            <img href="/${user.username}" src="/images/default" alt="Default Profile Picture"/>
        </c:otherwise>
    </c:choose>
    
    <div class="card-body">
        <c:if test="${not empty user.name}">
            <h4 style="font-weight: bold;">${user.name}</h4>
        </c:if>
        
        <a href="/${user.username}">
            <h5 class="card-title user-link">@${user.username}</h5>
        </a>
        
        <p class="card-text">${user.biography}</p>
        
        <div class="followers">
            <a href="/${user.username}/followers" class="card-link">Followers</a>
            <span class="count">${fn:length(user.followers)}</span>
        </div>
        
        <div class="following">
            <a href="/${user.username}/following" class="card-link">Following</a>
            <span class="count">${fn:length(user.following)}</span>
        </div>
        
        <div class="likes">
            <a href="/${user.username}/likes" class="card-link">Likes</a>
            <span class="count">${fn:length(user.likes)}</span>
        </div>
    </div>
</div>