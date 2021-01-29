<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/29
  Time: 11:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/search" method="get">
    <h4>검색할 부서 번호를 입력하세요</h4>
    <input type="text" name="deptno" required>
    <input type="submit" value="전송">
</form>
</body>
</html>
