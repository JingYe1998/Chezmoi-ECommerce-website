<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Chezmoi 韓國女裝</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="${contextRoot}/img/logo.jpg" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextRoot}/css/style.css" rel="stylesheet">
    <style>
        li,
        ul {
            list-style: none;
            padding: 0%;
        }

        input[type=checkbox] {
            height: 0;
            width: 0;
            visibility: hidden;

        }

        label {
            cursor: pointer;
            text-indent: -9999px;
            width: 50px;
            height: 25px;
            background: grey;
            /* display: block; */
            border-radius: 25px;
            position: relative;
        }

        label:after {

            content: '';
            position: absolute;
            top: 2px;
            left: 5px;
            width: 23px;
            height: 23px;
            background: #fff;
            border-radius: 23px;
            transition: 0.3s;
        }

        input:checked+label {
            background: #D19C97;
        }

        input:checked+label:after {

            left: calc(100% - 5px);
            transform: translateX(-100%);
        }
    </style>
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid align-items-center justify-content-center">
        <div class="row">
            <div class="col-lg-1 d-none d-lg-block pt-1">
                <div class="container-fluid">
                    <a href="admin_index.html" class="nav-item nav-link active"><img src="${contextRoot}/img/logo.png" width="50"
                            height="50"></a>

                </div>
            </div>
            <div class="col-lg-5 d-none d-lg-block pt-3" style="padding-left:1em;">

                <a href="admin_index.html" class="text-decoration-none">
                    <h1 class="display-5 font-weight-semi-bold">後台管理中心</h1>
                </a>
            </div>
        </div>

    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-3">
            <div class="col-lg-3 d-none d-lg-block pt-3">
                <div class="container-fluid">
                    <ul class="p-0 menu border">
                        <li class="p-0">
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">會員管理</a>
                            <ul class="inmenu">
                                <li><a href="member.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">會員資料表</a>
                                </li>
                            </ul>
                            <ul class="inmenu">
                                <li><a href="messageCheck.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">留言板查看/回覆</a>
                                </li>
                            </ul>

                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">產品管理</a>
                            <ul class="inmenu">
                                <li><a href="myProduct.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">我的產品</a>
                                </li>
                            </ul>
                            <ul class="inmenu">
                                <li><a href="addProduct.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">產品上架</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">結帳管理</a>
                            <ul class="inmenu">
                                <li><a href="shipping.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">物流管理</a>
                                </li>
                                <li><a href="payment.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">金流管理</a>
                                </li>
                                <li><a href="coupon.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">折扣碼設定</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">訂單管理</a>
                            <ul class="inmenu">
                                <li><a href="orderSales.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">銷售訂單</a>
                                </li>
                                <li><a href="orderShip.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">訂單出貨</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a
                                class="btn shadow-none d-flex border-bottom align-items-center justify-content-between bg-primary text-white w-100">營運表現</a>
                            <ul class="inmenu">
                                <li><a href="salesData.html"
                                        class="btn d-flex border-bottom align-items-center justify-content-between text-black w-100">商品銷售狀況</a>
                                </li>
                                <li><a href="salesReport.html"
                                        class="btn d-flex align-items-center justify-content-between text-black w-100">業績報表</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8 pt-3">
                <div class="container-fluid pt-1">
                    <div class="d-flex">
                        <h2 class="font-weight-semi-bold mr-3">金流管理</h2>
                    </div>
                    <div class="row ml-1">
                        <div class="row col-lg-9">
                          <form:form action="${contextRoot}/back/updatePayment" method="post" modelAttribute="UpdatePayment">
                            <table class="table table-bordered text-center">
                                <thead class="bg-secondary text-dark">
                                    <tr>
                                        <th>id</th>
                                        <th>方法</th>
                                        <th>啟用狀態(啟用:ON/未啟用:OFF)</th>
                                    </tr>
                                </thead>
                                <tbody class="align-middle">
                                    <tr>
                                        <td class="align-middle"><form:input path="paymentId" type="text" value="${UpdatePayment.paymentId}" /></td>
                                        <td class="align-middle"><form:input path="paymentWay" type="text" value="${UpdatePayment.paymentWay}"/></td>
                                        <td class="align-middle"><form:input path="paymentState" type="text" value="${UpdatePayment.paymentState}"/></td>
                                    </tr>
                                </tbody>
                            </table>
                             <button type="submit" class="btn btn-primary mb-3">送出修改</button>
                             <a href="${contextRoot}/back/payment" class="text-primary font-weight-medium ml-2">返回查詢</a>
                            </form:form>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>

        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


      <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="${contextRoot}/lib/easing/easing.min.js"></script>
    <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

     <!-- Template Javascript -->
     <script src="${contextRoot}/js/main.js" type="text/javascript"></script>

     <!-- Contact Jquery File -->
     <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script>

      <!-- Contact Javascript File -->
      <script src="${contextRoot}/mail/jqBootstrapValidation.min.js" type="text/javascript"></script>
      <script src="${contextRoot}/mail/contact.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                $('.menu>li>a').click(function (e) {
                    e.preventDefault();
                    //點選到的.menu>li>a顯示裡面的.inmenu 
                    $(this).siblings('.inmenu').slideDown().parent().siblings().find('.inmenu').slideUp();
                    //點選到的.menu>li>a 顯示動態active
                    $(this).addClass('active').parent().siblings().find('a').removeClass('active');
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                $('.example2').hide();
                $('a#toggle-example2').click(function () {
                    $('.example2').slideToggle(1000);
                    return false;
                });
            });
        </script>
</body>

</html>