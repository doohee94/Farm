<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/test/member.farm" method="get">
		아이디<input  id="user_id" type="text" name="user_id">
		이름<input  id="user_name" type="text" name="user_name">
		이메일<input  id="user_email" type="text" name="user_email">
		폰<input  id="user_phone" type="text" name="user_phone">
		
		<button type="submit">전송</button>
		
	</form>
	
</body>
</html>