<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 9:19 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>세션 설정 및 메서드 사용</h1>
    <table class="table table-striped">
        <tr>
            <td>쿠키정보</td>
            <%
                Cookie[] cookie = request.getCookies();
                if (cookie == null) {
            %>
            <td>쿠키가 존재하지 않습니다</td>
            <%
            } else {
                for (int i = 0; i < cookie.length; i++) {
            %>
            <td>
                <%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)
                &nbsp;&nbsp;
            </td>
            <%
                    }
                }
            %>
        </tr>

        <tr>
            <td>세션 ID</td>
            <td><%=session.getId()%></td>
        </tr>
        <tr>
            <td>세션 유효 시간</td>
            <td><%=session.getMaxInactiveInterval()/60 + "분" %></td>
        </tr>
        <tr>
            <td>세션 설정</td>
            <td><%session.setAttribute("id", "hong");%></td>
        </tr>
        <tr>
            <td>세션 설정값 가져오기</td>
            <td><%=session.getAttribute("id")%></td>
        </tr>

    </table>
</div>

</body>
</html>