<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/28
  Time: 11:18 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ex14_mail.Myinfo" %>
<html>
<head>
    <title>Title</title>
    <%=Myinfo.naverid%>
</head>
<body>
<form action="mailSend_2.jsp" method="post">
    <table>
        <tr>
            <td colspan="2">자바메일 보내기</td>
        </tr>
        <tr>
            <td>보내는 사람 메일</td>
            <td><input type="text" name="sender" value="<%=Myinfo.naverid%>@naver.com"></td>
        </tr>
        <tr>
            <td>받는 사람 메일</td>
            <td><input type="text" name="receiver"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="subject"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" id="" cols="40" rows="10"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="보내기"></td>
        </tr>
    </table>
</form>
</body>
</html>
