<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin - Start Bootstrap Template</title>
<!-- Bootstrap core CSS-->
<link href="/resource/farmer/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="/resource/farmer/vendor/font-awesome/css/font-awesome.min.css"rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="/resource/farmer/css/sb-admin.css" rel="stylesheet">
<link href="/resource/farmer/css/main_grap.css" rel="stylesheet">
<style type="text/css">

@import url("https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900");
@import url("https://cdn.linearicons.com/free/1.0.0/icon-font.min.css");
body {
  font-family: 'Montserrat', sans-serif;
  background: #112233;
}

.weather-card {
  margin: 60px auto;
  height: 740px;
  width: 450px;
  background: #fff;
  box-shadow: 0 1px 38px rgba(0, 0, 0, 0.15), 0 5px 12px rgba(0, 0, 0, 0.25);
  overflow: hidden;
}
.weather-card .top {
  position: relative;
  height: 570px;
  width: 100%;
  overflow: hidden;
  background: url("/resource/farmer/img/weather.jpg") no-repeat;
  background-size: cover;
  background-position: center center;
  text-align: center;
}
.weather-card .top .wrapper {
  padding: 30px;
  position: relative;
  z-index: 1;
}
.weather-card .top .wrapper .mynav {
  height: 20px;
}
.weather-card .top .wrapper .mynav .lnr {
  color: #fff;
  font-size: 20px;
}
.weather-card .top .wrapper .mynav .lnr-chevron-left {
  display: inline-block;
  float: left;
}
.weather-card .top .wrapper .mynav .lnr-cog {
  display: inline-block;
  float: right;
}
.weather-card .top .wrapper .heading {
  margin-top: 20px;
  font-size: 35px;
  font-weight: 400;
  color: #fff;
}
.weather-card .top .wrapper .location {
  margin-top: 20px;
  font-size: 21px;
  font-weight: 400;
  color: #fff;
}
.weather-card .top .wrapper .temp {
  margin-top: 20px;
}
.weather-card .top .wrapper .temp a {
  text-decoration: none;
  color: #fff;
}
.weather-card .top .wrapper .temp a .temp-type {
  font-size: 85px;
}
.weather-card .top .wrapper .temp .temp-value {
  display: inline-block;
  font-size: 85px;
  font-weight: 600;
  color: #fff;
}
.weather-card .top .wrapper .temp .deg {
  display: inline-block;
  font-size: 35px;
  font-weight: 600;
  color: #fff;
  vertical-align: top;
  margin-top: 10px;
}
.weather-card .top:after {
  content: "";
  height: 100%;
  width: 100%;
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.5);
}
.weather-card .bottom {
  padding: 0 30px;
  background: #fff;
}
.weather-card .bottom .wrapper .forecast {
  overflow: hidden;
  margin: 0;
  font-size: 0;
  padding: 0;
  padding-top: 20px;
  max-height: 155px;
}
.weather-card .bottom .wrapper .forecast a {
  text-decoration: none;
  color: #000;
}
.weather-card .bottom .wrapper .forecast .go-up {
  text-align: center;
  display: block;
  font-size: 25px;
  margin-bottom: 10px;
}
.weather-card .bottom .wrapper .forecast li {
  display: block;
  font-size: 25px;
  font-weight: 400;
  color: rgba(0, 0, 0, 0.25);
  line-height: 1em;
  margin-bottom: 30px;
}
.weather-card .bottom .wrapper .forecast li .date {
  display: inline-block;
}
.weather-card .bottom .wrapper .forecast li .condition {
  display: inline-block;
  vertical-align: middle;
  float: right;
  font-size: 25px;
}
.weather-card .bottom .wrapper .forecast li .condition .temp {
  display: inline-block;
  vertical-align: top;
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  font-weight: 400;
  padding-top: 2px;
}
.weather-card .bottom .wrapper .forecast li .condition .temp .deg {
  display: inline-block;
  font-size: 10px;
  font-weight: 600;
  margin-left: 3px;
  vertical-align: top;
}
.weather-card .bottom .wrapper .forecast li .condition .temp .temp-type {
  font-size: 20px;
}
.weather-card .bottom .wrapper .forecast li.active {
  color: rgba(0, 0, 0, 0.8);
}
.weather-card.rain .top {
  background: url("/resource/farmer/img/weather2.jpg") no-repeat;
  background-size: cover;
  background-position: center center;
}





</style>
</head>


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="/farmer/farmer_main.farm">농사꾼님의 농장관리</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Dashboard"><a class="nav-link" href="/farmer/myInfo.farm"> <i
						class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">내정보</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Charts"><a class="nav-link" href="/farmer/applyReady.farm">
						<i class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">승인대기농장</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Components"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseComponents" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-wrench"></i> <span class="nav-link-text">내농장</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseComponents">
						<li><a href="/farmer/farmInfo.farm">농장정보</a></li>
						<li><a href="/farmer/farmDiary.farm">농장일기</a></li>
					</ul></li>
				
			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">

				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Link"><a class="nav-link" href="/farm/main.farm">
						<i class="fa fa-fw fa-link"></i> <span class="nav-link-text">메인가기</span>
				</a></li>
				<li class="nav-item">
					<form class="form-inline my-2 my-lg-0 mr-lg-2">
						<div class="input-group">
							<input class="form-control" type="text"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</li>
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Logout
				</a></li>
			</ul>
		</div>
	</nav>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/farmer/farmer_main.farm">농사꾼님의 농장</a>
				</li>
			</ol>
			<div class="container">
	<div class="row">
		<div class="col">
			<div class="weather-card one">
				<div class="top">
					<div class="wrapper">
						<h1 class="heading">Clear night</h1>
						<h3 class="location">Dhaka, Bangladesh</h3>
						<p class="temp">
							<span class="temp-value">100</span>
							<span class="deg">0</span>
							<a href="javascript:;"><span class="temp-type">C</span></a>
						</p>
					</div>
				</div>
				<div class="bottom">
					<div class="wrapper">
						<ul class="forecast">
				
							<li class="active">
								<span class="date">Yesterday</span>
								<span class="lnr lnr-sun condition">
									<span class="temp">23<span class="deg">0</span><span class="temp-type">C</span></span>
								</span>
							</li>
							<li>
								<span class="date">Tomorrow</span>
								<span class="lnr lnr-cloud condition">
									<span class="temp">21<span class="deg">0</span><span class="temp-type">C</span></span>
								</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="weather-card rain">
				<div class="top">
					<div class="wrapper">
						<h1 class="heading">Rainy day</h1>
						<h3 class="location">Sylhet, Bangladesh</h3>
						<p class="temp">
							<span class="temp-value">16</span>
							<span class="deg">0</span>
							<a href="javascript:;"><span class="temp-type">C</span></a>
						</p>
					</div>
				</div>
				<div class="bottom">
					<div class="wrapper">
						<ul class="forecast">
							<a href="javascript:;"><span class="lnr lnr-chevron-up go-up"></span></a>
							<li class="active">
								<span class="date">Yesterday</span>
								<span class="lnr lnr-sun condition">
									<span class="temp">22<span class="deg">0</span><span class="temp-type">C</span></span>
								</span>
							</li>
							<li>
								<span class="date">Tomorrow</span>
								<span class="lnr lnr-cloud condition">
									<span class="temp">18<span class="deg">0</span><span class="temp-type">C</span></span>
								</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<footer class="sticky-footer">
			<div class="container">
				<div class="text-center">
					<small>Copyright © Your Website 2017</small>
				</div>
			</div>
		</footer>
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
		<script src="/resource/farmer/vendor/jquery/jquery.min.js"></script>
		<script src="/resource/farmer/vendor/popper/popper.min.js"></script>
		<script src="/resource/farmer/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="/resource/farmer/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="/resource/farmer/js/sb-admin.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script src="/resource/farmer/vendor/chart.js/Chart.min.js"></script>
		
	</div>
</body>

</html>

