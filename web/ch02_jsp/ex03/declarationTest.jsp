<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 4:42 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%=getStr() %></h1>
<%!
    private String getStr() {
        str += "테스트입니다.";
        return str;
    }
    private String str= "선언문 ";
%>
</body>
</html>
