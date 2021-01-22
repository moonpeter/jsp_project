<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/21
  Time: 12:25 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {background: pink;}
        div {color: red;}
        p {color: green;}
    </style>
</head>
<body>
<div>
    request 파라미터 값: <%=request.getAttribute("food")%><br>
    request 파라미터 값: <%=request.getAttribute("name")%>

</div>
<p>
    요청주소 <%=request.getRequestURL()%>
</p>
</body>
</html>
