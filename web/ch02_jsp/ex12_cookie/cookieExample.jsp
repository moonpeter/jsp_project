<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/26
  Time: 5:16 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String language = "korea";
    String cookie = request.getHeader("Cookie");

    if(cookie !=null) {
        Cookie cookies[] = request.getCookies();

        for(int i=0; i<cookies.length; i++){
            if(cookies[i].getName().equals("language1")) {
                language = cookies[i].getValue();
            }
        }
        out.println(language);
    }
%>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function () {
            var id = "#<%=language%>";
            $(id).prop('checked', true);
        })
    </script>
</head>
<body>
    <%
        if (language.equals("korea")) {
    %>
    <h3>안녕하세요. 이것은 쿠키 예제 입니다.</h3>
    <%
        } else {
    %>
    <h3>Hello. This is Cookie example.</h3>
    <%
        }
    %>
    <form action="cookieExample2.jsp" method="post">
        <fieldset>
            <input type="radio" name="language" value="korea" id="korea">한국어 페이지 보기
            <input type="radio" name="language" value="english" id="english">영어 페이지 보기
            <input type="submit" value="설정">
        </fieldset>
    </form>
</body>
</html>
