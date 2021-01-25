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
    <table class="table table-striped">
        <tr>
            <td>Servlet API스펙의 버전</td>
            <td><%=application.getMajorVersion()%>.
                <%=application.getMajorVersion()%></td>
        </tr>
        <tr>
            <td>컨테이너 이름과 버전</td>
            <td><%=application.getServerInfo()%></td>
        </tr>
        <tr>
            <td>웹 어플리케이션의 context경로</td>
            <td><%=application.getContextPath()%></td>
        </tr>
        <tr>
            <td>웹 어플리케이션의 실제 파일시스템 경로</td>
            <td><%=application.getRealPath("/")%></td>
        </tr>
    </table>
</body>
</html>