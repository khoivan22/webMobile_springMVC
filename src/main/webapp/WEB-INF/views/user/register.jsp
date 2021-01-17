<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vkhoi
  Date: 1/8/2021
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="/WEB-INF/views/common/user/header.jsp" %>
<body>
<div class="page-wrapper">

    <main class="main">
        <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17"
        <%--             style="background-image: url('assets/images/backgrounds/login-bg.jpg')">--%>
        <div class="container">
            <div class="form-box">
                <div class="form-tab">
                    <ul class="nav nav-pills nav-fill" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="register-tab-2" data-toggle="tab" href="#register-2"
                               role="tab" aria-controls="register-2" aria-selected="true">Register</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <%--------------------------register-------------------------------%>
                        <div class="tab-pane fade show active" id="register-2" role="tabpanel"
                             aria-labelledby="register-tab-2">
                            <form:form modelAttribute="user" method="post" action="#">
                                <div class="form-group">
                                    <label for="name">Name *</label>
                                    <form:input path="FULLNAME" class="form-control" id="name" required="required"/>
                                    <form:errors path="FULLNAME" cssClass="text-danger text-size"/>
                                </div>
                                <!-- End .form-group -->

                                <div class="form-group">
                                    <label for="phone">phone *</label>
                                    <form:input type="" path="PHONE" class="form-control" id="phone"
                                                required="required"/>
                                    <form:errors path="PHONE" cssClass="text-danger text-size"/>
                                </div>
                                <!-- End .form-group -->
                                <div class="form-group">
                                    <label for="email">Email *</label>
                                    <form:input type="email" path="EMAIL" class="form-control" id="email"
                                                required="required"/>
                                    <form:errors path="EMAIL" cssClass="text-danger text-size"/>
                                </div>
                                <!-- End .form-group -->
                                <div class="form-group">
                                    <label for="userName">User name *</label>
                                    <form:input path="USER_NAME" class="form-control" id="userName"
                                                required="required"/>
                                    <form:errors path="USER_NAME" cssClass="text-danger text-size"/>
                                </div>
                                <!-- End .form-group -->
                                <div class="form-group">
                                    <label for="pass">Password *</label>
                                    <form:password path="PASSWORD" class="form-control" id="pass" required="required"/>
                                    <form:errors path="PASSWORD" cssClass="text-danger text-size"/>
                                </div>
                                <!-- End .form-group -->
                                <div class="form-group">
                                    <label for="phone">Confirm password *</label>
                                    <form:password path="REPASS" class="form-control" id="repass" required="required"/>
                                    <form:errors path="REPASS" cssClass="text-danger text-size"/>
                                </div>
                                <!-- End .form-group -->

                                <div class="form-footer">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>SIGN UP</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>

                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="register-policy-2"
                                               required>
                                        <label class="custom-control-label" for="register-policy-2">I agree to the
                                            <a href="#">privacy policy</a> *</label>
                                    </div><!-- End .custom-checkbox -->
                                </div>
                                <!-- End .form-footer -->
                            </form:form>
                            <div class="form-choice">
                                <p class="text-center">or sign in with</p>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login btn-g">
                                            <i class="icon-google"></i>
                                            Login With Google
                                        </a>
                                    </div><!-- End .col-6 -->
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login  btn-f">
                                            <i class="icon-facebook-f"></i>
                                            Login With Facebook
                                        </a>
                                    </div><!-- End .col-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .form-choice -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .form-tab -->
            </div><!-- End .form-box -->
        </div><!-- End .container -->
</div><!-- End .login-page section-bg -->
</main><!-- End .main -->

</div><!-- End .page-wrapper -->
</body>
<%@include file="/WEB-INF/views/common/user/footer.jsp" %>
<script>
    $(document).ready(function () {
        $("#userName").keyup(function () {
$.ajax({
    url: "${pageContext.request.contextPath}/cart/add",
    type: "get",
    data: {
        idProduct: $(this).find("span").html(),
    },
    success: function (data) {
        if(data)
            swal("Đã thêm vào giỏ hàng")
        else
            swal("Bạn chưa đăng nhập")
    },
    error: function (b) {
        alert("error")
    }
})
        });
    });
</script>
</html>
