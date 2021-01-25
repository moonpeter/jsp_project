<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 2:35 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp"%>
<h1>template.jsp 파일입니다.</h1>
<p><%=request.getParameter("id")%></p>
<%@ include file="footer.jsp"%>
</body>
</html>
