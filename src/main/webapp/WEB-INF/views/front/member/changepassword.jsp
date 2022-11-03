<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密碼</title>

<link href="${contextRoot}/css/register.css" rel="stylesheet">
</head>
<body>
<div id="login-box" class="bg-secondary">
        <form:form action="${contextRoot}/member/updatepassword" method="post" modelAttribute="updatepassword">

            <h1 class="text-dark">修改密碼</h1>
            <form method="post" action="login.js">
            	<input type="hidden" name="memberId" path="memberId" value="${mb.memberId}">
                <p>請輸入新密碼。</p>
                <div>
                    <input type="password" class="text-field-Register" name="password" path="password" id="password"
                        placeholder="密碼" pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$" required="required"
                        oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的密碼格式：需含英數至少六個字元')"
                        required="required" autocomplete>
                </div>

                <div>
                    <input type="submit" id="btn-login" class="btn-primary text-dark" value="提交">
                </div>
                <p>
                    <a href="${contextRoot}/member/login" class="text-primary">取消</a>
                </p>

            </form>
        </form:form>
    </div>
</body>
</html>