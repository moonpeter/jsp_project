<%@ page import="jdbc.ex03_db.Template_join" %><%--
  Created by IntelliJ IDEA.
  User: moonpeter
  Date: 2021/02/01
  Time: 11:06 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Template_join temp = (Template_join) request.getAttribute("temp");
%>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ch02_jsp/ex10_intro/intro.css" type="text/css">
    <script>
        $(function (){
            var gender = '<%=temp.getGender()%>';
            $("input[value=" + gender + "]").prop("checked", true);
            $("input:radio").not(":checked").prop("disabled", true);

            var hobbys = '<%=temp.getHobby()%>'.split(',');
            for(var i=0; i<hobbys.length; i++)
                $("input[value=" + hobbys[i] + "]").prop("checked", true);
        })
    </script>
</head>
<body>
<div id="id01">
    <form action="info_update" method="post" name="myform" class="modal-content" id="myform">
        <div class="container">
            <fieldset>
                <legend>정보수정</legend>
                <hr>
                <label for="id"><b>ID</b></label><br>
                <input type="text" placeholder="Enter id" name="id" id="id" readonly value='<%=temp.getId() %>' style="background:#ccc;width:100%">
                <br>
                <label for="pass"><b>Password</b></label><br>
                <input type="password" placeholder="Enter Password" name="pass" id="pass"
                       value='<%=temp.getPassword()%>'>
                <label for="jumin1"><b>주민번호</b></label><br>
                <input type="text" placeholder="주민번호 앞자리" size="6" maxlength="6" name="jumin1" id="jumin1"
                       value="<%=temp.getJumin().substring(0,6)%>">
                <input type="text" placeholder="주민번호 뒷자리" size="7" maxlength="7" name="jumin2" id="jumin2"
                       value="<%=temp.getJumin().substring(7,14)%>">
                <label for="email"><b>E-Mail</b></label><br>
                <input type="text" name="email" id="email" value="<%=temp.getEmail().split("@")[0]%>">@<input
                    type="text" name="domain" id="domain" value="<%=temp.getEmail().split("@")[1]%>">
                <select name=sel id=sel>
                    <option value="">직접입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="daum.net">daum.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="gmail.com">gmail.com</option>
                </select><br>


                <label>성별</label><br>
                <div class="container2">
                    <input type="radio" name="gender" value="m" id="gender1">남자
                    <input type="radio" name="gender" value="f" id="gender2">여자
                    <br>
                </div>

                <label>취미</label><br>
                <div class="container2">
                    <input type="checkbox" name="hobby" id="hobby1" value="공부">공부
                    <input type="checkbox" name="hobby" id="hobby2" value="게임">게임
                    <input type="checkbox" name="hobby" id="hobby3" value="운동">운동
                    <input type="checkbox" name="hobby" id="hobby4" value="등산">등산
                    <input type="checkbox" name="hobby" id="hobby5" value="낚시">낚시
                </div>
                <br>

                <label>우편번호</label><br>
                <input type="text" size="3" maxlength="5" name="post1" id="post1" value="<%=temp.getPost()%>">
                <input type="button" value="우편검색" id="postcode">
                <br>

                <label>주소</label><br>
                <input type="text" size="50" name="address" id="address" value='<%=temp.getAddress()%>'>
                <br>

                <label>자기소개</label><br>
                <textarea name="intro" id="intro" cols="75" rows="10"><%=temp.getIntro()%></textarea>

                <br>
                <div class="clearfix">
                    <button type="reset" value="취소" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn">Update</button>
                </div>
                <a href="templatetest">templatetest.jsp 이동하기</a>
                <a href="script:history.back();">이전페이지로 이동하기</a>
            </fieldset>
        </div>
    </form>
</div>
</body>
</html>
