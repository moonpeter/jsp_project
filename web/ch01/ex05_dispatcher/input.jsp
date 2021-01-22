<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/21
  Time: 12:11 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dispatcher 방식으로 이동</title>
</head>
<body>
<form action="/DispatcherServlet" method="get">
    <b>좋아하는 음식은 무엇인가요?</b><br>
    <input type="text" name="food">
    <input type="submit" value="전송">
</form>
</body>
</html>
