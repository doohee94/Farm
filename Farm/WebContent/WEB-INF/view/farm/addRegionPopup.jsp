<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 구역추가 시 띄우는 팝업화면입니다 -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>분양할 구역을 추가하세요</title>

<!-- jquery, jquery mobile 관련 cdn -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 팝업 관련 파일 -->
<script type="text/javascript"  src="/resource/js/alopex-ui.min.js"></script>
</head>
<body>
<div align="center">
구역이름 : <input type="text" width="50px" id="regionName"><br>
면적 : <input type="text" width="50px" id="regionSize"><br>
<input type="button" value="확인" id="ok"/>
</div>
</body>
</html>