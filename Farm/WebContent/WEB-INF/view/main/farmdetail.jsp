<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sailor - Bootstrap 3 corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description"
	content="Bootstrap 3 template for corporate business" />
<!-- css -->
<link href="/resource/css2/bootstrap.min.css" rel="stylesheet" />
<link href="/resource/plugins2/flexslider/flexslider.css"
	rel="stylesheet" media="screen" />
<link href="/resource/css2/cubeportfolio.min.css" rel="stylesheet" />
<link href="/resource/css2/style.css" rel="stylesheet" />

<!-- Theme skin -->
<link id="t-colors" href="/resource/skins/default.css" rel="stylesheet" />

<!-- boxed bg -->
<link id="bodybg" href="/resource/bodybg/bg1.css" rel="stylesheet"
	type="text/css" />

<!-- =======================================================
    Theme Name: Sailor
    Theme URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
======================================================= -->

</head>
<body>
<input type="hidden" id="alertMsg" value="${msg }">

	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="top">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<ul class="topleft-info">
								<li><i class="fa fa-phone"></i>010 2050 0927</li>
							</ul>
						</div>
						<div class="col-md-6">
						<div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="text" value="" name="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search" title="Click to start searching"></span>
							</form>
						</div>


						</div>
					</div>
				</div>
			</div>	
			
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="/resource/main/img/dong_logo.png" alt="" width="199" height="52" /></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
<!--                         <li class="dropdown active"> -->
<!-- 							<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Home <i class="fa fa-angle-down"></i></a> -->
<!--                             <ul class="dropdown-menu"> -->
<!--                                 <li><a href="index.html">Home slider 1</a></li> -->
<!--                                 <li><a href="index2.html">Home slider 2</a></li> -->
								
<!--                             </ul>				 -->
						
<!-- 						</li>         -->
						<li><a href="/farm/main.farm">홈</a></li>         
                        <li><a href="farmList.farm">농장찾기</a></li>  
                        <c:choose>
                        	<c:when test="${not empty sessionScope.user_id}">

                        			<c:if test="${sessionScope.user_state == 0}">
                        			<li>
                        				<a href="/farmer/farmer_main.farm">마이페이지</a>
                        			</li>
                        			</c:if>
                        			<c:if test="${sessionScope.user_state == 1}">
                        			<li>
                        				<a href="/farmowner/ownerInfo.farm">마이페이지</a>
                        			</li>
                        			</c:if>
                        			
                        			<li>
                        				<a href="/farm/logout.farm">로그아웃</a>
                        			</li>

                        	</c:when>
                        	<c:otherwise>
                        		<li><a href="/farm/login.farm">로그인</a></li>
                        	</c:otherwise>
                        </c:choose>                   
                        
                    </ul>
                </div>
            </div>
        </div>
	</header>
		<!-- end header -->


		<!-- 지도부분 -->
		<div id="map"
			style="width: 900px; height: 900px; margin-left: 2%; display: inline-block;"></div>
		<!-- 농장 정보 출력 -->
		<div style="display: inline-block; width: 800px; height:800px; margin-right: 2%;">

				<h1>${farmInfo.farmName }</h1>
				
				<hr class="colorgraph">
				주소
				<div class="form-group">
					<input type="text" name="farmAddr" id="farmAddr"
						class="form-control input-lg" tabindex="4"
						value="${farmInfo.farmAddr }">
				</div>
				<br></br>
				농장 연락처
				<div class="form-group">
					<input type="text" name="farmPhone" id="farmPhone"
						class="form-control input-lg" tabindex="3"
						value="${farmInfo.farmPhone }">
				</div>
				<br></br>
				농장 규모
				<div class="form-group">
					<input type="text" name="farmSize" id="farmSize"
						class="form-control input-lg" tabindex="4"
						value="${farmInfo.farmSize }">
				</div>
				<br></br>
				<label style="display: inline-block; font-size: 20px;">임대가능구역</label>
				<div class="form-group">
				<select id="regionSelectBox" style="width: 50%">
				<c:choose>
					<c:when test="${regionInfo == null }">
					<!-- 셀렉트박스@@ -->
						<option >구역이 없습니다.</option>
					</c:when>
					<c:otherwise>
						<c:forEach items="${regionInfo }" var="ri">
							<option value="${ri.regionNum }">${ri.regionName }  임대가격(개월 당): ${ri.regionPrice }</option>
						</c:forEach>
					</c:otherwise>
				</c:choose> 
				</select>
				</div>
				<br></br> 
				소개
				<div class="form-group">
					<input type="text" name="farmInfo" id="farmInfo"
						class="form-control input-lg" tabindex="4"
						value="${farmInfo.farmInfo }">
				</div>
				
				<input type="hidden" id="farmAddr" value="${farmInfo.farmAddr }">
				
				<br></br>
				<form action="goApplyRegion.farm">
				<input type="hidden" value="${farmInfo.farmNum }" name="farmNum" />
				<div class="row">
					<div class="col-xs-12 col-md-6"><input type="submit" value="분양신청" class="btn btn-theme btn-block btn-lg" tabindex="7"></div>
				</div>
				</form>
		</div>





		<footer>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Sailor Theme - All Right Reserved</p>
								<div class="credits">
									<!-- 
                                All the links in the footer should remain intact. 
                                You can delete the links only if you purchased the pro version.
                                Licensing information: https://bootstrapmade.com/license/
                                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Sailor
                            -->
									<a
										href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business
										Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i
										class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i
										class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/resource/js2/jquery.min.js"></script>
	<script src="/resource/js2/modernizr.custom.js"></script>
	<script src="/resource/js2/jquery.easing.1.3.js"></script>
	<script src="/resource/js2/bootstrap.min.js"></script>
	<script src="/resource/plugins2/flexslider/jquery.flexslider-min.js"></script>
	<script src="/resource/plugins2/flexslider/flexslider.config.js"></script>
	<script src="/resource/js2/jquery.appear.js"></script>
	<script src="/resource/js2/stellar.js"></script>
	<script src="/resource/js2/classie.js"></script>
	<script src="/resource/js2/uisearch.js"></script>
	<script src="/resource/js2/jquery.cubeportfolio.min.js"></script>
	<script src="/resource/js2/google-code-prettify/prettify.js"></script>
	<script src="/resource/js2/animate.js"></script>
	<script src="/resource/js2/custom.js"></script>

	<!-- 지도 api 키 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2664623d7f8ffa2dfcda4fd2c51506f7&libraries=services"></script>
	<script>
	
	$(function(){
	
	var addr = $("#farmAddr").val();
	
	var container = document.getElementById('map');
	var options = {
		center: new daum.maps.LatLng(33.450701, 126.570667),
		level: 3
	};

	var map = new daum.maps.Map(container, options);
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	
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

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});   
	
	
	var msg1 = $("#alertMsg").val();
	if(msg1 == 111){
		alert("로그인하지 않았거나 이미 분양중인 구역이 있습니다.");
	}
	
	});

	</script>

</body>
</html>