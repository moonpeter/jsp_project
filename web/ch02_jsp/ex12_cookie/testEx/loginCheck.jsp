<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 10:00 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String ID = (String) session.getAttribute("id");

    if(ID != null && !ID.equals("")) {
        out.print("ID " + ID + "로 로그인 한 상태입니다.<br><br>");
        out.print("<a href='logout.jsp'>로그아웃</a>");
    } else {
        out.print("로그인 하지 않은 상태입니다.");
    }
%>
</body>
</html>
