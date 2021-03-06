<%@ page import="java.util.ArrayList" %>
<%@ page import="jdbc.ex03_db.Template_join" %><%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 10:27 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <c:if test="${!empty list}">
        <table class="table">
        <thead>
        <tr>
            <th>아이디</th>
            <th>성별</th>
            <th>취미</th>
            <th>주소</th>
            <th>자기소개</th>
            <th>가입일</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="temp">
        <tr>
            <td>${temp.id}</td>
            <td>${temp.genderView}</td>
            <td>${temp.hobby}</td>
            <td>${temp.address}></td>
            <td>${temp.intro}</td>
            <td>${temp.register_date}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    </c:if>

    <c:if test="${empty list}">
        <h4>조회된 데이터가 없습니다.</h4>
    </c:if>
</div>
</body>
</html>
