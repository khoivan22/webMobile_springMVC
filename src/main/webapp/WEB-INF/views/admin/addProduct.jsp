<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
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
                        <div class="col-12 d-flex justify-content-center">
                            <div class="card">
                                <form:form action="/add" modelAttribute="product" cssStyle="padding: 50px">
                                    <div class="form-group">
                                        <label>Default Select</label>
                                        <form:select class="form-control" path="ID_SUPPLIER" cssStyle="height: 45px">
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
                                    <div class="form-group">
                                        <label>Total:</label>
                                        <form:input class="form-control" path="TOTAL"/>
                                        <form:errors cssClass="text-danger" path="PRICE"/>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <div class="image-preview">
                                            <label for="image-upload-0">Choose File</label>
                                            <input type="file" name="image" id="image-upload-0">
                                        </div>
                                        <div class="image-preview"
                                             style="margin-left: 20px;margin-top: 25px;height: 175px; width: 175px">
                                            <label for="image-upload-1">Choose File</label>
                                            <input type="file" name="image" id="image-upload-1">
                                        </div>
                                        <div class="image-preview"
                                             style="margin-left: 20px;margin-top: 25px;height: 175px; width: 175px">
                                            <label for="image-upload-2">Choose File</label>
                                            <input type="file" name="image" id="image-upload-2">
                                        </div>
                                        <div class="image-preview"
                                             style="margin-left: 20px;margin-top: 25px;height: 175px; width: 175px">
                                            <label for="image-upload-3">Choose File</label>
                                            <input type="file" name="image" id="image-upload-3">
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                            <div class="card">
                                <form:form action="/add" modelAttribute="detailProduct" cssStyle="padding: 50px">
                                    <div class="form-group">
                                        <label>Default Select</label>
                                        <form:select class="form-control" path="RAM" cssStyle="height: 45px">
                                            <c:forEach var="suplier" items="${listSupplier}">
                                                <form:option
                                                        value="${suplier.ID_SUPPLIER}">${suplier.NAME_SUPPLIER}</form:option>
                                            </c:forEach>
                                        </form:select>
                                    </div>
                                    <div class="form-group">
                                        <label>Product name:</label>
                                        <form:input cssClass="form-control" path="CAMERA_BACK"/>
                                        <form:errors cssClass="text-danger" path="CAMERA_BACK"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Price:</label>
                                        <form:input class="form-control" path="CAMERA_FRONT"/>
                                        <form:errors cssClass="text-danger" path="CAMERA_FRONT"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Total:</label>
                                        <form:input class="form-control" path="DISPLAY"/>
                                        <form:errors cssClass="text-danger" path="DISPLAY"/>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../common/admin/content.jsp"/>
        </div>

    </div>
</div>
</body>
</html>
