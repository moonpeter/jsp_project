<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 11:25 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
%>
<h3>로그아웃 되었습니다.</h3>
<a href="login.jsp">로그인 페이지로 이동</a>
</body>
</html>
