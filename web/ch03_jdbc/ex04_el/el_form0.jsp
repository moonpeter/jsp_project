<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 4:46 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("id", "honggildong2");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <form action="el_result0.jsp" method="post">
        <h3>El 예제</h3>
        <table>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" value="홍길동" class="form-control"></td>
            </tr>
            <tr>
                <td>취미</td>
                <td>
                    <input type="checkbox" name="hobby" id="hobby1" value="독서">독서
                    <input type="checkbox" name="hobby" id="hobby2" value="놀기">놀기
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="전송"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
