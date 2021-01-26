<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 4:23 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>영역과 속성 테스트</h2>
<form action="/ch02_jsp/ex07_attribute/attributeTest1.jsp" method="post">
<table>
    <tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
    <tr>
        <td>이름</td>
        <td><input type="text" name="name" required></td>
    </tr>
    <tr>
        <td>아이디</td>
        <td><input type="text" name="id" required></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="전송"></td>
    </tr>
</table>
</form>
</body>
</html>
