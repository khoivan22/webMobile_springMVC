<%--
  Created by IntelliJ IDEA.
  User: vkhoi
  Date: 12/15/2020
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Spring MVC file upload example</h1>

<form method="POST" action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data">
    <input type="file" name="file" /><br/>
    <input type="submit" value="Submit" />
</form>
</body>
</html>
