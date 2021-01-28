<%@page import="ex14_mail.Myinfo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>자바 메일 보내기 폼</title>
<style>
  table{margin:0 auto;text-align:center}
  td{height:30px}
  td:nth-child(2n){width:300px ;  background:green }
  td:nth-child(2n+1){width:150px;background:lightyellow}
  input[type=text]{height:30px;width:100%} 
  textarea{width:100%}
</style>
</head>
<body>
<form action="mailSend.jsp" method="post">
<table>
	<tr>
	     <td colspan=2>자바메일 보내기</td>
	</tr>
	<tr>
	    <td>보내는 사람 메일 </td>
	    <td><input type="text" name="sender" value="<%=Myinfo.naverid%>@naver.com" ></td>
	</tr>
	<tr>
	    <td>받는 사람   메일 </td>
	    <td><input type="text" name="receiver"></td>
	</tr>
	<tr>
	    <td>제목 </td>
	    <td><input type="text" name="subject"></td>
	</tr>
	<tr>
		<td>내용 </td>
		<td><textarea name="content" cols=40 rows=10></textarea></td>
	</tr>
	<tr>
	   <td colspan=2 ><input type="submit" value="보내기"></td>
	 </tr>
</table>
</form>
</body>
</html>
