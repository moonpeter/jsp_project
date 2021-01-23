<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/22
  Time: 10:32 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="border: solid 1px black">
    <caption>가입정보</caption>
    <tbody>
    <tr>
        <th>아이디</th>
        <td><%=request.getAttribute("id")%>
        </td>
    </tr>
    <tr>
        <th>비밀번호</th>
        <td><%=request.getAttribute("passwd")%>
        </td>
    </tr>
    <tr>
        <th>주민번호</th>
        <td><%=request.getAttribute("jumin")%>
        </td>
    </tr>
    <tr>
        <th>이메일</th>
        <td><%=request.getAttribute("email")%>
        </td>
    </tr>
    <tr>
        <th>성별</th>
        <td><%=request.getAttribute("gender")%>
        </td>
    </tr>
    <tr>
        <th>취미</th>
        <td><%=request.getAttribute("hobby")%>
        </td>
    </tr>
    <tr>
        <th>우편번호</th>
        <td><%=request.getAttribute("post")%>
        </td>
    </tr>
    <tr>
        <th>주소</th>
        <td><%=request.getAttribute("address")%>
        </td>
    </tr>
    <tr>
        <th>자기소개</th>
        <td><%=request.getAttribute("intro")%>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
