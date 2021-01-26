<%@ page import="java.util.Enumeration" %><%--
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
<table>
    <tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
    <tr>
        <td>이름</td>
        <td><%= application.getAttribute("name")%></td>
    </tr>
    <tr>
        <td>아이디</td>
        <td><%= application.getAttribute("id")%></td>
    </tr>
</table>
<br>
<hr>
<br>
<table>
    <tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
    <%
        Enumeration<String> e = session.getAttributeNames();
        while (e.hasMoreElements()) {
            String attributeName = e.nextElement();
            String attributeValue = (String) session.getAttribute(attributeName);
    %>
    <tr>
        <td><%=attributeName%></td>
        <td><%=attributeValue%></td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>
