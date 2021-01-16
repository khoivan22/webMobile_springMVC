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
                <td>Customer: </td><td >${bill.user.FULLNAME}</td>
            </tr>
            <tr>
                <td>Phone: </td><td >${bill.phone}</td>
            </tr>
            <tr>
                <td>Date: </td><td >${bill.date}</td>
            </tr>
            <tr>
                <td>Address: </td><td >${bill.address.toString()}</td>
            </tr>
            <tr>
                <td>Product: </td><td ></td>
            </tr>

            <tr class="summary-total">
                <td>Total price:</td>
                <td>$160.00</td>
            </tr><!-- End .summary-total -->
            </tbody>
        </table><!-- End .table table-summary -->
        <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-primary-2 btn-order btn-block">
            <span >Trở về</span>
            <%--                                        <span class="btn-hover-text">Proceed to Checkout</span>--%>
        </a>
    </div><!-- End .summary -->
</div>
</body>
<%@include file="/WEB-INF/views/common/user/footer.jsp" %>
</html>
