<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>Chezmoi</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="Free HTML Templates" name="keywords">
                <meta content="Free HTML Templates" name="description">

                <!-- Favicon -->
                <!-- Favicon -->
                <link href="https://img.onl/fUrHvw" rel="icon">

                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link
                    href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                    rel="stylesheet">

                <!-- Font Awesome -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="${contextRoot}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

                <!-- Customized Bootstrap Stylesheet -->
                <link href="${contextRoot}/css/style.css" rel="stylesheet">
            </head>

            <body>
                <!-- Topbar Start -->
                <jsp:include page="layout/navbar3.jsp"></jsp:include>
                <br>
                <!-- 	<!-- category start -->
                <%-- <jsp:include page="layout/category.jsp">
                    </jsp:include> --%>
                    <!-- 	<br> -->
                    <!-- accounce start -->
                    <jsp:include page="layout/announce.jsp"></jsp:include>
                    <br>

                    <!-- category start -->
                    <%--<jsp:include page="layout/category.jsp">
                        </jsp:include>--%>
                        <br>
                        <!-- productDetail start -->

                        <div class="container-detail container-detailproduct ">

                            <!-- title -->
                            <!-- product descript start-->
                            <div class="detailArea border-b1" style="width:900px; padding-bottom:70px; margin:auto">
                                <div class="detail-img-box ">
                                    <div class="detail-img">
                                        <img src="http://localhost:8080/Chezmoi/getMainPic/${productsId.photo.photoId}"
                                            alt="" style="margin:auto;style=" height: 350px; weight:auto">
                                    </div>
                                </div>
                                <div class="detail-info">
                                    <div class="info-inner">
                                        <div class="page-index align-items-center justify-content-center">
                                            <a href="${contextRoot}/index"
                                                class="align-items-center justify-content-center">Home</a><span>
                                                ></span> <a href="${contextRoot}/shop"
                                                class="align-items-center justify-content-center">All</a> <span>>
                                                <%-- <c:forEach var="Product" items="${productSeries}">--%>
                                            </span><a
                                                href="${contextRoot}/shop/${productsId.category}">${productsId.category}</a>

                                        </div>
                                        <h4 class="detail-name" name="product_name">${productsId.name}</h4>
                                        <!-- price -->
                                        <div class="detail-price border-b1">
                                            <span class="salePrice" name="salePrice">$${productsId.price}</span>
                                            <%-- </c:forEach>--%>
                                                <!-- dis price -->
                                                <!-- 						<span class="dis-price" name="discountPrice" login_status="T" -->
                                                <!-- 							discount="F"> 1610 </span> -->
                                                <!-- addfavorite  -->
                                                <!-- 						<span class="add-wish"><img -->
                                                <!-- 							src="img/icon/addFav_detailpage.png" alt=""></span> -->
                                        </div>

                                        <!-- payment & deliver -->
                                        <ul class="info-ul border-b1">
                                            <li class="info-li" style="padding-bottom: 5px"><img
                                                    src="img/icon/creditcard-icon-.png" alt="">付款方式:匯款轉帳
                                            </li>
                                            <li class="info-li" style="padding-bottom: 5px"><img
                                                    src="img/icon/deliver.png" alt="">運送方式:711店到店
                                            </li>
                                            <li class="info-li" style="color:darkred">11/18~11/20輸入【Happy2022】即可享$100折扣
                                            </li>
                                        </ul>
                                        <div class="color border-b1" style="padding:12px">

                                            <span>color</span>
                                            <c:forEach var="Product" items="${productSeries}">
                                                <span class="color-select">

                                                    <button class="sele-btn" type="button"
                                                        id="color">${Product.color}</button>
                                                </span>
                                            </c:forEach>
                                        </div>
                                        <div class="size border-b1" style="padding:12px">
                                            <span>size</span>
                                            <c:forEach var="Product" items="${productSeries}">


                                                <span class="size-select">
                                                    <button class="sele-btn" type="button">${Product.size}</button>
                                                    <!-- 														</span> <span>肩49/胸53/長46</span> -->
                                                </span>
                                            </c:forEach>
                                        </div>

                                        <div class="addTo">
                                            <div class="add-inner" style="padding-top: 10px">
                                                <a href="${contextRoot}/shop/addToCart?id=${Product.productId}"><button
                                                        class="add-btn1 add-btn-text">Add Cart</button></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pro-detail justify-content-center">
                                <div class="pro-deta-title">
                                    <span>Product Details</span>
                                </div>
                                <div style="width:650px; text-align; margin:auto">
                                    <span class="detail-desc " id="descript">
                                        ${Product.descript.text} </span>
                                </div>
                                <div>
                                    <p>
                                        <img class="img-fluid w-300" style="width:60%; text-align; margin:auto"
                                            src="http://localhost:8080/Chezmoi/getPic1/${productsId.photo.photoId}">
                                    </p>
                                    <br>
                                    <p>

                                        <img class="img-fluid w-300" style="width:60%; text-align; margin:auto"
                                            src="http://localhost:8080/Chezmoi/getPic2/${productsId.photo.photoId}">
                                    </p>
                                    <br>
                                    <p>
                                        <img class="img-fluid w-300"
                                            src="http://localhost:8080/Chezmoi/getPic3/${productsId.photo.photoId}">
                                    </p>
                                    <br>
                                    <p>
                                        <img class="img-fluid w-300"
                                            src="http://localhost:8080/Chezmoi/getPic4/${productsId.photo.photoId}">
                                    </p>
                                    <br>
                                </div>


                            </div>


                            <!-- product descript end-->


                            <!-- product picture and more strat -->

                            <!-- product picture and more end -->


                        </div>

                        <!-- productDetail end -->


                        </div>

                        <!-- productDetail end -->


                        <!-- Footer Start -->
                        <jsp:include page="layout/footer.jsp"></jsp:include>
                        <!--JavaScript & Jquery-->
                        <script src="https://code.jquery.com/jquery-3.6.1.js"></script>

                        <!-- JavaScript Libraries -->
                        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                        <script
                            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
                        <script src="${contextRoot}/lib/easing/easing.min.js"></script>
                        <script src="${contextRoot}/lib/owlcarousel/owl.carousel.min.js"></script>

                        <!-- Template Javascript -->
                        <script src="${contextRoot}/js/main.js" type="text/javascript"></script>

                        <!-- Contact Jquery File -->
                        <script src="${contextRoot}/js/jquery-3.6.1.min.js" type="text/javascript"></script>

                        <!-- Contact Javascript File -->
                        <script src="${contextRoot}/mail/jqBootstrapValidation.min.js" type="text/javascript"></script>
                        <script src="${contextRoot}/mail/contact.js" type="text/javascript"></script>
                        <script type="text/javascript">
                            $('#color').click(function () {
                                var color = $(this).text();
                                console.log(color)
                            })
                        </script>

            </body>

            </html>