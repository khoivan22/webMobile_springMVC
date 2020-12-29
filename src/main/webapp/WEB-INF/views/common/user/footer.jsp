<footer class="footer" id="ok">
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="widget widget-about">
                        <img src="<c:url value="/img/logo/logo-footer.png"/>" class="footer-logo"
                             alt="Footer Logo" width="105" height="25">
                        <p>Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros
                            eu erat. </p>

                        <div class="widget-call">
                            <i class="icon-phone"></i>
                            Got Question? Call us 24/7
                            <a href="tel:#">+0123 456 789</a>
                        </div><!-- End .widget-call -->
                    </div><!-- End .widget about-widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <div class="widget">
                        <h4 class="widget-title">Useful Links</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="about.html">About Molla</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">How to shop on Molla</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <div class="widget">
                        <h4 class="widget-title">Customer Service</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="#">Payment Methods</a></li>
                            <li><a href="#">Money-back guarantee!</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Terms and conditions</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <div class="widget">
                        <h4 class="widget-title">My Account</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="#">Sign In</a></li>
                            <li><a href="cart.html">View Cart</a></li>
                            <li><a href="#">My Wishlist</a></li>
                            <li><a href="#">Track My Order</a></li>
                            <li><a href="#">Help</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .footer-middle -->

    <div class="footer-bottom">
        <div class="container">
            <p class="footer-copyright">Copyright © 2019 Molla Store. All Rights Reserved.</p>
            <!-- End .footer-copyright -->
            <figure class="footer-payments">
                <img src="<c:url value="/img/logo/payments.png"/>" alt="Payment methods" width="272" height="20">
            </figure><!-- End .footer-payments -->
        </div><!-- End .container -->
    </div><!-- End .footer-bottom -->
</footer>
<!-- End .footer -->
<%------------------------------------------%>
<button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

<!-- Sign in / Register Modal -->
<div class="modal fade" id="signin-modal" tabindex="-1" role="dialog"/>
" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"><i class="icon-close"></i></span>
            </button>

            <div class="form-box">
                <div class="form-tab">
                    <ul class="nav nav-pills nav-fill nav-border-anim" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab"
                               aria-controls="signin" aria-selected="true">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab"
                               aria-controls="register" aria-selected="false">Register</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="tab-content-5">
                        <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                            <form action="#">
                                <div class="form-group">
                                    <label for="singin-email">Username or email address *</label>
                                    <input type="text" class="form-control" id="singin-email" name="singin-email"
                                           required>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label for="singin-password">Password *</label>
                                    <input type="password" class="form-control" id="singin-password"
                                           name="singin-password" required>
                                </div><!-- End .form-group -->

                                <div class="form-footer">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>LOG IN</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>

                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="signin-remember">
                                        <label class="custom-control-label" for="signin-remember">Remember Me</label>
                                    </div><!-- End .custom-checkbox -->

                                    <a href="#" class="forgot-link">Forgot Your Password?</a>
                                </div><!-- End .form-footer -->
                            </form>
                            <div class="form-choice">
                                <p class="text-center">or sign in with</p>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login btn-g"/>">
                                        <i class="icon-google"></i>
                                        Login With Google
                                        </a>
                                    </div><!-- End .col-6 -->
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login btn-f">
                                            <i class="icon-facebook-f"></i>
                                            Login With Facebook
                                        </a>
                                    </div><!-- End .col-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .form-choice -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                            <form action="#">
                                <div class="form-group">
                                    <label for="register-email">Your email address *</label>
                                    <input type="email" class="form-control" id="register-email" name="register-email"
                                           required>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label for="register-password">Password *</label>
                                    <input type="password" class="form-control" id="register-password"
                                           name="register-password" required>
                                </div><!-- End .form-group -->

                                <div class="form-footer">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>SIGN UP</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>

                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="register-policy"
                                               required>
                                        <label class="custom-control-label" for="register-policy">I agree to the <a
                                                href="#">privacy policy</a> *</label>
                                    </div><!-- End .custom-checkbox -->
                                </div><!-- End .form-footer -->
                            </form>
                            <div class="form-choice">
                                <p class="text-center">or sign in with</p>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login btn-g"/>">
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
        </div><!-- End .modal-body -->
    </div><!-- End .modal-content -->
</div>
<!-- End .modal-dialog -->

<%---------------------------------------------%>
<script>

    $(document).ready(function () {
        $('#keySearch').keyup(function () {
            $("#list-auto").empty();
            if ($('#keySearch').val().trim().length!==0){
                $("#div-auto").css("height", "230px");
                $.ajax({
                    url: "/web_mobile/listProduct/autoComplete",
                    type: "get",
                    dataType: "json",
                    data: {
                        keySearch: $('#keySearch').val(),
                    },
                    success: function (data) {
                        $.each(data,function (i, item) {
                            $("#list-auto").append("<p class='list-group-item list-group-item-action'>" + item.product_NAME + "</p>");
                        });
                    },
                    error: function (b) {
                        alert(b + "error")
                    }
                });}
        });
        $("#list-auto").on("click","p", function () {
            $("#keySearch").val($(this).text());
            $("#list-auto").empty();
            $("#div-auto").css("height", "0px");
        })
        $("#keySearch").click(function () {
            $("#div-auto").css("height", "0px");
        })
    });
</script>