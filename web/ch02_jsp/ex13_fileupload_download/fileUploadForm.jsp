<%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/01/27
  Time: 12:23 오후
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
    <form action="fileUpload2.jsp" method="post" enctype="multipart/form-data">

        <p class="h4 md-4 text-center">파일 업로드 폼</p>

        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text md-1">작성자</span>
            </div>
            <input type="text" class="form-control" name="name">
        </div>

        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text ">제  목</span>
            </div>
            <input type="text" class="form-control" name="subject">
        </div>

        <div class="form-group">
            <input type="file" class="form-control-file border" name="fileName1">
        </div>

        <div class="form-group">
            <input type="file" class="form-control-file border" name="fileName2">
        </div>

        <button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
    </form>
</div>
</body>
</html>
