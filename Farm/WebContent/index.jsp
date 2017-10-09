<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="test/test.farm" method="get">
		아이디<input  id="userId" type="text" name="userId">
		이름<input  id="userName" type="text" name="userName">
		이메일<input  id="userEmail" type="text" name="userEmail">
		폰<input  id="userPhone" type="text" name="userPhone">
		
		<button type="submit">전송</button>
		
	</form>
	
	<a href="">농장검색리스트</a>
	<br/><br/><br/><br/>
	도히꺼
	<br/><a href="farm/main.farm">메인으로가기!</a>
	<br/><a href="farmer/farmer_main.farm">농사꾼메인 으로가기!</a>
</body>
</html>