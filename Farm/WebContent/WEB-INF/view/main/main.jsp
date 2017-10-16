<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
    
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Sailor - Bootstrap 3 corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Bootstrap 3 template for corporate business" />
<!-- css -->
<link href="/resource/main/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resource/main/plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />	
<link href="/resource/main/css/cubeportfolio.min.css" rel="stylesheet" />
<link href="/resource/main/css/style.css" rel="stylesheet" />

<!-- Theme skin -->
<link id="t-colors" href="/resource/main/skins/default.css" rel="stylesheet" />

	<!-- boxed bg -->
	<link id="bodybg" href="/resource/main/bodybg/bg1.css" rel="stylesheet" type="text/css" />

<!-- =======================================================
    Theme Name: Sailor
    Theme URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
======================================================= -->

</head>
<body>

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
						<li><a href="main.farm">홈</a></li>         
                        <li><a href="/farmlist/farmList.farm">농장찾기</a></li>  
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
                        				<a href="logout.farm">로그아웃</a>
                        			</li>

                        	</c:when>
                        	<c:otherwise>
                        		<li><a href="login.farm">로그인</a></li>
                        	</c:otherwise>
                        </c:choose>                   
                        
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="featured" class="bg">
	<!-- start slider -->

			
	<!-- start slider -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
	<!-- Slider -->
        <div id="main-slider" class="main-slider flexslider">
            <ul class="slides">
              <li>
                <img src="/resource/main/img/farm1.JPG" style="width:1150px; height:600px" alt="" />
              </li>
              <li>
                <img src="/resource/main/img/farm2.JPG" style="width:1150px; height:600px" alt="" />
              </li>
              <li>
                <img src="/resource/main/img/farm3.JPG" style="width:1150px; height:600px" alt="" />
              </li>
            </ul>
        </div>
	<!-- end slider -->
			</div>
		</div>
	</div>	


	</section>
	
	
	<section id="content">
		
	<!-- parallax  -->
	<div id="parallax1" class="parallax text-light text-center marginbot50" data-stellar-background-ratio="0.5">	
           <div class="container">
				<div class="row appear stats">
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-user fa-5x"></i>
							</div>
						<strong id="counter-coffee" class="number">1232</strong><br />
						<span class="text">농사꾼</span>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-male fa-5x"></i>
							</div>
						<strong id="counter-music" class="number">345</strong><br />
						<span class="text">농장주</span>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-leaf fa-5x"></i>
							</div>
						<strong id="counter-clock" class="number">501</strong><br />
						<span class="text">농장</span>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3 col-md-3">
						<div class="align-center color-white txt-shadow">
							<div class="icon">
								<i class="fa fa-credit-card fa-5x"></i>
							</div>
						<strong id="counter-heart" class="number">378</strong><br />
						<span class="text">결제</span>
						</div>
					</div>
				</div>
            </div>
	</div>	 
		
		
		<!-- divider -->
		<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="solidline">
				</div>
			</div>
		</div>
		</div>
		<!-- end divider -->
	
	
		
		
		<div class="container">
				<div class="row">
								<div class="col-xs-6 col-md-2 aligncenter client">
									<img alt="logo" src="/resource/main/img/clients/logo1.png" class="img-responsive" />
								</div>											
													
								<div class="col-xs-6 col-md-2 aligncenter client">
									<img alt="logo" src="/resource/main/img/clients/logo2.png" class="img-responsive" />
								</div>											
													
								<div class="col-xs-6 col-md-2 aligncenter client">
									<img alt="logo" src="/resource/main/img/clients/logo3.png" class="img-responsive" />
								</div>											
													
				</div>
		</div>
	
	</section>
	
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
                            <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

<!-- Placed at the end of the document so the pages load faster -->
<script src="/resource/main/js/jquery.min.js"></script>
<script src="/resource/main/js/modernizr.custom.js"></script>
<script src="/resource/main/js/jquery.easing.1.3.js"></script>
<script src="/resource/main/js/bootstrap.min.js"></script>
<script src="/resource/main/plugins/flexslider/jquery.flexslider-min.js"></script> 
<script src="/resource/main/plugins/flexslider/flexslider.config.js"></script>
<script src="/resource/main/js/jquery.appear.js"></script>
<script src="/resource/main/js/stellar.js"></script>
<script src="/resource/main/js/classie.js"></script>
<script src="/resource/main/js/uisearch.js"></script>
<script src="/resource/main/js/jquery.cubeportfolio.min.js"></script>
<script src="/resource/main/js/google-code-prettify/prettify.js"></script>
<script src="/resource/main/js/animate.js"></script>
<script src="/resource/main/js/custom.js"></script>

	
</body>
</html>