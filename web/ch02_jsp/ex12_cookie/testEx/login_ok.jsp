<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/25
  Time: 2:11 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>로그인 완료</h1>
<%
    if( !request.getParameter("id").equals(application.getInitParameter("id"))) {
        out.print("<script>alert('아이디가 틀렸습니다.')" + "\n" +
                "location.href = 'login.jsp'" +
                "</script>");
    } else if ( !request.getParameter("pass").equals(application.getInitParameter("password"))) {
        out.print("<script>alert('비밀번호가 틀렸습니다.')" + "\n" +
                "location.href = 'login.jsp'" +
                "</script>");
    } else {
        out.print("<script>location.href = 'loginprocess.jsp'</script>");
    }
%>
<%
    String id = "";
    String cookie = request.getHeader("Cookie");

    if(cookie !=null) {
        Cookie cookies[] = request.getCookies();

        for(int i=0; i<cookies.length; i++){
            if(cookies[i].getName().equals("language1")) {
                id = cookies[i].getValue();
            }
        }
        out.println(id);
    }
%>

</body>
</html>
