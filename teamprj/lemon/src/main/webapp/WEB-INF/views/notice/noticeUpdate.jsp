<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항 수정</h1>
	<form action="noticeUpdate.do" id="frm" method="post">
		<table>
		<tr>
		<td>제목: <input type="text" id="notieTitle" name="notieTitle"></td>
		</tr>
		<tr>
		<td><textarea id="noticeSubject" name="noticeSubject" placeholder="변경할 내용을 입력하세요"></textarea></td>
		</tr>
		</table>
		<input type="hidden" name="noticeId" value="noticeId">
		<input type="submit" value="등록">
	</form>
</body>
</html>