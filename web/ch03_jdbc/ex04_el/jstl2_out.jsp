<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/02
  Time: 10:14 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<c:set var="test" value="<script>alert('환영합니다1')</script>" />
<c:out value="${test }"/>

<c:set var="test" value="<script>alert('환영합니다-escapeXml=flase')</script>"/>
<c:out value="${test }" escapeXml="false"/>
</body>
</html>
