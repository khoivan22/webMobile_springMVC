<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <jsp:include page="../common/admin/headAdmin.jsp"/>

    <style>
        .conf {
            width: 50%;
        }
    </style>
</head>
<body>
<div class="loader"></div>
<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <%---------------------------header----------------------%>
        <jsp:include page="../common/admin/headerAdmin.jsp"/>
        <%---------------------------menu----------------------%>
        <jsp:include page="../common/admin/menuAdmin.jsp"/>
        <!-- Main Content -->
        <div class="main-content" style="padding-left: 185px">
            <section class="section">
                <form:form action="/web_mobile/admin/managerBill/edit" modelAttribute="bill" method="post">
                    <div class="d-flex justify-content-center">
                        <div class="summary col-md-8" style="margin-top: 30px">
                            <div class="d-flex justify-content-center"><h3 class="summary-title">Your Order</h3></div><!-- End .summary-title -->

                                <form:hidden path="user.USER_NAME"/>
                                <form:hidden path="date"/>
                                <form:hidden path="id"/>
                                <form:hidden path="address.id"/>
                                <form:hidden path="phone"/>
                                <form:hidden path="totalPrice"/>
                                <form:hidden path="note"/>
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
                                    <td>Status: </td>
                                    <td >
                                        <form:select class="form-control" path="status" cssStyle="height: 45px">
                                                <form:option value="1">Implementation</form:option>
                                                <form:option value="0"> incomplete</form:option>
                                        </form:select>
                                </td>
                                </tr>

                                <tr>
                                    <td>Product: </td><td >${bill.toStringBil}</td>
                                </tr>

                                <tr class="summary-total">
                                    <td>Total price:</td>
                                    <td><fmt:formatNumber type="number" groupingUsed="true">${bill.totalPrice}</fmt:formatNumber> đ</td>
                                </tr><!-- End .summary-total -->
                                </tbody>
                            </table><!-- End .table table-summary -->
                            <button type="submit" class="btn btn-success w-100">
                                <span >Edit bill</span>
                            </button>
                        </div><!-- End .summary -->
                    </div>

                    </div>
                    </form:form>
                    <jsp:include page="../common/admin/content.jsp"/>
                </div>

        </div>
</body>

</html>
