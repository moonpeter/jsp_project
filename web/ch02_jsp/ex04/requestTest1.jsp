<%--
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
<table class="table">
    <tr>
        <td>이름</td>
        <td><%= request.getParameter("name")%>
        </td>
    </tr>
    <tr>
        <td>성별</td>
        <td>
            <% if (request.getParameter("gender").equals("male")) { %>
            남자
            <% } else { %> 여자
            <% } %>
        </td>
    </tr>
    <tr>
        <td>취미</td>
        <td>
            <% String[] hobby = request.getParameterValues("hobby");
                for (int i = 0; i < hobby.length; i++) {
            %>
            <%= hobby[i] %> &nbsp;&nbsp;
            <% } %>
        </td>
    </tr>
</table>

</body>
</html>