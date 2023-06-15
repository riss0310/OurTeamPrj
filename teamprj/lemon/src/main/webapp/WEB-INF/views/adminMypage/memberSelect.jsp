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
	<div align="center">
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>연락처</th>
					<th>등급</th>
					<th>경고횟수</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${member.memberId }</td>
						<td>${member.memberName }</td>
						<td>${member.memberTel }</td>
						<td>${member.memberGrade }</td>
						<td>${member.memberCount }</td>
						<td><button type="button" onclick="memberDelete.do">삭제</button></td>
					</tr>
			</tbody>
		</table>
	</div>
</body>
</html>