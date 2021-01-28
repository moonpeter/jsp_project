<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 9:51 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String storedID = application.getInitParameter("id");
    String storedPW = application.getInitParameter("pass");

    String inputID = request.getParameter("id");
    String inputPW = request.getParameter("pass");

    if (inputID.equals(storedID) && inputPW.equals(storedPW)) {
        session.setAttribute("id", inputID);
%>
<script>
    var id = "<%=inputID%>" + "님 환영합니다.";
    alert(id);
</script>
로그인에 성공했습니다.
<br><br>
<a href="loginCheck.jsp">로그인 체크</a>
<%
    String IDStore = request.getParameter("remember");
    Cookie cookie = new Cookie("id", request.getParameter("id"));

    if(IDStore != null && IDStore.equals("store")) {
        cookie.setMaxAge(2*60);
        response.addCookie(cookie);
        out.println("<a href='login.jsp'>로그인 화면 다시 보기</a>");
    } else {
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }
    } else if (inputID.equals(storedID)) {
    }
%>

</body>
</html>
