<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>famerMyinfo</title>
<!-- Bootstrap core CSS-->
<link href="/resource/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="/resource/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="/resource/css/sb-admin.css" rel="stylesheet">
<link href="/resource/css/farmRegion.css" rel="stylesheet">

<!-- 팝업관련 css -->
<link rel="stylesheet" type="text/css"
	href="/resource/css/alopex-ui-default.css" />
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="ownerInfo.farm">농장주님 마이페이지</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="myInfo"><a class="nav-link" href="ownerInfo.farm">
						<i class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">내
							정보</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="FarmManage"><a class="nav-link" href="farmManage.farm">
						<i class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">농장관리</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Tables"><a class="nav-link"
					href="distributionManage.farm"> <i class="fa fa-fw fa-table"></i>
						<span class="nav-link-text">분양관리</span>
				</a></li>

			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>

		</div>
	</nav>


	<div class="content-wrapper">

		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">농장주</a></li>
				<li class="breadcrumb-item active">메인</li>
			</ol>
			<div class="row">

				<h1>분양관리</h1>
				<table class="table table-striped custab" style="margin: 2%">
					<thead>
						<tr>
							<th>No</th>
							<th>신청농장</th>
							<th>신청구역</th>
							<th>신청자</th>
							<th>분양기간</th>
							<th>신청일</th>
							<th>승인여부</th>
						</tr>
					</thead>

					<c:choose>
						<c:when test="${rentList == null}">
							<tr>
								<td>분양신청이 없습니다</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${rentList }" var="rl">
								<tr>
									<td>${rl.rentNum }</td>
									<td>${rl.farmName }</td>
									<td>${rl.regionName }</td>
									<td>${rl.userId }</td>
									<td>${rl.rentStartdate } 부터 ${rl.rentEnddate } 까지</td>
									<td>${rl.rentDate }</td>
									<td><a class='btn btn-info btn-xs' href="#"><span
											class="glyphicon glyphicon-edit"></span> 승인</a> <a href="#"
										class="btn btn-danger btn-xs reject"><span
											class="glyphicon glyphicon-remove"></span> 거절</a></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>

				</table>


			</div>

		</div>

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
		<!-- Logout Modal-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>


		<!-- Bootstrap core JavaScript-->
		<script src="/resource/vendor/jquery/jquery.min.js"></script>
		<script src="/resource/vendor/popper/popper.min.js"></script>
		<script src="/resource/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="/resource/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="/resource/js/sb-admin.min.js"></script>

		<!-- 팝업 관련 파일 -->
		<script type="text/javascript" src="/resource/js/alopex-ui.min.js"></script>

		<script type="text/javascript">
			$(function() {
				//개인일정 추가 버튼 누르면 팝업 띄우고 결과값 리스트에 저장하는 함수
				$(".reject").click(function() {
					$a.popup({
						url : "rejectPopup.jsp",
						ifram : true,
						width : 600,
						height : 250,
						callback : function(data) { // $a.close(data) API 사용 시 동작하는 콜백
							if (data !== null) { // 팝업 우측 상단 x 버튼으로 닫을 경우, $a.close(data); 와 같이 data를 넘겨주지 않으므로 data === null이다.
								alert(data);
							}
						},
						alias : "flag1",
						xButtonClickCallback : function(el) {
							if (el.alias === "flag1") {// 우측 상단 X 버튼으로 닫을 경우 동작하는 콜백
								if (confirm("저장되지 않은 데이터가 있습니다. 창을 닫으시겠습니까?")) {
									return true; // true를 return 시, 내부적으로 close 동작이 자동 수행됩니다.
								} else {
									return false; // false를 return 시, 내부적으로 close하는 동작을 제어 합니다.
								}
							}
						}
					});
				});

				//addTravelPopup에서 입력받은 값을 원래화면(step3.jsp)에 전달
				$a.page(function() {
					this.init = function(id, param) {
						$('#ok2').click(function() { // close 버튼을 누르면
							var resion = $("#resion").val();
							$a.close(resion); // 데이터를 팝업을 띄운 윈도우의 callback에 전달 
						});
					}
				});
			});
		</script>

	</div>
</body>

</html>