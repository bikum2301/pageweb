<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<body>
    <div class="container mt-3">
        <div class="row justify-content-center">
            <div class="login-register-card col-md-6">
                <h1 class="text-center">Social Network</h1>
                <div class="card mt-3">
                    <div class="card-body">
                        <form:form method="POST" action="/register" modelAttribute="user">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <form:input path="username" id="username" class="form-control" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <form:input path="email" id="email" class="form-control" type="email" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <form:password path="password" id="password" class="form-control" required="required"/>
                            </div>
                            <div id="warning-message" class="alert alert-danger" role="alert" style="display: none"></div>
                            <div class="form-group d-flex justify-content-center">
                                <button type="submit" class="btn btn-primary mr-2">Register</button>
                                <a href="<c:url value='/login'/>" class="btn btn-primary">Login</a>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<script type="text/javascript">
    var registrationFailed = ${registrationFailed != null ? registrationFailed : 'false'};
    var error = "${error != null ? error : ''}";
</script>