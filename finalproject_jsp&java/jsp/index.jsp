<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        .wish:hover {
            color: blue;
        }
    </style>


</head>

<body>

    <!-- Topbar Start -->
    <div class="px-xl-5">
        <nav class=" fixed-top navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 border">
            <div class="collapse navbar-collapse  justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto align-items-center py-0">
                    <a href="index.html" class="nav-item nav-link active"><img src="img/logo.jpg" width="50"
                            height="50">
                    </a>
                    <a href="shop.html" class="nav-item nav-link">Shop</a>
                    <a href="detail.html" class="nav-item nav-link">Notice</a>
                    <a href="https://www.instagram.com/chezmoiiiiiii/?hl=en" class="nav-item nav-link"
                        target="_blank">Instagram</a>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <div class="navbar-nav ml-auto py-0">
                    <a href="Product_set.html" class="nav-item nav-link"><img src="${contextRoot}/img/set.png" width="20"
                            height="20"></a>
                    <a href="wish.html" class="nav-item nav-link"><img src="${contextRoot}/img/wish.png" width="20" height="20"></a>
                    <a href="${contextRoot}/cart.jsp" class="nav-item nav-link"><img src="${contextRoot}/img/cart.png" width="20" height="20"></a>
                    <a href="member.html" class="nav-item nav-link"><img src="${contextRoot}/img/user.png" width="20" height="20"></a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->

    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid  mb-0 mt-5">
        <div class="align-items-center justify-content-center" style="min-height: 200px; display: flex;">
            <h1 class="font-weight-semi-bold text-uppercase mb-3 text-primary">01</h1>
            <h2 class="font-weight-semi-bold text-uppercase mb-3 text-primary" style="margin-right: 1em;">確認訂購明細
            </h2>
            <h1 class="font-weight-semi-bold text-uppercase mb-3">02</h1>
            <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">填寫訂購資料</h2>
            <h1 class="font-weight-semi-bold text-uppercase mb-3">03</h1>
            <h2 class="font-weight-semi-bold text-uppercase mb-3" style="margin-right: 1em;">完成訂購</h2>


        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    <div class="container-fluid pt-3">
        <div class="row px-xl-5 table-responsive mb-5">
            <table class="table table-bordered text-center mb-0">
                <thead class="bg-secondary text-dark">
                    <tr>
                        <th>商品編號</th>
                        <th>商品名稱</th>
                        <th>商品圖片</th>
                        <th>顏色</th>
                        <th>尺寸</th>
                        <th>數量</th>
                        <th>單價</th>
                        <th>小計</th>
                        <th>收藏</th>
                        <th>刪除</th>
                    </tr>
                </thead>
                <tbody class="align-middle">
                <c:forEach items="cart" var="c">
                    <tr>
                        <td class="align-middle">${Cart.productId}</td>
                        <td class="align-middle">黑色針織衫</td>
                        <td class="align-middle"><img src="${contextRoot}/img/product/0812/A04 (6).jpeg" alt="" style="width: 5em;">
                        <td class="align-middle">黑</td>
                        <td class="align-middle">S</td>
                        <td class="align-middle">
                            <div class="input-group quantity mx-auto" style="width: 100px;">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-primary btn-minus">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control form-control-sm bg-secondary text-center"
                                    value="1">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-primary btn-plus">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </td>

                        <td class="align-middle">1500</td>
                        <td class="align-middle">1500</td>
                        <td class="align-middle"><button class="btn btn-sm"><img class="wish" src="${contextRoot}/img/wish.png" alt=""
                                    style="width: 1.5em; height:1.5em;"></button>
                        </td>
                        <td class="align-middle"><button class="btn btn-sm"><img class="delete" src="${contextRoot}/img/delete.png"
                                    alt="" style="width: 1.5em; height:1.5em;"></button>
                        </td>
                    </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-8 border-secondary  border mb-5" style="padding-left: 0; padding-right:0;">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold m-0">選擇運送及付款方式</h4>
                </div>

                <div class="card-body">
                    <div class="d-flex justify-content-between pt-1">
                        <h6 class=" font-weight-medium">付款方式</h6>
                    </div>
                    <div class="d-flex justify-content-between mb-2 pt-1">
                        <select name="shopping way" style="width: 100em; height:3em ;">
                            <option value="711" selected>銀行轉帳/ATM (一次付清)</option>
                            <option value="shopee">先付訂金後,蝦皮付尾款</option>
                        </select>
                    </div>
                    <div class="d-flex justify-content-between pt-1">
                        <h6 class=" font-weight-medium">運送方式</h6>
                    </div>
                    <div class="d-flex justify-content-between mb-2 pt-1">
                        <select name="shopping way" style="width: 100em;height:3em ;">
                            <option value="711" selected>7-11取貨</option>
                            <option value="shopee">蝦皮結帳後取貨</option>
                        </select>
                    </div>
                    <div class="d-flex justify-content-between pt-1">
                        <h6 class=" font-weight-medium">備註:</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">

                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">購物車明細</h4>
                    </div>

                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">小計:</h6>
                        </div>
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">運費:</h6>
                        </div>
                    </div>
                    <form class="mb-5 btn btn-block " action="">
                        <div class="input-group">
                            <input type="text" class="form-control p-4" placeholder="Coupon Code">
                            <div class="input-group-append">
                                <button class="btn btn-primary">使用折扣碼</button>
                            </div>
                        </div>
                    </form>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">總金額</h5>
                            <h5 class="font-weight-bold">$150</h5>
                        </div>
                        <button class="btn btn-block btn-primary my-3 py-3"
                            onclick="window.location.href = 'shop.html'">繼續購物
                            <!-- <a class="text-dark" href="shop.html"></a> -->
                        </button>
                        <button class="btn btn-block btn-primary my-3 py-3"
                            onclick="window.location.href = 'cart_orderDetail_1.html'">下一步結帳</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Cart End -->


    <!-- Footer Start -->
    <div class="container-fluid  text-dark mt-5 pt-5 border-top-1">
        <p class="text-center"><span
                style="color: rgb(86, 84, 84); font-size: 12px;">Email：chezmoiiiiiii@gmail.com</span></p>

        <p class="text-center"><span style="color: rgb(86, 84, 84); font-size: 12px;">Service time：Mon - Sun
                10:00-22:00</span></p>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->

    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

    <!--JavaScript & Jquery-->
    <script src="https://code.jquery.com/jquery-3.6.1.js"
        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script>
        $('.wish').hover(function () {
            $('.wish').attr('src', 'img/wish2.png')
        }, (function () {
            $('.wish').attr('src', 'img/wish.png')
        }))

        $('.delete').hover(function () {
            $('.delete').attr('src', 'img/delete2.png')
        }, (function () {
            $('.delete').attr('src', 'img/delete.png')
        }))
    </script>

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

    
</body>

</html>