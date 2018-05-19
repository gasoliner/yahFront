<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="bar">
    <div class="in">

        <div class="uer">
            <p class="op">
                <c:if test="${member == null}">
                    <a href="${pageContext.request.contextPath}/login/login_ui"
                       rel="external nofollow">登录</a> / <a
                        href="${pageContext.request.contextPath}/login/registry_ui"
                        rel="external nofollow">注册</a>
                </c:if>
                <c:if test="${member != null}">
                    欢迎您，<a href="${pageContext.request.contextPath}/member/personInfo"
                    rel="external nofollow">${member.name}</a>|<a href="${pageContext.request.contextPath}/login/logout">退出</a>
                </c:if>
            </p>

        </div>
    </div>
</div>