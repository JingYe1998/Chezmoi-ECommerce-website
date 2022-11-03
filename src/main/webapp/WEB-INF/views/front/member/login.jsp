<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html>

            <form:form action="login" method="post" modelAttribute="loginsubmit">
                <h1 class="text-dark">Login</h1>

                <h5 class="Msg">${Msg}</h5>
                <form method="post" action="login.js">
                    <div>
                        <input type="text" name="email" class="text-field" placeholder="e-mail" />
                    </div>
                    <br>
                    <div>
                        <input type="password" name="password" class="text-field" placeholder="password" />
                    </div>
                    <br>
                    <div>
                        <a href="${contextRoot}/member/editPassword" id="forget-pwd" class="text-primary" href="forgotpassword.html">忘記密碼？</a>
                    </div>
                    <br>
                    <div>
                        <input type="submit" id="btn-login" class="btn-primary text-dark" value="登入">
                    </div>
                    <p class="text-center">
                        <a href="${contextRoot}/member/register" id="customer_register_link" class="text-primary">註冊帳號</a>
                    </p>

                    <body>
                        <div id="login-box" class="container">


                            <div class="container" id="login-inside">
                                <h1 class="text-dark">Login</h1>
                                <form:form action="${contextRoot}/member/loginsubmit" method="post" modelAttribute="loginsubmit">
                                    <h5 class="Msg">${param.Msg}</h5>
                                    <form method="post" action="login.js">
                                        <div class="row">
                                            <div class="col">
                                                <div>
                                                    <form:input type="text" path="email" class="text-field" placeholder="e-mail" inputmode="email" autocorrect="off" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="required" oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的email 例：abc@gmail.com')"
                                                    />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row" style="margin-bottom: 0.5rem;">
                                            <div class="col">
                                                <div>
                                                    <form:input type="password" path="password" class="text-field" placeholder="password" pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$" required="required" oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的密碼格式：需含英數至少六個字元')" id="myPwd" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row my-0">
                                            <div class="col d-flex" style="justify-content:start;align-items:center;">

                                                <a href="${contextRoot}/member/forgotpassword" id="forget-pwd" class="text-primary">忘記密碼？</a>

                                            </div>
                                            <div class="col">
                                                <div style="display: flex;
                                        align-items: center;justify-content: end;">
                                                    <input type="checkbox" style="width:1rem ;" onclick="myFunction()" name="" id="pwd_show" value="">
                                                    <label style="    margin-left: 0.5rem;" class="" for="pwd_show">顯示密碼</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col d-flex" style="justify-content:center ;">

                                                <input type="submit" id="btn-login" class="btn-primary text-dark" value="登入">

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col" style="text-align:center ;">
                                                <a href="${contextRoot}/member/register" id="customer_register_link" class="text-primary">註冊帳號</a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col" style="text-align:center ;">
                                                <p>
                                                    <a href="${contextRoot}/" class="text-primary">返回首頁</a>
                                                </p>

                                            </div>
                                        </div>


                                    </form>
                                </form:form>
                            </div>
                        </div>
                        <!-- <script src="/js/jquery-3.6.1.min.js"></script> -->
                        <script>
                            function myFunction() {
                                var x = document.getElementById("myPwd");
                                if (x.type === "password") {
                                    x.type = "text";
                                } else {
                                    x.type = "password";
                                }
                            }
                        </script>
                    </body>

            </html>