<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 3:22 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error/viewErrorMessage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
name 파라미터 값: <%= request.getParameter("name").toUpperCase()%>
</body>
</html>
