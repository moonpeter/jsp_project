<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 4:47 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<%
    request.setCharacterEncoding("utf-8");
    session.setAttribute("email", request.getParameter("email"));
    session.setAttribute("address", request.getParameter("address"));
    session.setAttribute("tel", request.getParameter("tel"));

%>
<p><%= application.getAttribute("name") %>님의 정보가 모두 저장되었습니다.</p>
<a href="/ch02_jsp/ex07_attribute/attributeTest3.jsp">확인하러 가기</a>
</body>
</html>
