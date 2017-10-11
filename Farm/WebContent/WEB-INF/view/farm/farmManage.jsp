<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<link href="/resource/css/farmManage.css" rel="stylesheet">
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
					title="myInfo"><a class="nav-link" href="ownerInfo.farm"> <i
						class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">내
							정보</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="FarmManage"><a class="nav-link" href="farmManage.farm"> <i
						class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">농장관리</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Tables"><a class="nav-link" href="distributionManage.farm"> <i
						class="fa fa-fw fa-table"></i> <span class="nav-link-text">분양관리</span>
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
				<div class="col-12">
				
				<form action="goAddFarm.farm">
				<input type="hidden" value="${ownerId }" name="ownerId" id="ownerId">
					<button  class="snip1434" style="margin-left: 87%">
						농장추가<i class="ion-stats-bars"></i>
					</button>
				</form>
										
					<c:choose>
						<c:when test="${farmList == null}">
							<div>등록된 농장이 없습니다.</div>
						</c:when>
						<c:otherwise>
							<c:forEach items="${farmList }" var="fl">
								<a class="list-group" href="farmRegion.farm?farmNum=${fl.farmNum}">
									<div class="list-group-item clearfix">
										<div class="profile-teaser-left">
											<div class="profile-img">
												<img
													src="/upload/${fl.farmPhotofake}" />
											</div>
										</div>
										<div class="profile-teaser-main">
											<h2 class="profile-name">${fl.farmName}</h2>
											<div class="profile-info">
												<div class="info">
													<span class="">주소: </span> ${fl.farmAddr}
												</div>
											</div>
											<div class="profile-info">
												<div class="info">
													<span class="">농장연락처: </span> ${fl.farmPhone}
												</div>
											</div>
										</div>
									</div>
								</a>
							</c:forEach>
						</c:otherwise>
					</c:choose>


				</div>
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
	</div>
</body>

</html>