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
                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header ">
                                    <div class=" col-md-6">
                                        <a href="col-sm-12${pageContext.request.contextPath}/admin/managerProduct/add"
                                           class="btn btn-icon icon-left btn-warning"><i
                                                class="fas fa-plus-circle"></i>
                                            add product</a>

                                        <button id="deletes" class="btn btn-icon icon-left btn-warning">
                                            <i class="fas fa-trash"></i>
                                            delete product
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
                                                <th>Id</th>
                                                <th>Id Supplier</th>
                                                <th>Name</th>
                                                <th>Img</th>
                                                <th>Active</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="product" items="${pageTuts.content}">
                                                <tr>

                                                    <td>
                                                        <div class="pretty p-svg p-curve">
                                                            <input type="checkbox" value="${product.ID_PRODUCT}"
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
                                                    <td>${product.ID_PRODUCT}</td>
                                                    <td>${product.supp.ID_SUPPLIER}</td>
                                                    <td>${product.PRODUCT_NAME}</td>
                                                    <td><img src="<c:url value="${product.listImg[0]}"/>" width="40px"
                                                             height="40px"></td>
                                                    <td>
                                                        <div class="preview col-sm-12 col-md-6 actives">
                                                            <c:if test="${product.ACTIVE==1}">
                                                                <a href="#"><i class="material-icons text-success">check_circle</i></a>
                                                            </c:if>
                                                            <c:if test="${product.ACTIVE==0}">
                                                                <a href="#"><i class="material-icons text-warning ">error</i></a>
                                                            </c:if>
                                                            <input type="hidden" value="${product.ID_PRODUCT}">
                                                        </div>
                                                            <%--                                                    <div class="preview">--%>
                                                            <%--                                                        <i class="material-icons">remove_circle_outline</i> <span class="icon-name">remove_circle_outline</span>--%>
                                                            <%--                                                    </div>--%>
                                                    </td>
                                                    <td>
                                                        <div class="preview" >
                                                          <a href="#" class="delete">
                                                               <i class="material-icons text-danger">delete</i>
                                                               <input type="hidden" value="${product.ID_PRODUCT}">
                                                          </a>

                                                            <a href="${pageContext.request.contextPath}/admin/managerProduct/edit?id=${product.ID_PRODUCT}"><i
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
                                                                         href="${pageContext.request.contextPath}/admin/managerProduct/${numPage==1?pageTuts.totalPages:(numPage-1)}">Previous</a>
                                                </li>
                                                <c:forEach var="i" begin="1" end="${pageTuts.totalPages}">
                                                    <li class="page-item ${numPage==i?'active':''}"><a
                                                            class="page-link"
                                                            href="${pageContext.request.contextPath}/admin/managerProduct/${i}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <li class="page-item"><a class="page-link"
                                                                         href="${pageContext.request.contextPath}/admin/managerProduct/${numPage==pageTuts.totalPages?1:(numPage+1)}">Next</a>
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

<script type="text/javascript">
    $(document).ready(function () {

    });
</script>
<div id="dialog" style="display: none" align="center">
    Do you want to delete this record?
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
                    url: "/web_mobile/admin/managerProduct/deletes",
                    type: "post",
                    data: {ids: ids.toString()},
                    success(data) {
                        alert("xóa thành công")
                        location.reload()
                    },
                    error(data) {
                        alert("huhu")
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
            if (ids.length > 0) {
                $.ajax({
                    url: "/web_mobile/admin/managerProduct/deletes",
                    type: "post",
                    data: {ids: ids.toString()},
                    success(data) {
                        alert("xóa thành công")
                        location.reload()
                    },
                    error(data) {
                        alert("huhu")
                    }
                });
            }
        });
    });

    /**Active*/
    $(document).ready(function () {

        $('.actives').click(function () {
            const i = $(this).find("i");

            $.ajax({
                url: "/web_mobile/admin/managerProduct/active",
                type: "get",
                data: {id: $(this).find("input").val()},
                success(status) {
                    if (status === 0) {
                        i.removeClass("text-success");
                        i.addClass("text-warning")
                        i.html("error");
                    } else {
                        i.removeClass("text-warning");
                        i.addClass("text-success")
                        i.html("check_circle");
                    }
                },
                error(data) {
                    alert("huhu")
                }
            })
        });

        // $.each($('.actives'),function () {
        //
        //
        // });

    });
</script>
<!-- datatables.html  21 Nov 2019 03:55:25 GMT -->

</html>