<%@ page import="java.util.ArrayList" %>
<%@ page import="jdbc.ex03_db.Template_join" %><%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 10:27 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <%
        ArrayList<Template_join> list = (ArrayList<Template_join>) request.getAttribute("list");
        if(list != null) {
    %>
    <table class="table">
        <thead>
        <tr>
            <th>아이디</th>
            <th>성별</th>
            <th>취미</th>
            <th>주소</th>
            <th>자기소개</th>
            <th>가입일</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Template_join temp : list) {
        %>
        <tr>
            <td><%=temp.getId()%></td>
            <td><%=temp.getGenderView()%></td>
            <td><%=temp.getHobby()%></td>
            <td><%=temp.getAddress()%></td>
            <td><%=temp.getIntro()%></td>
            <td><%=temp.getRegister_date()%></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%
        } else {
            out.println("<h4>조회된 데이터가 없습니다.</h4>");
        }
    %>
</div>
</body>
</html>
