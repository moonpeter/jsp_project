<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 9:25 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String code = request.getParameter("code");
%>
<jsp:forward page='<%="viewModule/" + code + ".jsp"%>'></jsp:forward>
</body>
</html>