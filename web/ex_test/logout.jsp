<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/21
  Time: 4:14 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><%= session.getAttribute("id")%>님 로그아웃 되셨습니다.</p>
<%= session.removeAttribute("id")%>
<a href="/ex_test/login.jsp">로그인</a>
</body>
</html>
