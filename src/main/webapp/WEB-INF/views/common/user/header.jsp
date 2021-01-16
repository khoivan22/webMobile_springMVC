<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value="/img/logo/favicon-32x32.png"/>">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/plugins/owl-carousel/owl.carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/plugins/magnific-popup/magnific-popup.css"/>">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="<c:url value="/assets/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/skins/skin-demo-4.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/demos/demo-4.css"/>">
    <link rel="stylesheet" href="<c:url value="/webjars/font-awesome/4.7.0/css/font-awesome.min.css"/>">


    <!-- Plugins JS File -->

    <script src="<c:url value="/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery.waypoints.min.js"/>"></script>
    <script src="<c:url value="/assets/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery.elevateZoom.min.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap-input-spinner.js"/>"></script>
    <!-- Main JS File -->
    <script src="<c:url value="/assets/js/main.js"/>"></script>
    <script src="<c:url value="/assets/js/demos/demo-4.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery.magnific-popup.min.js"/>"></script>
    <script src="<c:url value="/webjars/sweetalert/2.1.2/dist/sweetalert.min.js"/>"></script>
    <title>Title</title>

</head>
<header class="header header-intro-clearance header-4">

    <%--------------------------------------------------%>
    <div class="header-top">
        <div class="container">
            <div class="header-left">
                <a href="tel:#"><i class="icon-phone"></i>Call: +0123 456 789</a>
            </div><!-- End .header-left -->

            <div class="header-right">

                <ul class="top-menu">
                    <li>
                        <a href="#">Links</a>
                        <ul>
                            <li>
                                <div class="header-dropdown">
                                    <a href="#">USD</a>
                                    <div class="header-menu">
                                        <ul>
                                            <li><a href="#">Eur</a></li>
                                            <li><a href="#">Usd</a></li>
                                        </ul>
                                    </div><!-- End .header-menu -->
                                </div>
                            </li>
                            <li>
                                <div class="header-dropdown">
                                    <a href="#">English</a>
                                    <div class="header-menu">
                                        <ul>
                                            <li><a href="#">English</a></li>
                                            <li><a href="#">French</a></li>
                                            <li><a href="#">Spanish</a></li>
                                        </ul>
                                    </div><!-- End .header-menu -->
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul><!-- End .top-menu -->
            </div><!-- End .header-right -->

        </div><!-- End .container -->
    </div><!-- End .header-top -->
    <%----------------------------------------------------------------------%>

    <div class="header-middle">
        <div class="container">
            <div class="header-left">
                <button class="mobile-menu-toggler">
                    <span class="sr-only">Toggle mobile menu</span>
                    <i class="icon-bars"></i>
                </button>

                <a href="${pageContext.request.contextPath}/home" class="logo">
                    <img src="<c:url value="/img/logo/logo.png"/>" alt="Molla Logo" width="105"
                         height="25">
                </a>
            </div><!-- End .header-left -->

            <div class="header-center">
                <div class="header-search header-search-extended header-search-visible d-none d-lg-block">
                    <%--                    <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>--%>
                    <form action="${pageContext.request.contextPath}/listProduct/search" method="get">
                        <div class="header-search-wrapper search-wrapper-wide">
                            <label for="keySearch" class="sr-only">Search</label>
                            <button class="btn btn-primary" type="submit" id="bt_search"><i class="fa fa-search"></i>
                            </button>
                            <input type="search" class="form-control" name="keySearch" id="keySearch"
                                   placeholder="Search product ..." required>
                        </div><!-- End .header-search-wrapper -->
                        <div id="div-auto" style="position: absolute; width: 570px;z-index: 2; overflow: auto;">
                            <ul id="list-auto" class="list-group">
                            </ul>
                        </div>
                    </form>
                </div><!-- End .header-search -->
            </div>

            <div class="header-right">
                <div>
                    <p>
                    <div class="icon">
                        <c:if test="${userDetail==null}">
                            <a href="${pageContext.request.contextPath}/login">Sign in</a> / <a
                                href="${pageContext.request.contextPath}/register">Sign up</a>
                        </c:if>
                        <c:if test="${userDetail!=null}">
                            <a href="${pageContext.request.contextPath}/login">${userDetail.getUsername()}</a> / <a
                                href="${pageContext.request.contextPath}/logout">Logout</a>
                        </c:if>
                    </div>
                    </p>

                </div><!-- End .cart-dropdown -->
            </div><!-- End .header-right -->
            <div class="header-right">
                <div class="dropdown cart-dropdown">
                    <a href="${pageContext.request.contextPath}/cart" class="dropdown-toggle">
                        <div class="icon">
                            <i class="fa fa-cart-plus"></i>
                            <c:if test="${userDetail==null}">
                                <span class="cart-count">0</span>
                            </c:if>
                            <c:if test="${userDetail!=null}">
                                <span class="cart-count">0</span>
                            </c:if>
                        </div>
                        <p>Cart</p>
                    </a>

                </div><!-- End .cart-dropdown -->
            </div><!-- End .header-right -->
        </div><!-- End .container -->
    </div><!-- End .header-middle -->
    <%-----------------------------------------------------------------------%>
    <div class="header-bottom sticky-header">
        <div class="container">
            <div class="header-left">
                <div class="dropdown category-dropdown">
                    <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false" data-display="static" title="Browse Categories">
                        Browse Categories <i class="fa fa-angle-left"></i>
                    </a>
                </div><!-- End .category-dropdown -->
            </div><!-- End .header-left -->

            <div class="header-center">
                <nav class="main-nav">

                    <ul class="menu sf-arrows" id="menu">
                        <li class="megamenu-container active">
                            <a href="${pageContext.request.contextPath}/home">Home</a>
                        </li>
                    </ul>
                </nav><!-- End .main-nav -->
            </div><!-- End .header-center -->
        </div><!-- End .container -->
    </div><!-- End .header-bottom -->
</header>
<script>
    /*load menu*/
    $(document).ready(function () {
        $.ajax({
            url: '${pageContext.request.contextPath}/api/listMenu',
            type: 'GET',
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                $.each(data, function (key, value) {
                    $('#menu').append('<li><a href="${pageContext.request.contextPath}/listProduct/' + value.id_SUPPLIER + '/1" class="sf-with-ul">' + value.name_SUPPLIER + '</a></li>');
                });
            },
            error: function () {
                alert("fail")
            },
        });
    });
</script>
<!-- End .header -->