<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="template" tagdir="/WEB-INF/tags" %>

<template:login-layout>
    <jsp:body>
        <div id="login-page" class="vertical-align-wrap">
            <div class="vertical-align-middle">
                <div class="auth-box ">
                    <div class="left">
                        <div class="content">
                            <div class="header">
                                <div class="logo text-center"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="HMS Logo"></div>
                                <p class="lead">Login to your account</p>
                            </div>
                            <div class="validate-message" >
                                <c:if test="${requestScope.messages.get('login')}">
                                    <div class="text-danger" >${requestScope.messages.get('login')}</div>
                                </c:if>
                            </div>
                            <form class="form-auth-small" method="post" action="${pageContext.request.contextPath}/auth/login">
                                <div class="form-group">
                                    <label for="signin-email" class="control-label sr-only">Email</label>
                                    <input required type="email" class="form-control" id="signin-email" value="ch.nguyen@miu.edu" name="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label for="signin-password" class="control-label sr-only">Password</label>
                                    <input required type="password" class="form-control" id="signin-password" value="123456" name="password" placeholder="Password">
                                </div>
                                <div class="form-group clearfix">
                                    <label class="fancy-checkbox element-left">
                                        <input type="checkbox">
                                        <span>Remember me</span>
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
                                <div class="bottom">
                                    <span class="helper-text"><i class="fa fa-lock"></i> <a href="#">Forgot password?</a></span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="right">
                        <div class="overlay"></div>
                        <div class="content text">
                            <h1 class="heading">Hotel Management System</h1>
                            <p>by The Covid-333 Team</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </jsp:body>
</template:login-layout>