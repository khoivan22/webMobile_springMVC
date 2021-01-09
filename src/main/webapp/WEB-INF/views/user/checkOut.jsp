
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
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Name *</label>
                                        <input type="text" class="form-control" required>
                                    </div><!-- End .col-sm-6 -->

                                    <div class="col-sm-6">
                                        <label>Phone *</label>
                                        <input type="" class="form-control" required>
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Town / City *</label>
                                        <input type="text" class="form-control" required>
                                    </div><!-- End .col-sm-6 -->

                                    <div class="col-sm-6">
                                        <label>State / County *</label>
                                        <input type="text" class="form-control" required>
                                    </div><!-- End .col-sm-6 -->
                                </div><!-- End .row -->
                                <label>Street address *</label>
                                <input type="text" class="form-control" placeholder="House number and Street name" required>

                                <label>Order notes (optional)</label>
                                <textarea class="form-control" cols="30" rows="4" placeholder="Notes about your order, e.g. special notes for delivery"></textarea>
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-6">
                                <div class="summary">
                                    <h3 class="summary-title">Your Order</h3><!-- End .summary-title -->

                                    <table class="table table-summary">
                                        <thead>
                                        <tr>
                                            <th>sản phẩm</th>
                                            <th></th>
                                            <th>tổng tiền</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <tr>
                                            <td>iphone 6s plus</td>
                                            <td>x2</td>
                                            <td>$84.00</td>
                                        </tr>
                                        <tr class="summary-total">
                                            <td>tổng tiền:</td>
                                            <td></td>
                                            <td>$160.00</td>
                                        </tr><!-- End .summary-total -->
                                        </tbody>
                                    </table><!-- End .table table-summary -->
                                    <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
                                        <span >đặt hàng</span>
<%--                                        <span class="btn-hover-text">Proceed to Checkout</span>--%>
                                    </button>
                                </div><!-- End .summary -->
                            </aside><!-- End .col-lg-3 -->
                        </div><!-- End .row -->
                    </form>
                </div><!-- End .container -->
            </div><!-- End .checkout -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->
    <%@include file="/WEB-INF/views/common/user/footer.jsp" %>
</div><!-- End .page-wrapper -->
<!-- Plugins JS File -->
</body>
</html>
