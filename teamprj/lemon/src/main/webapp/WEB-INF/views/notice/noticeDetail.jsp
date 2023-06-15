<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th><${notice.noticeId }></th>
				<th>${notice.noticeTitle }</th>
				<th>${notice.noticeWdate }</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${notice.noticeSubject }</td>
			</tr>
		</tbody>
	</table>
	
	<c:if test="${grade eq 'A'}">
	<button type="button" onclick="location.href='noticeUpdateForm.do'">
	수정
	</button>
	<button type="button" onclick="location.href='noticeDelete.do'">
	삭제
	</button>
	</c:if>
</body>
</html>