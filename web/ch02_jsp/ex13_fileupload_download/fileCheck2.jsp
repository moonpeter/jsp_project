<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 2:17 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        img {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String subject=request.getParameter("subject");
    String systemName1=request.getParameter("systemName1");
    systemName1 = java.net.URLEncoder.encode(systemName1);

    String systemName2=request.getParameter("systemName2");
    systemName2 = java.net.URLEncoder.encode(systemName2);

    String origfileName1=request.getParameter("origfileName1");
    String origfileName2=request.getParameter("origfileName2");
    String uploadPath=request.getParameter("uploadPath");

%>
<div class="container">
<table class="table table-bordered table-striped">
    <tr>
        <th>작성자</th>
        <td><%=name%></td>
    </tr>
    <tr>
        <th>제목</th>
        <td><%=subject%></td>
    </tr>
    <tr>
        <th>파일명1</th>
        <td><a href="file_down2.jsp?file_name=<%=systemName1%>&original=<%=origfileName1%>">
            <%=origfileName1%></a>
            <img src='<%= request.getContextPath() + "/upload/" + systemName1%>' alt="">
        </td>
    </tr>
    <tr>
        <th>파일명2</th>
        <td><a href="file_down2.jsp?file_name=<%=systemName2%>&original=<%=origfileName2%>">
            <%=origfileName2%></a>
            <img src='<%= request.getContextPath() + "/upload/" + systemName2%>' alt="">
        </td>
    </tr>
</table>
</div>
</body>
</html>
