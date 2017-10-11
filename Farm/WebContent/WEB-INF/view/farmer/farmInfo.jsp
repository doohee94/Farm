<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- 다음 지도 api -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67813a71bdca38b8913e2c5e908efdb7&libraries=services,clusterer,drawing"></script>
  
  
  <!-- Bootstrap core CSS-->
  <link href="/resource/farmer/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="/resource/farmer/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="/resource/farmer/css/sb-admin.css" rel="stylesheet">
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
        <li class="breadcrumb-item">
          <a href="farmInfo.jsp">내농장</a>
        </li>
        <li class="breadcrumb-item active">농장정보</li>
      </ol>
      <div class="row">
        <div class="col-12">
         
          <!--  내용 -->
     <c:choose>
    <c:when test="${not empty farmrentDTO}">     
	       <div class="right_side">
	       <div class="card-body"> 
	       <!--  지도 -->
	       	 <div class="form-row">
	       	 	  <div class="col-md-6">
	         <div class="form-group" id="map" style="height:400px;"></div>
	         </div>
	      <div class="col-md-6">    
	       
	          <div class="form-group">
	            <div class="form-group">
	              <div class="col-md-6">
	                <label for="exampleInputName">농장명</label>
	                <input class="form-control" value="${farmDTO.farmName}" id="farm_name" type="text" aria-describedby="nameHelp" readonly="readonly">
	              </div>
	            </div>
	          </div>
	          <div class="form-group">
	           <div class="col-md-6">
	            <label for="exampleInputEmail1">주소</label>
	            <input class="form-control" value="${farmDTO.farmAddr}" id="farm_addr" type="text"  readonly="readonly">
	          </div>
	          </div>
	          <div class="form-group">
	           <div class="col-md-6">
	            <label for="exampleInputEmail1">농장연락처</label>
	            <input class="form-control" value="${farmDTO.farmPhone}" id="farm_phone" type="text"  readonly="readonly">
	          </div>
	          </div>
	          <div class="form-group">
	           <div class="col-md-6">
	            <label for="exampleInputEmail1">분양종료날짜</label>
	            <input class="form-control" value="${farmrentDTO.rentEnddate}" id="rent_enddate" type="text"  readonly="readonly">
	          </div>
	          </div>
	         </div>
	         </div>
	         
	         </div>
	         </div>
         </c:when>
         <c:otherwise>       		
       		<div class="form-group">
       			<br/><br/><br/><br/><br/>
	           <img src="/resource/farmer/img/no_farm.png"/>
	         </div>
	         <div class="form-group">
	         <div class="col-md-6">
	         	<br/><br/>
       			<a class="btn btn-primary btn-block" href="#">농장찾기</a>      			
	         </div>
	         </div>
	         
       	</c:otherwise>
         </c:choose>
         
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
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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
    
    
    <script type="text/javascript">
    $(function(){
    	
	    	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	        mapOption = {
	            center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	            level: 3 // 지도의 확대 레벨
	        };  
    		//지도생성
			var map = new daum.maps.Map(mapContainer, mapOption); 
    		
    	 	// 주소-좌표 변환 객체를 생성합니다
    	    var geocoder = new daum.maps.services.Geocoder();
    		var addr = $("#farm_addr").val();
    	    // 주소로 좌표를 검색합니다
    	    geocoder.addressSearch(addr, function(result, status) {

    	        // 정상적으로 검색이 완료됐으면 
    	         if (status === daum.maps.services.Status.OK) {

    	            var coords = new daum.maps.LatLng(result[0].y, result[0].x);

    	            // 결과값으로 받은 위치를 마커로 표시합니다
    	            var marker = new daum.maps.Marker({
    	                map: map,
    	                position: coords
    	            });

    	            // 인포윈도우로 장소에 대한 설명을 표시합니다
    	            var infowindow = new daum.maps.InfoWindow({
    	                content: '<div style="width:150px;text-align:center;padding:6px 0;">'+$("#farm_name").val()+'</div>'
    	            });
    	            infowindow.open(map, marker);

    	            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    	            map.setCenter(coords);
    	        } 
    	    });    
    	    
    });//end function
   
    
    </script>
  </div>
</body>

</html>

