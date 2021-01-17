<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<html>
<%@include file="/WEB-INF/views/common/user/header.jsp" %>
<body>
<div class="page-wrapper">

    <main class="main">
        <div class="page-header text-center" style="background-image: url('/img/slider/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Checkout<span>Shop</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="checkout">
                <div class="container">
                    <div class="checkout-discount">
                    </div><!-- End .checkout-discount -->
                    <form:form method="post" modelAttribute="bill" action="${pageContext.request.contextPath}/pay/buy">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Name *</label>
                                        <form:input path="user.FULLNAME" cssClass="form-control" required="required"/>
                                    </div><!-- End .col-sm-6 -->
                                    <div class="col-sm-6">
                                        <label>Phone *</label>
                                        <form:input  path="phone" cssClass="form-control"
                                                    required="required"/>
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Town / City *</label>
                                        <form:input path="address.city" cssClass="form-control" required="required"/>
                                    </div><!-- End .col-sm-6 -->

                                    <div class="col-sm-6">
                                        <label>District *</label>
                                        <form:input path="address.district" cssClass="form-control"
                                                    required="required"/>
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->
                                <label>Home address *</label>
                                <form:input path="address.addressHome" cssClass="form-control"
                                            placeholder="House number and Street name" required="required"/>

                                <label>Note </label>
                                <form:textarea cssClass="form-control" path="note" cols="30" rows="4"
                                               placeholder="Notes about your order, e.g. special notes for delivery"/>
                                <form:hidden path="totalPrice" value="${bill.totalPrice}"/>
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-6">
                                <div class="summary">
                                    <h3 class="summary-title">Your Order</h3><!-- End .summary-title -->

                                    <table class="table table-summary">
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th></th>
                                            <th> Subtotal price</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach var="cart" items="${listCart}">
                                        <tr>
                                            <td>${cart.product.PRODUCT_NAME}</td>
                                            <td>x${cart.amount}</td>
                                            <td><fmt:formatNumber type="number" groupingUsed="true">${cart.product.PRICE*cart.amount}</fmt:formatNumber> đ</td>
                                        </tr>
                                        </c:forEach>
                                        <tr class="summary-total">
                                            <td>total price:</td>
                                            <td></td>
                                            <td><fmt:formatNumber type="number" groupingUsed="true">${bill.totalPrice}</fmt:formatNumber> đ</td>
                                        </tr><!-- End .summary-total -->
                                        </tbody>
                                    </table><!-- End .table table-summary -->
                                    <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
                                        <span>Buy</span>
                                    </button>
                                </div><!-- End .summary -->
                            </aside><!-- End .col-lg-3 -->
                        </div>
                        <!-- End .row -->
                    </form:form>
                </div><!-- End .container -->
            </div><!-- End .checkout -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->
    <%@include file="/WEB-INF/views/common/user/footer.jsp" %>
</div><!-- End .page-wrapper -->
<!-- Plugins JS File -->
</body>
</html>
