<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div><h1>마이페이지</h1></div>
		<div>
			<div>
				<a href="#">${name}</a>&nbsp;&nbsp;
				<a href="#">${grade}</a>&nbsp;&nbsp;
				<a href="memberUpdateForm.do">회원정보수정</a>
			</div>
			<div><a href="dealList">거래내역</a></div>
			<div><a href="#">찜목록</a></div>
			<div><a href="#">최근본상품</a></div>	
		</div>
	</div>
</body>
</html>