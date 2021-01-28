<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 12:40 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
    String uploadPath = application.getRealPath("upload");
    out.print("upload 경로 : " + uploadPath);

    int size = 10*1024*1024;
    String name = "";
    String subject = "";
    String systemName1 = "";
    String systemName2 = "";
    String origfileName1= "";
    String origfileName2="";

    try {
        MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());

        name = multi.getParameter("name");
        subject = multi.getParameter("subject");

        systemName1 = multi.getFilesystemName("fileName1");
        origfileName1 = multi.getOriginalFileName("fileName1");

        systemName2 = multi.getFilesystemName("fileName2");
        origfileName2 = multi.getOriginalFileName("fileName2");

    } catch (Exception e) {
        e.printStackTrace();
        out.print("에러 입니다.");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="fileCheck2.jsp" name="filecheck" method="post">
    <input type="hidden" name="name" value="<%=name%>">
    <input type="hidden" name="subject" value="<%=subject%>">

    <input type="hidden" name="systemName1" value="<%=systemName1%>">
    <input type="hidden" name="systemName2" value="<%=systemName2%>">

    <input type="hidden" name="origfileName1" value="<%=origfileName1%>">
    <input type="hidden" name="origfileName2" value="<%=origfileName2%>">

    <input type="hidden" name="uploadPath" value="<%=uploadPath%>">
    <input type="submit" value="업로드 확인 및 다운로드 페이지 이동">

</form>
</body>
</html>
