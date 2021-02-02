<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/02
  Time: 10:03 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("food", "");
%>
<%=pageContext.getAttribute("food")%>

<h3>\${pageScope.food}=${pageScope.food}</h3>
<h3>\${food}=${food}</h3>

<h3>\${empty food}=${empty food}</h3>
<h3>\${empty food2}=${empty food2}</h3>

<h3>\${null==food}=${null == food}</h3>
<h3>\${null==food2}=${null == food2}</h3>

<h3>\${param.name} = ${param.name}</h3>

</body>
</html>
