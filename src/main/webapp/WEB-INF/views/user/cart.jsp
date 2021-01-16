<%--
  Created by IntelliJ IDEA.
  User: vkhoi
  Date: 1/6/2021
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<%@include file="/WEB-INF/views/common/user/header.jsp" %>
<body>
<div class="page-wrapper">
    <main class="main">
        <div class="page-header text-center" style="background-image: url('/img/slider/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Shopping Cart<span>Shop</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="cart">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <table class="table table-cart table-mobile">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${listCart}" var="cart">
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="${pageContext.request.contextPath}/detail?idProduct=${cart.product.ID_PRODUCT}">
                                                        <img src="<c:url value="${cart.product.listImg[0]}"/> "
                                                             alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="${pageContext.request.contextPath}/detail?idProduct=${cart.product.ID_PRODUCT}">${cart.product.PRODUCT_NAME}</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="price-col">${cart.product.PRICE}</td>
                                        <td class="quantity-col">
                                            <div class="cart-product-quantity">
                                                <i class="fa fa-minus-circle minus"><span hidden>${cart.product.ID_PRODUCT}</span></i>
                                                <span style="margin-left: 5px;margin-right: 7px">${cart.amount}</span>
                                                <i class="fa fa-plus-circle plus"><span hidden>${cart.product.ID_PRODUCT}</span></i>
                                            </div><!-- End .cart-product-quantity -->
                                        </td>
                                        <td class="total-col">${cart.product.PRICE*cart.amount}</td>
                                        <td class="remove-col">
                                            <a href="${pageContext.request.contextPath}/cart/delete?idProduct=${cart.product.ID_PRODUCT}"
                                               class="btn-remove"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr
                                </c:forEach>
                                </tbody>
                            </table><!-- End .table table-wishlist -->

                        </div><!-- End .col-lg-9 -->
                        <aside class="col-lg-3">
                            <div class="summary summary-cart">
                                <h3 class="summary-title">Cart Total</h3><!-- End .summary-title -->

                                <table class="table table-summary">
                                    <tbody>
                                    <c:forEach items="${listCart}" var="cart">
                                        <tr class="summary-subtotal">
                                            <td style="font-size: 12px">${cart.product.PRODUCT_NAME}
                                                x${cart.amount}</td>
                                            <td style="font-size: 12px">${cart.product.PRICE*cart.amount}</td>
                                        </tr>
                                        <!-- End .summary-subtotal -->
                                    </c:forEach>
                                    <tr class="summary-total">
                                        <td>Total:</td>
                                        <td>${totalPrice}</td>
                                    </tr><!-- End .summary-total -->
                                    </tbody>
                                </table><!-- End .table table-summary -->

                                <a href="${pageContext.request.contextPath}/pay" class="btn btn-outline-primary-2 btn-order btn-block">PROCEED TO
                                    CHECKOUT</a>
                            </div><!-- End .summary -->

                        </aside><!-- End .col-lg-3 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .cart -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->

    <%@include file="/WEB-INF/views/common/user/footer.jsp" %>
</div><!-- End .page-wrapper -->
</body>
<script>
    /**minus*/
    $(document).ready(function () {
        $(".minus").click(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/cart/minus",
                type: "get",
                data: {
                    idProduct: $(this).find("span").html(),
                },
                success: function (data) {
                    if(data===true) {
                        window.location.reload();
                    }
                    else
                        swal("Bạn chưa đăng nhập")
                },
                error: function (b) {
                    alert("error")
                }
            });
        });
    });
    /**plus*/
    $(document).ready(function () {
        $(".plus").click(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/cart/add",
                type: "get",
                data: {
                    idProduct: $(this).find("span").html(),
                },
                success: function (data) {
                    if(data===true) {
                        window.location.reload();
                    }
                    else
                        swal("Bạn chưa đăng nhập")
                },
                error: function (b) {
                    alert("error")
                }
            });
        });
    });

</script>
</html>
