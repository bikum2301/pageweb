<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Bootstrap layout -->
<div class="container mt-3">
    <div class="row">
        <div class="col-md-3">
            <!-- User information -->
            <jsp:include page="/commons/userInfo.jsp"/>
        </div>
        
        <div class="col-md-9">
            <!-- Edit Profile Page -->
            <div class="card">
                <div class="container m-3">
                    <h2>Edit Profile</h2>
                    <form action="<c:url value='/profile/edit'/>" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name"
                                   value="${sessionUser.name}"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" class="form-control" id="username" name="username"
                                   value="${sessionUser.username}"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="text" class="form-control" id="email" name="email"
                                   value="${sessionUser.email}"/>
                        </div>
                        
                        <div class="form-group">
                            <label for="biography">Biography:</label>
                            <textarea class="form-control" id="biography" name="biography" 
                                    rows="3">${sessionUser.biography}</textarea>
                        </div>
                        
                        <div class="form-group">
                            <label for="profilePicture">Profile Picture:</label>
                            <input type="file" class="form-control-file" id="profilePicture" 
                                   name="profilePicture"/>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                        
                        <button type="submit" class="btn btn-primary" 
                                formaction="<c:url value='/profile/delete'/>" 
                                formmethod="post">Delete Profile</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>