<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 9:12 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="view3.jsp">
    보고싶은 페이지 선택
    <select name="code" id="">
        <option value="newItem">신상품</option>
        <option value="bestItem">인기상품</option>
        <option value="usedItem">중고상품</option>
    </select>
    <input type="submit" value="이동">
</form>
</body>
</html>
