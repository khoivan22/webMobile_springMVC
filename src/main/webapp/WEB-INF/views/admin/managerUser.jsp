<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/assetAdmin/bundles/datatables/datatables.min.css"/>">
    <link rel="stylesheet"
          href="<c:url value="/assetAdmin/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css"/>">
    <jsp:include page="../common/admin/headAdmin.jsp"/>
</head>
<body>
<%--<div class="loader"></div>--%>
<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <%---------------------------header----------------------%>
        <jsp:include page="../common/admin/headerAdmin.jsp"/>
        <%---------------------------menu----------------------%>
        <jsp:include page="../common/admin/menuAdmin.jsp"/>
        <!-- Main Content -->
        <div class="main-content" style="padding-left: 185px">
            <section class="section">
                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header ">
                                    <div class="col-sm-12 col-md-6">
                                        <button id="deletes" class="btn btn-icon icon-left btn-warning">
                                            <i class="fa fa-trash"></i>
                                            delete item
                                        </button>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div id="table-1_filter" class="dataTables_filter">
                                            <input class="form-control" type="search" placeholder="Search"
                                                   aria-label="Search" data-width="200" style="width: 200px;">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover" id="save-stage"
                                               style="width:100%;">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <div class="pretty p-svg p-curve">
                                                        <input type="checkbox" id="cb-all"/>
                                                        <div class="state p-danger">
                                                            <!-- svg path -->
                                                            <svg class="svg svg-icon" viewBox="0 0 20 20">
                                                                <path
                                                                        d="M7.629,14.566c0.125,0.125,0.291,0.188,0.456,0.188c0.164,0,0.329-0.062,0.456-0.188l8.219-8.221c0.252-0.252,0.252-0.659,0-0.911c-0.252-0.252-0.659-0.252-0.911,0l-7.764,7.763L4.152,9.267c-0.252-0.251-0.66-0.251-0.911,0c-0.252,0.252-0.252,0.66,0,0.911L7.629,14.566z"
                                                                        style="stroke: white;fill:white;"></path>
                                                            </svg>
                                                            <label>all</label>
                                                        </div>
                                                    </div>
                                                </th>
                                                <th class="align-center">User Name</th>
                                                <th class="align-center">Name</th>
                                                <th class="align-center">Mail</th>
                                                <th class="align-center">Phone</th>
                                                <th class="align-center">Role</th>
                                                <th class="align-center">Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="user" items="${pageTuts.content}">
                                                <tr>

                                                    <td>
                                                        <div class="pretty p-svg p-curve">
                                                            <input value="${user.USER_NAME}" type="checkbox"
                                                                   class="cb-one"/>
                                                            <div class="state p-danger">
                                                                <!-- svg path -->
                                                                <svg class="svg svg-icon" viewBox="0 0 20 20">
                                                                    <path
                                                                            d="M7.629,14.566c0.125,0.125,0.291,0.188,0.456,0.188c0.164,0,0.329-0.062,0.456-0.188l8.219-8.221c0.252-0.252,0.252-0.659,0-0.911c-0.252-0.252-0.659-0.252-0.911,0l-7.764,7.763L4.152,9.267c-0.252-0.251-0.66-0.251-0.911,0c-0.252,0.252-0.252,0.66,0,0.911L7.629,14.566z"
                                                                            style="stroke: white;fill:white;"></path>
                                                                </svg>
                                                                <label>.</label>
                                                            </div>

                                                        </div>
                                                    </td>
                                                    <td class="align-center">${user.USER_NAME}</td>
                                                    <td class="align-center">${user.FULLNAME}</td>
                                                    <td class="align-center">${user.EMAIL}</td>
                                                    <td class="align-center">${user.PHONE}</td>
                                                    <td class="align-center">${user.role.name.substring(5,user.role.name.length())}</td>
                                                    <td class="align-center">
                                                        <div class="preview">
                                                            <a href="#" class="delete">
                                                                <i class="material-icons text-danger">delete</i>
                                                                <input type="hidden" value="${user.USER_NAME}">
                                                            </a>
                                                            <a href="${pageContext.request.contextPath}/admin/managerUser/edit?id=${user.USER_NAME}"><i
                                                                    class="material-icons text-warning">create</i></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <div class="d-flex flex-row-reverse bd-highlight">
                                            <ul class="pagination">
                                                <li class="page-item"><a class="page-link"
                                                                         href="${pageContext.request.contextPath}/admin/managerUser/${numPage==1?pageTuts.totalPages:(numPage-1)}">Previous</a>
                                                </li>
                                                <c:forEach var="i" begin="1" end="${pageTuts.totalPages}">
                                                    <li class="page-item ${numPage==i?'active':''}"><a
                                                            class="page-link"
                                                            href="${pageContext.request.contextPath}/admin/managerUser/${i}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <li class="page-item"><a class="page-link"
                                                                         href="${pageContext.request.contextPath}/admin/managerUser/${numPage==pageTuts.totalPages?1:(numPage+1)}">Next</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <jsp:include page="../common/admin/content.jsp"/>
        </div>

    </div>
</div>


<jsp:include page="../common/admin/footerAdmin.jsp"/>
<%--<script src="<c:url value="/assetAdmin/js/page/datatables.js"/>"></script>--%>
<script src="<c:url value="/assetAdmin/bundles/datatables/datatables.min.js"/>"></script>
<script src="<c:url value="/assetAdmin/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"/>"></script>
</body>

<script>
    /**deletes*/
    $(document).ready(function () {
        $('#deletes').click(function () {
            let ids = [];
            $.each($('.cb-one'), function () {
                if ($(this).prop('checked'))
                    ids.push($(this).val());
            });
            // alert(ids)
            if (ids.length > 0) {
                $.ajax({
                    url: "/web_mobile/admin/managerUser/deletes",
                    type: "post",
                    data: {ids: ids.toString()},
                    success(data) {
                        if(data) {
                            location.reload()
                            swal("xóa thành công")


                        }else {
                            swal("không thể xóa chính mình")
                        }
                    },
                    error(data) {
                        alert("fail")
                    }
                });
            } else {
                swal("bạn chưa chọn sản phẩm nào")
            }
        });
    });

    /**delete*/
    $(document).ready(function () {
        $('.delete').click(function () {
            let ids = [];
            ids.push($(this).find("input").val())
            alert($(this).find("input").val())
            if (ids.length > 0) {
                $.ajax({
                    url: "/web_mobile/admin/managerUser/deletes",
                    type: "post",
                    data: {ids: ids.toString()},
                    success(data) {
                        if(data) {
                            location.reload()
                            swal("xóa thành công")


                        }else {
                            swal("không thể xóa chính mình")
                        }
                    },
                    error(data) {
                        alert("fail")
                    }
                });
            }
        });
    });
</script>


<!-- datatables.html  21 Nov 2019 03:55:25 GMT -->

</html>