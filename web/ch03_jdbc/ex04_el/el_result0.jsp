<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 5:00 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>넘어온 이름 : ${param.name}</p>
<p>넘어온 취미 : ${paramValues.hobby[0]}, ${paramValues.hobby[1]}</p>
<p>session 영역의 속성 id의 값 : ${id}</p>
</body>
</html>
