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
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="introBean" class="javabean.IntroTest" scope="page"/>
    <jsp:setProperty name="introBean" property="*"/>
    <tbody>
    <tr>
        <th>아이디</th>
        <td>
            <jsp:getProperty name="introBean" property="id"/>
        </td>
    </tr>
    <tr>
        <th>비밀번호</th>
        <td>
            <jsp:getProperty name="introBean" property="pass"/>
        </td>
    </tr>
    <tr>
        <th>주민번호</th>
        <td><jsp:getProperty name="introBean" property="jumin1"/>-<jsp:getProperty name="introBean" property="jumin2"/>
        </td>
    </tr>
    <tr>
        <th>이메일</th>
        <td><jsp:getProperty name="introBean" property="email"/>@<jsp:getProperty name="introBean" property="domain"/>
        </td>
    </tr>
    <tr>
        <th>성별</th>
        <td>
            <%=introBean.getGender()%>
        </td>
    </tr>
    <tr>
        <th>취미</th>
        <td>
            <%=introBean.getHobbys()%>
        </td>
    </tr>
    <tr>
        <th>우편번호</th>
        <td>
            <jsp:getProperty name="introBean" property="post1"/>
        </td>
    </tr>
    <tr>
        <th>주소</th>
        <td>
            <jsp:getProperty name="introBean" property="address"/>
        </td>
    </tr>
    <tr>
        <th>자기소개</th>
        <td>
            <jsp:getProperty name="introBean" property="intro"/>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
