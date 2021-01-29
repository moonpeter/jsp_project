<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jdbc.ex02_map.Dept" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/28
  Time: 4:09 오후
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
</head>
<body>
<div class="container">
<%
    HashMap<Integer, Object> list = (HashMap<Integer, Object>) request.getAttribute("list");
    if(list != null) {
%>
<table class="table">
    <tr>
        <td>DEPTNO</td>
        <td>DNAME</td>
        <td>LOC</td>
    </tr>
    <tbody>
    <%
        Set<Integer> keys = list.keySet();
        for (int key : keys) {
            Dept dept = (Dept) list.get(key);
    %>
    <tr>
        <td><%=dept.getDeptno()%></td>
        <td><%=dept.getDname()%></td>
        <td><%=dept.getLoc()%></td>
    </tr>
    </tbody>
    <%
        }
    %>
</table>
    <%
        } else {
            out.println("<h4>조회된 데이터가 없습니다.</h4>");
        }
    %>
</div>
</body>
</html>
