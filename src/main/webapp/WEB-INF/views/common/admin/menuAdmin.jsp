<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%------------------------menu---------------------------%>
<div class="main-sidebar" style="width: 150px">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="${pageContext.request.contextPath}/admin/home"> <img alt="image" src="<c:url value="/assetAdmin/img/logo.png"/>" class="header-logo" /> <span
                    class="logo-name">Otika</span>
            </a>
        </div>
        <%----------------------------------------%>
        <ul class="sidebar-menu">
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/home" class="nav-link "><i class="fa fa-home text-info" data-feather="monitor"></i><span class="text-info">Home</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerUser" class="nav-link"><i class="fa fa-user text-info" data-feather="monitor"></i><span class="text-info">user</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerProduct" class="nav-link"><i class="fa fa-desktop text-info" data-feather="monitor"></i><span class="text-info">Product </span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerItem" class="nav-link"><i class="fa fa-desktop text-info" data-feather="monitor"></i><span class="text-info">Item</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerSupplier" class="nav-link"><i class="fa fa-desktop text-info" data-feather="monitor"></i><span class="text-info">Supplier</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/admin/managerBill" class="nav-link"><i class="fa fa-desktop text-info" data-feather="monitor"></i><span class="text-info">Bill</span></a>
            </li>
            <li class="dropdown ">
                <a href="${pageContext.request.contextPath}/logout" class="nav-link"><i class="fa fa-sign-out text-info" data-feather="monitor"></i><span class="text-info">Logout</span></a>
            </li>

        </ul>
    </aside>
</div>