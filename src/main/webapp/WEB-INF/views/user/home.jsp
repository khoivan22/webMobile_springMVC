<html>
<%@include file="/WEB-INF/views/common/user/header.jsp" %>
<body >
<div class="page-wrapper">
    <main class="main">
        <%--------------------------------------------------------------------------%>
        <div class="intro-slider-container  mb-5">
            <div class="intro-slider owl-carousel owl-theme owl-nav-inside owl-light" data-toggle="owl"
                 data-owl-options='{
                        "dots": true,
                        "nav": false,
                        "responsive": {
                            "1200": {
                                "nav": true,
                                "dots": false
                            }
                        }
                    }'>
                <div class="intro-slide"
                     style="background-image: url(<c:url value="/img/slider/slide-1.png"/>);">
                    <div class="container intro-content">
                        <div class="row justify-content-end">
                            <div class="col-auto col-sm-7 col-md-6 col-lg-5">
                                <h3 class="intro-subtitle text-third">Deals and Promotions</h3>
                                <!-- End .h3 intro-subtitle -->
                                <h1 class="intro-title">Beats by</h1>
                                <h1 class="intro-title">Dre Studio 3</h1><!-- End .intro-title -->

                                <div class="intro-price">
                                    <sup class="intro-old-price">$349,95</sup>
                                    <span class="text-third">
                                            $279<sup>.99</sup>
                                        </span>
                                </div><!-- End .intro-price -->

                                <a href="category.html" class="btn btn-primary btn-round">
                                    <span>Shop More</span>
                                    <i class="icon-long-arrow-right"></i>
                                </a>
                            </div><!-- End .col-lg-11 offset-lg-1 -->
                        </div><!-- End .row -->
                    </div><!-- End .intro-content -->
                </div><!-- End .intro-slide -->

                <div class="intro-slide" style="background-image: url(<c:url value="/img/slider/slide-2.png"/>);">
                    <div class="container intro-content">
                        <div class="row justify-content-end">
                            <div class="col-auto col-sm-7 col-md-6 col-lg-5">
                                <h3 class="intro-subtitle text-primary">New Arrival</h3><!-- End .h3 intro-subtitle -->
                                <h1 class="intro-title">Apple iPad Pro <br>12.9 Inch, 64GB </h1>
                                <!-- End .intro-title -->

                                <div class="intro-price">
                                    <sup>Today:</sup>
                                    <span class="text-primary">
                                            $999<sup>.99</sup>
                                        </span>
                                </div><!-- End .intro-price -->

                                <a href="category.html" class="btn btn-primary btn-round">
                                    <span>Shop More</span>
                                    <i class="icon-long-arrow-right"></i>
                                </a>
                            </div><!-- End .col-md-6 offset-md-6 -->
                        </div><!-- End .row -->
                    </div><!-- End .intro-content -->
                </div><!-- End .intro-slide -->
            </div><!-- End .intro-slider owl-carousel owl-simple -->

            <span class="slider-loader"></span><!-- End .slider-loader -->
        </div><!-- End .intro-slider-container -->

        <div class="container">
            <h2 class="title text-center mb-4">Explore Popular Categories</h2><!-- End .title text-center -->
            <%-----------------------------------------------------------------------%>
            <div class="cat-blocks-container">
                <div class="row">
                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="category.html" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="<c:url value="/img/logo/1.png"/>"
                                             alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">Computer & Laptop</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->

                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="category.html" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="<c:url value="/img/logo/2.png"/>"
                                             alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">Digital Cameras</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->

                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="category.html" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="<c:url value="/img/logo/3.png"/>"
                                             alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">Smart Phones</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->

                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="category.html" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="<c:url value="/img/logo/4.png"/>"
                                             alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">Televisions</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->

                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="category.html" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="<c:url value="/img/logo/5.png"/>"
                                             alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">Audio</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->

                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="category.html" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="<c:url value="/img/logo/6.png"/>"
                                             alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">Smart Watches</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->
                </div><!-- End .row -->
            </div><!-- End .cat-blocks-container -->
        </div><!-- End .container -->

        <div class="mb-4"></div><!-- End .mb-4 -->
        <%--------------------------------------------------------------------------%>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="banner banner-overlay banner-overlay-light">
                        <a href="#">
                            <img src="<c:url value="/img/banner/banner-1.png"/>" alt="Banner">
                        </a>

                        <div class="banner-content">
                            <h4 class="banner-subtitle"><a href="#">Smart Offer</a></h4><!-- End .banner-subtitle -->
                            <h3 class="banner-title"><a href="#">Save $150 <strong>on Samsung <br>Galaxy Note9</strong></a>
                            </h3><!-- End .banner-title -->
                            <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                        </div><!-- End .banner-content -->
                    </div><!-- End .banner -->
                </div><!-- End .col-md-4 -->

                <div class="col-md-6 col-lg-4">
                    <div class="banner banner-overlay banner-overlay-light">
                        <a href="#">
                            <img src="<c:url value="/img/banner/banner-2.jpg"/>" alt="Banner">
                        </a>

                        <div class="banner-content">
                            <h4 class="banner-subtitle"><a href="#">Time Deals</a></h4><!-- End .banner-subtitle -->
                            <h3 class="banner-title"><a href="#"><strong>Bose SoundSport</strong> <br>Time Deal -30%</a>
                            </h3><!-- End .banner-title -->
                            <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                        </div><!-- End .banner-content -->
                    </div><!-- End .banner -->
                </div><!-- End .col-md-4 -->

                <div class="col-md-6 col-lg-4">
                    <div class="banner banner-overlay banner-overlay-light">
                        <a href="#">
                            <img src="<c:url value="/img/banner/banner-3.png"/>" alt="Banner">
                        </a>

                        <div class="banner-content">
                            <h4 class="banner-subtitle"><a href="#">Clearance</a></h4><!-- End .banner-subtitle -->
                            <h3 class="banner-title"><a href="#"><strong>GoPro - Fusion 360</strong> <br>Save $70</a>
                            </h3><!-- End .banner-title -->
                            <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                        </div><!-- End .banner-content -->
                    </div><!-- End .banner -->
                </div><!-- End .col-lg-4 -->
            </div><!-- End .row -->
        </div><!-- End .container -->

        <div class="mb-3"></div><!-- End .mb-5 -->

        <%---------------------------------New Arrivals------------------------------------%>
        <div class="container new-arrivals">

            <%-------------------------------heading---------------------------------------%>
            <div class="heading heading-flex mb-3">
                <div class="heading-left">
                    <h2 class="title">New Arrivals</h2><!-- End .title -->
                </div><!-- End .heading-left -->

                <div class="heading-right">
                    <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="new-all-link" data-toggle="tab" href="#new-all-tab"
                               role="tab" aria-controls="new-all-tab" aria-selected="true">Apple</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="new-computers-link" data-toggle="tab" href="#new-computers-tab"
                               role="tab" aria-controls="new-computers-tab" aria-selected="false">Oppo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="new-phones-link" data-toggle="tab" href="#new-phones-tab" role="tab"
                               aria-controls="new-phones-tab" aria-selected="false">Samsung</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="new-watches-link" data-toggle="tab" href="#new-watches-tab"
                               role="tab" aria-controls="new-watches-tab" aria-selected="false">Xiaomi</a>
                        </li>

                    </ul>
                </div><!-- End .heading-right -->
            </div><!-- End .heading -->

            <div class="tab-content tab-content-carousel just-action-icons-sm">
                <%--------------------------------------apple-----------------------------------------------------------%>
                <div class="tab-pane p-0 fade show active" id="new-all-tab" role="tabpanel"
                     aria-labelledby="new-all-link">
                    <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                         data-owl-options='{
                                "nav": true,
                                "dots": true,
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
                                    },
                                    "1200": {
                                        "items":5
                                    }
                                }
                            }'>
                        <c:forEach var="product" items="${listProduct}">
                            <c:if test="${product.supp.ID_SUPPLIER.equals('APP')}">

                                <div class="product product-2">
                                    <figure class="product-media">
                                        <span class="product-label label-circle label-top">Top</span>
                                        <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">
                                            <img src="<c:url value="${product.listImg[0]}"/>"
                                                 alt="Product image" class="product-image">
                                        </a>

                                            <%--                                <div class="product-action-vertical">--%>
                                            <%--                                    <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>--%>
                                            <%--                                </div><!-- End .product-action -->--%>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart"
                                               title="Add to cart"><span>add to cart</span></a>
                                            <a href="#" class="btn-product btn-quickview"
                                               title="Quick view"><span>quick view</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}</a></h3>
                                        <!-- End .product-title -->
                                        <div class="product-price">
                                                ${product.PRICE+''}đ
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
                            </c:if>
                        </c:forEach>
                    </div><!-- End .owl-carousel -->
                </div><!-- .End .tab-pane -->
                <%------------------------------------------Oppo---------------------------------------------------%>
                <div class="tab-pane p-0 fade" id="new-computers-tab" role="tabpanel"
                     aria-labelledby="new-computers-link">
                    <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                         data-owl-options='{
                                "nav": true,
                                "dots": true,
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
                                    },
                                    "1200": {
                                        "items":5
                                    }
                                }
                            }'>
                        <c:forEach var="product" items="${listProduct}">
                            <c:if test="${product.supp.ID_SUPPLIER.equals('OPP')}">
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

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart"
                                               title="Add to cart"><span>add to cart</span></a>
                                            <a href="#" class="btn-product btn-quickview"
                                               title="Quick view"><span>quick view</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}</a></h3>
                                        <!-- End .product-title -->
                                        <div class="product-price">
                                                ${product.PRICE}d
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val"
                                                     style="width: ${product.STAR_MEDIUM*20}%;"></div>
                                                <!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 5 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div>
                                <!-- End .product -->
                            </c:if></c:forEach>
                    </div><!-- End .owl-carousel -->
                </div><!-- .End .tab-pane -->
                <%------------------------------------------Samsung---------------------------------------------------%>
                <div class="tab-pane p-0 fade" id="new-phones-tab" role="tabpanel" aria-labelledby="new-phones-link">
                    <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                         data-owl-options='{
                                "nav": true,
                                "dots": true,
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
                                    },
                                    "1200": {
                                        "items":5
                                    }
                                }
                            }'>
                        <c:forEach var="product" items="${listProduct}">
                            <c:if test="${product.supp.ID_SUPPLIER.equals('SAM')}">
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <span class="product-label label-circle label-top">Top</span>
                                        <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">
                                            <img src="<c:url value="${product.listImg[0]}"/>"
                                                 alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart"
                                               title="Add to cart"><span>add to cart</span></a>
                                            <a href="#" class="btn-product btn-quickview"
                                               title="Quick view"><span>quick view</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Laptops</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}</a></h3>
                                        <!-- End .product-title -->
                                        <div class="product-price">
                                                ${product.PRICE}d
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val"
                                                     style="width: ${product.STAR_MEDIUM*20}%;"></div>
                                                <!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div>
                                <!-- End .product -->
                            </c:if></c:forEach>
                    </div><!-- End .owl-carousel -->
                </div><!-- .End .tab-pane -->
                <%------------------------------------------Xiaomi---------------------------------------------------%>
                <div class="tab-pane p-0 fade" id="new-watches-tab" role="tabpanel" aria-labelledby="new-watches-link">
                    <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                         data-owl-options='{
                                "nav": true,
                                "dots": true,
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
                                    },
                                    "1200": {
                                        "items":5
                                    }
                                }
                            }'>
                        <c:forEach var="product" items="${listProduct}">
                            <c:if test="${product.supp.ID_SUPPLIER.equals('XIA')}">
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <span class="product-label label-circle label-top">Top</span>
                                        <span class="product-label label-circle label-sale">Sale</span>
                                        <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">
                                            <img src="<c:url value="${product.listImg[0]}"/>"
                                                 alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist"
                                               title="Add to wishlist"></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart"
                                               title="Add to cart"><span>add to cart</span></a>
                                            <a href="#" class="btn-product btn-quickview"
                                               title="Quick view"><span>quick view</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Cell Phone</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}</a></h3>
                                        <!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">${product.PRICE}</span>
                                            <span class="old-price">Was $41.67</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val"
                                                     style="width: ${product.STAR_MEDIUM*20}%;"></div>
                                                <!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="active" style="background: #edd2c8;"><span
                                                    class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #eaeaec;"><span
                                                    class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span
                                                    class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div>
                                <!-- End .product -->
                            </c:if></c:forEach>
                    </div><!-- End .owl-carousel -->
                </div><!-- .End .tab-pane -->
            </div><!-- End .tab-content -->
        </div><!-- End .container -->

        <div class="mb-6"></div><!-- End .mb-6 -->

        <%---------------------------------trending------------------------------------%>
        <div class="bg-light pt-5 pb-6">
            <div class="container trending-products">
                <div class="heading heading-flex mb-3">
                    <div class="heading-left">
                        <h2 class="title">Trending Products</h2><!-- End .title -->
                    </div><!-- End .heading-left -->

                    <div class="heading-right">
                        <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="trending-top-link" data-toggle="tab"
                                   href="#trending-top-tab" role="tab" aria-controls="trending-top-tab"
                                   aria-selected="true">Top Rated</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="trending-best-link" data-toggle="tab" href="#trending-best-tab"
                                   role="tab" aria-controls="trending-best-tab" aria-selected="false">high grade</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="trending-sale-link" data-toggle="tab" href="#trending-sale-tab"
                                   role="tab" aria-controls="trending-sale-tab" aria-selected="false">On Sale</a>
                            </li>
                        </ul>
                    </div><!-- End .heading-right -->
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

                                                <div class="product-action">
                                                    <a href="#" class="btn-product btn-cart" title="Add to cart"><span>add to cart</span></a>
                                                    <a href="#" class="btn-product btn-quickview"
                                                       title="Quick view"><span>quick view</span></a>
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
                            <%---------------------------------high grade------------------------------------%>
                            <div class="tab-pane p-0 fade" id="trending-best-tab" role="tabpanel"
                                 aria-labelledby="trending-best-link">
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
                                    <c:forEach var="product" items="${top10Price}">
                                        <div class="product product-2">
                                            <figure class="product-media">

                                                <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">
                                                    <img src="<c:url value="${product.listImg[0]}"/>"
                                                         alt="Product image" class="product-image">
                                                </a>

                                                <div class="product-action-vertical">
                                                    <a href="#" class="btn-product-icon btn-wishlist"
                                                       title="Add to wishlist"></a>
                                                </div><!-- End .product-action -->

                                                <div class="product-action">
                                                    <a href="#" class="btn-product btn-cart" title="Add to cart"><span>add to cart</span></a>
                                                    <a href="#" class="btn-product btn-quickview"
                                                       title="Quick view"><span>quick view</span></a>
                                                </div><!-- End .product-action -->
                                            </figure><!-- End .product-media -->

                                            <div class="product-body">
                                                <div class="product-cat">
                                                    <a href="#">Tablets</a>
                                                </div><!-- End .product-cat -->
                                                <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}
                                                    256GB </a></h3><!-- End .product-title -->
                                                <div class="product-price">
                                                    $899.99
                                                </div><!-- End .product-price -->
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val"
                                                             style="width: ${product.STAR_MEDIUM*20}%;"></div>
                                                        <!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                    <span class="ratings-text">( 4 Reviews )</span>
                                                </div><!-- End .rating-container -->

                                            </div><!-- End .product-body -->
                                        </div>
                                        <!-- End .product -->
                                    </c:forEach>
                                </div><!-- End .owl-carousel -->
                            </div><!-- .End .tab-pane -->
                            <%---------------------------------sale------------------------------------%>
                            <div class="tab-pane p-0 fade" id="trending-sale-tab" role="tabpanel"
                                 aria-labelledby="trending-sale-link">
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
                                    <c:forEach var="product" items="${top10Sale}">
                                        <div class="product product-2">
                                            <figure class="product-media">
                                                <span class="product-label label-circle label-new">New</span>
                                                <a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">
                                                    <img src="<c:url value="${product.listImg[0]}"/>"
                                                         alt="Product image" class="product-image">
                                                </a>

                                                <div class="product-action-vertical">
                                                    <a href="#" class="btn-product-icon btn-wishlist"
                                                       title="Add to wishlist"></a>
                                                </div><!-- End .product-action -->

                                                <div class="product-action">
                                                    <a href="#" class="btn-product btn-cart" title="Add to cart"><span>add to cart</span></a>
                                                    <a href="#" class="btn-product btn-quickview"
                                                       title="Quick view"><span>quick view</span></a>
                                                </div><!-- End .product-action -->
                                            </figure><!-- End .product-media -->

                                            <div class="product-body">

                                                <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${product.ID_PRODUCT}">${product.PRODUCT_NAME}
                                                    Case</a></h3><!-- End .product-title -->
                                                <div class="product-price">
                                                        ${product.PRICE}d
                                                </div><!-- End .product-price -->
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val"
                                                             style="width: ${product.STAR_MEDIUM*20}%;"></div>
                                                        <!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                    <span class="ratings-text">( 4 Reviews )</span>
                                                </div><!-- End .rating-container -->

                                                <div class="product-nav product-nav-dots">
                                                    <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                                    <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                                    <a href="#" class="active" style="background: #333333;"><span
                                                            class="sr-only">Color name</span></a>
                                                </div><!-- End .product-nav -->
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

        <div class="mb-5"></div><!-- End .mb-5 -->
        <%---------------------------------Recommendation For You------------------------------------%>
        <div class="container for-you">
            <div class="heading heading-flex mb-3">
                <div class="heading-left">
                    <h2 class="title">Recommendation For You</h2><!-- End .title -->
                </div><!-- End .heading-left -->

                <div class="heading-right">
                    <a href="#" class="title-link">View All Recommendadion <i class="icon-long-arrow-right"></i></a>
                </div><!-- End .heading-right -->
            </div><!-- End .heading -->

                <div class="products">
                    <div class="row justify-content-center">
                        <c:forEach var="i" begin="1" end="8">
                        <div class="col-6 col-md-4 col-lg-3">
                            <div class="product product-2">
                                <figure class="product-media">
                                    <span class="product-label label-circle label-sale">Sale</span>
                                    <a href="${pageContext.request.contextPath}/detail?idProduct=${listProduct.get(i).ID_PRODUCT}">
                                        <img src="<c:url value="${listProduct.get(i).listImg[0]}"/>"
                                             alt="Product image" class="product-image">
                                    </a>
                                    <div class="product-action">
                                        <a href="#" class="btn-product btn-cart"
                                           title="Add to cart"><span>add to cart</span></a>
                                        <a href="#" class="btn-product btn-quickview" title="Quick view"><span>quick view</span></a>
                                    </div><!-- End .product-action -->
                                </figure><!-- End .product-media -->

                                <div class="product-body">
                                    <h3 class="product-title"><a href="${pageContext.request.contextPath}/detail?idProduct=${listProduct.get(i).ID_PRODUCT}">${listProduct.get(i).PRODUCT_NAME}</a></h3>
                                    <!-- End .product-title -->
                                    <div class="product-price">
                                        <span class="new-price">$279.99</span>
                                        <span class="old-price">Was ${listProduct.get(i).PRICE}</span>
                                    </div><!-- End .product-price -->
                                    <div class="ratings-container">
                                        <div class="ratings">
                                            <div class="ratings-val"
                                                 style="width: ${listProduct.get(i).STAR_MEDIUM*20}%;"></div>
                                            <!-- End .ratings-val -->
                                        </div><!-- End .ratings -->
                                    </div><!-- End .rating-container -->

                                </div><!-- End .product-body -->
                            </div><!-- End .product -->

                        </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->
                            </c:forEach>
                    </div><!-- End .row -->
                </div>
                <!-- End .products -->

        </div><!-- End .container -->

        <div class="mb-4"></div><!-- End .mb-4 -->

        <div class="container">
            <hr class="mb-0">
        </div><!-- End .container -->
        <%---------------------------------------------------------------------%>
        <div class="icon-boxes-container bg-transparent">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                                <span class="icon-box-icon text-dark">
                                    <i class="icon-rocket"></i>
                                </span>
                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Free Shipping</h3><!-- End .icon-box-title -->
                                <p>Orders $50 or more</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                                <span class="icon-box-icon text-dark">
                                    <i class="icon-rotate-left"></i>
                                </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Free Returns</h3><!-- End .icon-box-title -->
                                <p>Within 30 days</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                                <span class="icon-box-icon text-dark">
                                    <i class="icon-info-circle"></i>
                                </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Get 20% Off 1 Item</h3><!-- End .icon-box-title -->
                                <p>when you sign up</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                                <span class="icon-box-icon text-dark">
                                    <i class="icon-life-ring"/>"></i>
                                </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">We Support</h3><!-- End .icon-box-title -->
                                <p>24/7 amazing services</p>
                            </div><!-- End .icon-box-content -->
                        </div><!-- End .icon-box -->
                    </div><!-- End .col-sm-6 col-lg-3 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .icon-boxes-container -->
    </main><!-- End .main -->
</div><!-- End .page-wrapper -->

<%@include file="/WEB-INF/views/common/user/footer.jsp" %>
</div><!-- End .modal -->
</body>

</html>
