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
	<form id="frm"  action="memberSelect.do" method="post">
		<div align="center">
			<h3>회원 조회</h3>
			<input type="text" id="memberId" name="memberId" placeholder="Search..">
			<input type="submit" value="검색">
		</div>
	</form>
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
				<c:forEach items="${members }" var="n">
					<tr>
						<td>${n.memberId }</td>
						<td>${n.memberName }</td>
						<td>${n.memberTel }</td>
						<td>${n.memberGrade }</td>
						<td>${n.memberCount }</td>
						<td><button type="button" onclick="memberDelete.do">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>