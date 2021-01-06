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
        <div class="main-content">
            <section class="section">
                <form:form action="/web_mobile/admin/managerSupplier/${par}" modelAttribute="supp" method="post">

                <div class="section-body">
                    <div class="row">
                        <div class="col-12 d-flex justify-content-center">
                            <div class="card" style="padding: 20px;width: 50%">
                                <c:choose>
                                    <c:when test="${par.equals('edit')}">
                                        <form:hidden cssClass="form-control"
                                                    path="ID_SUPPLIER"
                                                    required="required"/>
                                        <div class="form-group">
                                            <label>Id supplier:</label>
                                            <div class="d-flex"><input disabled class="form-control" id="idSupp" value="${supp.ID_SUPPLIER}"
                                                                       required="required">
                                            </div>
                                            <form:errors cssClass="text-danger" path="ID_SUPPLIER"/>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="form-group">
                                            <label>Id supplier:</label>
                                            <div class="d-flex"><form:input cssClass="form-control" id="idSupp"
                                                                            path="ID_SUPPLIER"
                                                                            required="required"/> <span id="text-fail"
                                                                                                        style="margin-top: 12px; margin-left: 12px"></span>
                                            </div>
                                            <form:errors cssClass="text-danger" path="ID_SUPPLIER"/>
                                        </div>
                                    </c:otherwise>
                                </c:choose>

                                <div class="form-group">
                                    <label>Name supplier:</label>
                                    <form:input cssClass="form-control" path="NAME_SUPPLIER" required="required"/>
                                    <form:errors cssClass="text-danger" path="NAME_SUPPLIER"/>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center" style="margin-top: 10px">

                        <input type="submit" id="submit" style="width: 50%" value="${par} supplier"
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
                url: "/web_mobile/admin/managerSupplier/check",
                type: "get",
                data: {id: s},
                success(check) {
                    var input = $("#text-fail");
                    if (check === false &&  $("#idSupp").val()!=='') {
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
