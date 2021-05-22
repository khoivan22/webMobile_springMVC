<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<jsp:include page="../common/user/header.jsp"/>
<body>
<div class="page-wrapper">

    <main class="main">
        <div class="page-content" style="margin-top: 30px">
            <div class="container">
                <div class="product-details-top mb-2">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="product-gallery product-gallery-vertical">
                                <div class="row">
                                    <figure class="product-main-image">
                                        <img id="product-zoom" src="<c:url value="${product.listImg[0]}"/> " data-zoom-image="${pageContext.request.contextPath}/${product.listImg[0]}" alt="product image">

                                        <a href="#" id="btn-product-gallery" class="btn-product-gallery">
                                            <i class="icon-arrows"></i>
                                        </a>
                                    </figure><!-- End .product-main-image -->

                                    <div id="product-zoom-gallery" class="product-image-gallery">
                                        <c:forEach var="img" items="${product.listImg}">
                                        <a class="product-gallery-item " href="#" data-image="${pageContext.request.contextPath}/${img}" data-zoom-image="${pageContext.request.contextPath}/${img}">
                                            <img src="<c:url value="${img}"/>" alt="product side">
                                        </a>
                                        </c:forEach>
                                    </div><!-- End .product-image-gallery -->
                                </div><!-- End .row -->
                            </div><!-- End .product-gallery -->
                        </div><!-- End .col-md-6 -->

                        <div class="col-md-6">
                            <div class="product-details product-details-centered">
                                <h1 class="product-title">${product.PRODUCT_NAME}</h1><!-- End .product-title -->

                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: ${product.STAR_MEDIUM*20}%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                </div><!-- End .rating-container -->

                                <div class="product-price">
                                    ${product.PRICE}
                                </div><!-- End .product-price -->

                                <div class="product-content">
                                    <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero.</p>
                                </div><!-- End .product-content -->

                                <div class="product-details-action">
                                    <div class="details-action-col">
                                        <a href="#" class="btn btn-secondary addCart"><span hidden>${product.ID_PRODUCT}</span><span>add to cart</span></a>
                                    </div><!-- End .details-action-col -->
                                </div><!-- End .product-details-action -->

                                <div class="product-details-footer">
                                    <div class="product-cat">
                                        <span>Category:</span>
                                        <a href="#">.....</a>,
                                        <a href="#">.....</a>,
                                        <a href="#">.....</a>
                                    </div><!-- End .product-cat -->

                                    <div class="social-icons social-icons-sm">
                                        <span class="social-label">Share:</span>
                                        <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                        <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                        <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                                    </div>
                                </div><!-- End .product-details-footer -->
                            </div><!-- End .product-details -->
                        </div><!-- End .col-md-6 -->
                    </div><!-- End .row -->
                </div><!-- End .product-details-top -->

                <div class="product-details-tab">
                    <ul class="nav nav-pills justify-content-center" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="product-desc-link" data-toggle="tab" href="#product-desc-tab" role="tab" aria-controls="product-desc-tab" aria-selected="true">Description</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="product-info-link" data-toggle="tab" href="#product-info-tab" role="tab" aria-controls="product-info-tab" aria-selected="false">Additional information</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="product-shipping-link" data-toggle="tab" href="#product-shipping-tab" role="tab" aria-controls="product-shipping-tab" aria-selected="false">Shipping & Returns</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="product-review-link" data-toggle="tab" href="#product-review-tab" role="tab" aria-controls="product-review-tab" aria-selected="false">Reviews (2)</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="product-desc-tab" role="tabpanel" aria-labelledby="product-desc-link">
                            <div class="product-desc-content">
                                <table class="table table-summary">


                                    <tbody>
                                    <tr>
                                        <td>DISPLAY: </td><td >${product.config.DISPLAY}</td>
                                    </tr>
                                    <tr>
                                        <td>CAMERA_FRONT: </td><td >${product.config.CAMERA_FRONT}</td>
                                    </tr>
                                    <tr>
                                        <td>CAMERA_BACK: </td><td >${product.config.CAMERA_BACK}</td>
                                    </tr>
                                    <tr>
                                        <td>RAM: </td><td >${product.config.RAM}</td>
                                    </tr>
                                    <tr>
                                        <td>ROM: </td><td>${product.config.ROM}</td>
                                    </tr>
                                    <tr>
                                        <td>CPU: </td><td>${product.config.CPU}</td>
                                    </tr>
                                    <tr>
                                        <td>GPU: </td><td>${product.config.GPU}</td>
                                    </tr>
                                    <tr>
                                        <td>BATTERY: </td><td>${product.config.BATTERY}</td>
                                    </tr>
                                    <tr>
                                        <td>OS: </td><td>${product.config.OS}</td>
                                    </tr>
                                    <tr>
                                        <td>SIM: </td><td>${product.config.SIM}</td>
                                    </tr>

                                    </tbody>
                                </table><!-- End .table table-summary -->
                            </div><!-- End .product-desc-content -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="product-info-tab" role="tabpanel" aria-labelledby="product-info-link">
                            <div class="product-desc-content">
                                <h3>Information</h3>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. </p>

                                <h3>Fabric & care</h3>
                                <ul>
                                    <li>Faux suede fabric</li>
                                    <li>Gold tone metal hoop handles.</li>
                                    <li>RI branding</li>
                                    <li>Snake print trim interior </li>
                                    <li>Adjustable cross body strap</li>
                                    <li> Height: 31cm; Width: 32cm; Depth: 12cm; Handle Drop: 61cm</li>
                                </ul>

                                <h3>Size</h3>
                                <p>one size</p>
                            </div><!-- End .product-desc-content -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="product-shipping-tab" role="tabpanel" aria-labelledby="product-shipping-link">
                            <div class="product-desc-content">
                                <h3>Delivery & returns</h3>
                                <p>We deliver to over 100 countries around the world. For full details of the delivery options we offer, please view our <a href="#">Delivery information</a><br>
                                    We hope you’ll love every purchase, but if you ever need to return an item you can do so within a month of receipt. For full details of how to make a return, please view our <a href="#">Returns information</a></p>
                            </div><!-- End .product-desc-content -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="product-review-tab" role="tabpanel" aria-labelledby="product-review-link">
                            <div class="reviews">
                                <h3>Reviews (2)</h3>
                                <div class="review">
                                    <div class="row no-gutters">
                                        <div class="col-auto">
                                            <h4><a href="#">Samanta J.</a></h4>
                                            <div class="ratings-container">
                                                <div class="ratings">
                                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                </div><!-- End .ratings -->
                                            </div><!-- End .rating-container -->
                                            <span class="review-date">6 days ago</span>
                                        </div><!-- End .col -->
                                        <div class="col">
                                            <h4>Good, perfect size</h4>

                                            <div class="review-content">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus cum dolores assumenda asperiores facilis porro reprehenderit animi culpa atque blanditiis commodi perspiciatis doloremque, possimus, explicabo, autem fugit beatae quae voluptas!</p>
                                            </div><!-- End .review-content -->

                                            <div class="review-action">
                                                <a href="#"><i class="icon-thumbs-up"></i>Helpful (2)</a>
                                                <a href="#"><i class="icon-thumbs-down"></i>Unhelpful (0)</a>
                                            </div><!-- End .review-action -->
                                        </div><!-- End .col-auto -->
                                    </div><!-- End .row -->
                                </div><!-- End .review -->

                                <div class="review">
                                    <div class="row no-gutters">
                                        <div class="col-auto">
                                            <h4><a href="#">John Doe</a></h4>
                                            <div class="ratings-container">
                                                <div class="ratings">
                                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                                </div><!-- End .ratings -->
                                            </div><!-- End .rating-container -->
                                            <span class="review-date">5 days ago</span>
                                        </div><!-- End .col -->
                                        <div class="col">
                                            <h4>Very good</h4>

                                            <div class="review-content">
                                                <p>Sed, molestias, tempore? Ex dolor esse iure hic veniam laborum blanditiis laudantium iste amet. Cum non voluptate eos enim, ab cumque nam, modi, quas iure illum repellendus, blanditiis perspiciatis beatae!</p>
                                            </div><!-- End .review-content -->

                                            <div class="review-action">
                                                <a href="#"><i class="icon-thumbs-up"></i>Helpful (0)</a>
                                                <a href="#"><i class="icon-thumbs-down"></i>Unhelpful (0)</a>
                                            </div><!-- End .review-action -->
                                        </div><!-- End .col-auto -->
                                    </div><!-- End .row -->
                                </div><!-- End .review -->
                            </div><!-- End .reviews -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .product-details-tab -->
                <%---------------------------------recomment for u------------------------------------%>
                <div class="bg-light pt-5 pb-6">
                    <div class="container trending-products">
                        <div class="heading heading-flex mb-3">
                            <div class="heading-left">
                                <h2 class="title">For you</h2><!-- End .title -->
                            </div><!-- End .heading-left -->

<%--                            <div class="heading-right">--%>
<%--                                <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">--%>
<%--                                    <li class="nav-item">--%>
<%--                                        <a class="nav-link active" id="trending-top-link" data-toggle="tab"--%>
<%--                                           href="#trending-top-tab" role="tab" aria-controls="trending-top-tab"--%>
<%--                                           aria-selected="true">Top Rated</a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div><!-- End .heading-right -->--%>
                        </div><!-- End .heading -->

                        <div class="row">
                            <div class="col-xl-5col d-none d-xl-block">
                                <div class="banner">
                                    <a href="#">
                                        <img src="<c:url value="/img/banner/banner-4.jpg"/>"
                                             alt="banner">
                                    </a>
                                </div><!-- End .banner -->
                            </div><!-- End .col-xl-5col -->

                            <div class="col-xl-4-5col">
                                <div class="tab-content tab-content-carousel just-action-icons-sm">
                                    <%---------------------------------top------------------------------------%>
                                    <div class="tab-pane p-0 fade show active" id="trending-top-tab" role="tabpanel"
                                         aria-labelledby="trending-top-link">
                                        <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow"
                                             data-toggle="owl"
                                             data-owl-options='{
                                            "nav": true,
                                            "dots": false,
                                            "margin": 20,
                                            "loop": false,
                                            "responsive": {
                                                "0": {
                                                    "items":2
                                                },
                                                "480": {
                                                    "items":2
                                                },
                                                "768": {
                                                    "items":3
                                                },
                                                "992": {
                                                    "items":4
                                                }
                                            }
                                        }'>
                                            <c:forEach var="product" items="${top10Star}">


                                                <div class="product product-2">
                                                    <figure class="product-media">
                                                        <span class="product-label label-circle label-top">Top</span>
                                                        <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">
                                                            <img src="<c:url value="${product.listImg[0]}"/>"
                                                                 alt="Product image" class="product-image">
                                                        </a>

                                                        <div class="product-action-vertical">
                                                            <a href="#" class="btn-product-icon btn-wishlist"
                                                               title="Add to wishlist"></a>
                                                        </div><!-- End .product-action -->

                                                        <div class="product-action addCart">
                                                            <span hidden>${product.ID_PRODUCT}</span>

                                                            <a  class="btn-product "
                                                                title="Add to cart"><i class="fa fa-cart-plus"></i>
                                                            </a>
                                                            <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}" class="btn-product" title="Quick view"><i class="fa fa-eye"></i></a>
                                                        </div><!-- End .product-action -->
                                                    </figure><!-- End .product-media -->

                                                    <div class="product-body">
                                                        <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}</a></h3>
                                                        <!-- End .product-title -->
                                                        <div class="product-price">
                                                                ${product.PRICE}
                                                        </div><!-- End .product-price -->
                                                        <div class="ratings-container">
                                                            <div class="ratings">
                                                                <div class="ratings-val"
                                                                     style="width: ${product.STAR_MEDIUM*20}%;"></div>
                                                                <!-- End .ratings-val -->
                                                            </div><!-- End .ratings -->
                                                        </div><!-- End .rating-container -->

                                                    </div><!-- End .product-body -->
                                                </div>
                                                <!-- End .product -->
                                            </c:forEach>
                                        </div><!-- End .owl-carousel -->
                                    </div><!-- .End .tab-pane -->
                                </div><!-- End .tab-content -->
                            </div><!-- End .col-xl-4-5col -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .bg-light pt-5 pb-6 -->
            </div><!-- End .container -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->

</div><!-- End .page-wrapper -->
</body>
<jsp:include page="../common/user/footer.jsp"/>
</html>
