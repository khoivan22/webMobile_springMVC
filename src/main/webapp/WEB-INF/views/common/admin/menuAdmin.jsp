<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%------------------------menu---------------------------%>
<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="${pageContext.request.contextPath}/admin/home"> <img alt="image" src="<c:url value="/assetAdmin/img/logo.png"/>" class="header-logo" /> <span
                    class="logo-name">Otika</span>
            </a>
        </div>
        <%----------------------------------------%>
        <ul class="sidebar-menu">
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/home" class="nav-link "><i data-feather="monitor"></i><span>Trang Chủ</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerProduct" class="nav-link"><i data-feather="monitor"></i><span>Quản Lý Sản Phẩm</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerItem" class="nav-link"><i data-feather="monitor"></i><span>Quản Lý loại Sản Phẩm</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerSupplier" class="nav-link"><i data-feather="monitor"></i><span>Quản Lý Hãng</span></a>
            </li>
        </ul>
    </aside>
</div>