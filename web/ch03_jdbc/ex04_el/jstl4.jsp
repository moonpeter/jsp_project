<%@ page import="javax.mail.Session" %><%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/02
  Time: 11:38 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    session.setAttribute("id", "TestHong");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="id" value="${sessionScope.id}"/>
<c:if test="${id == 'TestHong'}">
    <h4 style="color: green">아이디가 존재합니다.</h4>
</c:if>
<c:if test="${id != 'TestHong'}">
    <h4 style="color: red">아이디가 존재하지 않습니다.</h4>
</c:if>
</body>
</html>
