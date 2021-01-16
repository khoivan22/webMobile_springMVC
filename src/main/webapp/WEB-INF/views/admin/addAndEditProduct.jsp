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
                <form:form action="/web_mobile/admin/managerProduct/${par}" modelAttribute="product" method="post"
                           enctype="multipart/form-data">

                <div class="section-body">
                    <div class="row">
                        <div class="col-12 d-flex justify-content-center">
                            <div class="card" style="padding: 20px;width: 50%">

                                <%-- input hiden --%>
                                    <div class="form-group conf" style="margin-left: 10px; display: none">
                                        <form:input class="form-control" path="ID_PRODUCT"/>
                                        <form:errors cssClass="text-danger" path="ID_PRODUCT"/>
                                    </div>
                                    <div class="form-group conf" style="margin-left: 10px; display: none">
                                        <form:input class="form-control" path="config.ID_PRODUCT"/>
                                        <form:errors cssClass="text-danger" path="config.ID_PRODUCT"/>
                                    </div>
                                    <div class="form-group conf" style="margin-left: 10px; display: none">
                                        <form:input class="form-control" path="IMG"/>
                                        <form:errors cssClass="text-danger" path="IMG"/>
                                    </div>
<%-------------------------------------------------------------------------------------------------------------------%>
                                <div class="form-group">
                                    <label>Item:</label>
                                    <form:select class="form-control" path="item.ID_ITEMS" cssStyle="height: 45px">
                                        <c:forEach var="item" items="${listItem}">
                                            <form:option
                                                    value="${item.ID_ITEMS}">${item.ITEMS_NAME}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                                <div class="form-group">
                                    <label>Supplier:</label>
                                    <form:select class="form-control" path="supp.ID_SUPPLIER" cssStyle="height: 45px">
                                        <c:forEach var="suplier" items="${listSupplier}">
                                            <form:option
                                                    value="${suplier.ID_SUPPLIER}">${suplier.NAME_SUPPLIER}</form:option>
                                        </c:forEach>
                                    </form:select>
                                </div>
                                <div class="form-group">
                                    <label>Product name:</label>
                                    <form:input cssClass="form-control" path="PRODUCT_NAME"/>
                                    <form:errors cssClass="text-danger" path="PRODUCT_NAME"/>
                                </div>
                                <div class="form-group">
                                    <label>Price:</label>
                                    <form:input class="form-control" path="PRICE"/>
                                    <form:errors cssClass="text-danger" path="PRICE"/>
                                </div>
                                <div>
                                    <label>Total:</label>
                                    <form:input class="form-control" path="TOTAL"/>
                                    <form:errors cssClass="text-danger" path="TOTAL"/>
                                </div>
                                <c:if test="${par.equals('add')}">
                                <div class="d-flex justify-content-center" style="margin-top: 10px">
                                    <div class="image-preview ">
                                        <label for="image-upload-0">Choose File</label>
                                        <input type="file" name="multipleFiles[0]" id="image-upload-0" class="file">
                                    </div>
                                </div>
                                    <div class="d-flex justify-content-center" style="margin-top: 10px">
                                    <div class="image-preview"
                                         style="margin-left: 20px;margin-top: 25px;height: 175px; width: 175px">
                                        <label for="image-upload-1">Choose File</label>
                                        <input type="file" name="multipleFiles[1]" id="image-upload-1" class="file"/>
                                    </div>
                                    <div class="image-preview"
                                         style="margin-left: 20px;margin-top: 25px;height: 175px; width: 175px">
                                        <label for="image-upload-2">Choose File</label>
                                        <input type="file" name="multipleFiles[2]" id="image-upload-2">
                                    </div>
                                    <div  class="image-preview"
                                         style="margin-left: 20px;margin-top: 25px;height: 175px; width: 175px">
                                        <label for="image-upload-3">Choose File</label>
                                        <input type="file" name="multipleFiles[3]" id="image-upload-3">
                                    </div>
                                </div>
                                </c:if>
                            </div>
                            <div class="card" style="width: 50%; padding: 20px">
                                <div class="d-flex">
                                    <div class="form-group conf">
                                        <label>Ram</label>
                                        <form:select class="form-control" path="config.RAM" cssStyle="height: 45px">
                                            <form:option value="2GB">2GB</form:option>
                                            <form:option value="4GB">4GB</form:option>
                                            <form:option value="8GB">8GB</form:option>
                                            <form:option value="16GB">16GB</form:option>
                                        </form:select>
                                    </div>
                                    <div class="form-group conf" style="margin-left: 10px">
                                        <label>Battery:</label>
                                        <form:input class="form-control" path="config.BATTERY"/>
                                        <form:errors cssClass="text-danger" path="config.BATTERY"/>
                                    </div>
                                </div>

                                <div class="d-flex">
                                    <div class="form-group conf">
                                        <label>Rom</label>
                                        <form:select class="form-control" path="config.ROM" cssStyle="height: 45px">
                                            <form:option value="8GB"/>
                                            <form:option value="16GB"/>
                                            <form:option value="32GB"/>
                                            <form:option value="64GB"/>
                                            <form:option value="128GB"/>
                                            <form:option value="256GB"/>
                                        </form:select>
                                    </div>
                                    <div class="form-group conf" style="margin-left: 10px">
                                        <label>Operating System:</label>
                                        <form:input class="form-control" path="config.OS"/>
                                        <form:errors cssClass="text-danger" path="config.OS"/>
                                    </div>
                                </div>

                                <div class="d-flex">
                                    <div class="form-group conf">
                                        <label>Cpu:</label>
                                        <form:input cssClass="form-control" path="config.CPU"/>
                                        <form:errors cssClass="text-danger" path="config.CPU"/>
                                    </div>

                                    <div class="form-group conf" style="margin-left: 10px">
                                        <label>Sim:</label>
                                        <form:input class="form-control" path="config.SIM"/>
                                        <form:errors cssClass="text-danger" path="config.SIM"/>
                                    </div>
                                </div>
                                <div class="form-group conf">
                                    <label>Gpu:</label>
                                    <form:input cssClass="form-control" path="config.GPU"/>
                                    <form:errors cssClass="text-danger" path="config.GPU"/>
                                </div>
                                <div class="form-group conf">
                                    <label>Camera back:</label>
                                    <form:input cssClass="form-control" path="config.CAMERA_BACK"/>
                                    <form:errors cssClass="text-danger" path="config.CAMERA_BACK"/>
                                </div>
                                <div class="form-group conf">
                                    <label>Camera front:</label>
                                    <form:input class="form-control" path="config.CAMERA_FRONT"/>
                                    <form:errors cssClass="text-danger" path="config.CAMERA_FRONT"/>
                                </div>
                                <div class="form-group conf">
                                    <label>Display:</label>
                                    <form:input class="form-control" path="config.DISPLAY"/>
                                    <form:errors cssClass="text-danger" path="config.DISPLAY"/>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-center" style="margin-top: 10px">
                    <input type="submit" style="width: 100%" value="${par} product" class="btn-success"/></form:form></div>
                <jsp:include page="../common/admin/content.jsp"/>
        </div>

    </div>
</div>
</body>

<script src="<c:url value="/assetAdmin/bundles/upload-preview/assets/js/jquery.uploadPreview.min.js"/>">

</script>
</html>
