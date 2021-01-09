<%--
  Created by IntelliJ IDEA.
  User: vkhoi
  Date: 1/6/2021
  Time: 11:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="/WEB-INF/views/common/user/header.jsp" %>
<body>
<div class="d-flex justify-content-center">
    <div class="summary col-md-8" style="margin-top: 30px">
        <div class="d-flex justify-content-center"><h3 class="summary-title">Your Order</h3></div><!-- End .summary-title -->

        <table class="table table-summary">


            <tbody>
            <tr>
                <td>Tên khách hàng: </td><td >Văn Công Khôi</td>
            </tr>
            <tr>
                <td>sdt: </td><td >1234567890</td>
            </tr>
            <tr>
                <td>địa chỉ: </td><td >q9, TPHCM</td>
            </tr>
            <tr>
                <td>sản phẩm: </td><td >iphone 6s x2, iphone 8s x2</td>
            </tr>

            <tr class="summary-total">
                <td>tổng tiền:</td>
                <td>$160.00</td>
            </tr><!-- End .summary-total -->
            </tbody>
        </table><!-- End .table table-summary -->
        <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
            <span >Trở về</span>
            <%--                                        <span class="btn-hover-text">Proceed to Checkout</span>--%>
        </button>
    </div><!-- End .summary -->
</div>
</body>
<%@include file="/WEB-INF/views/common/user/footer.jsp" %>
</html>
