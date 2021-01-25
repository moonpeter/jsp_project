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
    <h1>헤더정보 예제</h1>
    <table class="table table-striped">
        <tr>
            <td>헤더이름</td>
            <td>헤더값</td>
        </tr>
        <%
            Enumeration<String> e = request.getHeaderNames();
            while (e.hasMoreElements()) {
                String headerName = e.nextElement();
        %>
        <tr>
            <td><%=headerName%></td>
            <td>
                <%=request.getHeader(headerName)%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>

</body>
</html>