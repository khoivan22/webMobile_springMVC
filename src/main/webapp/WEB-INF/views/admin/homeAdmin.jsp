<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<%-------------------------head----------------------%>
<head>
<jsp:include page="../common/admin/headAdmin.jsp"/>
    <title></title>
</head>
<body>
<div class="loader"></div>
<div id="app">
    <div class="main-wrapper main-wrapper-1">
        <div class="navbar-bg"></div>
        <%------------------------header------------------------%>
       <jsp:include page="../common/admin/headerAdmin.jsp"/>
        <%------------------------menu---------------------------%>
        <jsp:include page="../common/admin/menuAdmin.jsp"/>
        <!-- Main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-body">
                    <div class="row">
                        <div class="col-12 d-flex justify-content-center">

                        <p style="font-size: 100px " class="text-success" > Welcome</p>
                        </div>
                    </div>
                </div>
            </section>
            <jsp:include page="../common/admin/content.jsp"/>
        </div>
        <%-----------------------content---------------------------%>
        <jsp:include page="../common/admin/content.jsp"/>
        <%------------------------footer------------------------%>
        <jsp:include page="../common/admin/footerAdmin.jsp"/>
    </div>
</div>

</body>


<!-- index.html  21 Nov 2019 03:47:04 GMT -->
</html>