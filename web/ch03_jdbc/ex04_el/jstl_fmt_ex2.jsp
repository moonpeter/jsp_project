<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/02
  Time: 12:04 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <fmt:setLocale value="en_US"/>

    <fmt:formatNumber value="50000" type="currency"/> <hr>

    <fmt:formatNumber value="0.15" type="percent"/> <hr>

    <fmt:formatNumber value="500567300" pattern="###,###,###"/> <hr>

    <fmt:formatDate value="${date}" type="date"/> <hr>

    <fmt:formatDate value="${date}" type="time"/> <hr>

    <fmt:formatDate value="${date}" type="both"/> <hr>

    <fmt:formatDate value="${date}" type="both" timeStyle="short" dateStyle="short"/> <hr>

    <fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long"/> <hr>

</p>
</body>
</html>
