<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <form:form action="/web_mobile/admin/managerUser/edit" modelAttribute="user" method="post">

                <div class="section-body">
                    <div class="row">
                        <div class="col-12 d-flex justify-content-center">
                            <div class="card d-flex justify-content-center" style="padding: 20px;width: 50%">
                                    <%-------------------------------------------------------------------------------------------------------------------%>
<%--                                <div>${userDetail.USER_NAME.equals(user.USER_NAME)?"You can not change yourself":""}</div>--%>
                                <div class="d-flex justify-content-center">
                                    <div class="form-group">
                                        <label>User name:</label>
                                        <form:hidden cssClass="form-control" path="USER_NAME"/>
                                        <input class="form-control" value="${user.USER_NAME}" disabled/>
                                    </div>
                                    <div class="form-group">
                                        <label>Pass word:</label>
                                        <form:hidden class="form-control" path="PASSWORD"/>
                                        <input class="form-control" value="${user.PASSWORD}" style="margin-left: 10px"
                                               disabled/>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="form-group">
                                        <label>Name:</label>
                                        <form:hidden class="form-control" path="FULLNAME"/>
                                        <input class="form-control" value="${user.FULLNAME}" disabled/>
                                    </div>
                                    <div class="form-group">
                                        <label>Email:</label>
                                        <form:hidden class="form-control" path="EMAIL"/>
                                        <input class="form-control" value="${user.EMAIL}" style="margin-left: 10px"
                                               disabled/>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="form-group">
                                        <label>Role:</label>
                                        <form:select class="form-control" path="role.idRole">
                                            <form:option value="2">User</form:option>
                                            <form:option value="1">Admin</form:option>
                                        </form:select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center" style="margin-top: 10px">

                        <input type="submit" id="submit" style="width: 50%" value="Update"
                               class="btn-success"/>

                    </div>
                    </form:form>
                    <jsp:include page="../common/admin/content.jsp"/>
                </div>

        </div>
</body>

<script>
    $(document).ready(function () {

        $("#submit").click(function () {
            if ($("#text-fail").text() === 'invalid') {
                swal("id invalid");
            }
        });


        $("#idSupp").keyup(function () {
            var s = $('#idSupp').val()
            $.ajax({
                url: "/web_mobile/admin/managerUser/check",
                type: "get",
                data: {id: s},
                success(check) {
                    var input = $("#text-fail");
                    if (check === false && $("#idSupp").val() !== '') {
                        input.html("valid");
                        input.addClass("text-success").removeClass("text-danger");
                        $("#submit").prop('type', 'submit')
                    } else {
                        input.html("invalid")
                        input.addClass("text-danger").removeClass("text-success")
                        $("#submit").prop('type', 'button')
                    }
                },
                error(check) {
                    alert("huhu")
                }

            });
        });
    });
</script>
</html>
