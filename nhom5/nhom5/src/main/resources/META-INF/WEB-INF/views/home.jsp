<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container mt-3">
    <div class="row">
        <div class="col-md-3">

            <!-- User information -->
            
            <jsp:include page="/commons/userInfo.jsp"/>

   <!--          Bootstrap layout -->
        </div>
        <div class="col-md-9">

<!--             Make a new post form -->
            <jsp:include page="/commons/newpost.jsp"/>

            <div id="posts">
                <c:forEach var="post" items="${feedPosts}">
                    <div class="post card mt-3">
                        <jsp:include page="/commons/post.jsp"/>
                    </div>
                </c:forEach>
            </div>

        </div>
    </div>
    <jsp:include page="/commons/footer.jsp"/>
</div>

