<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 4:28 오후
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
    application.setAttribute("id", request.getParameter("id"));
    application.setAttribute("name", request.getParameter("name"));
%>
<p>
    <%= application.getAttribute("name") %>님 반갑습니다. <br>
    <%= application.getAttribute("name") %>님의 아이디는 <%= application.getAttribute("id") %>입니다.
</p>

<form action="/ch02_jsp/ex07_attribute/attributeTest2.jsp" method="post">
<table>
    <tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
    <tr>
        <td>e-mail 주소</td>
        <td><input type="email" name="email" required></td>
    </tr>
    <tr>
        <td>집 주소</td>
        <td><input type="text" name="address" required></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><input type="text" name="tel" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="전송"></td>
    </tr>
</table>
</form>
</body>
</html>
