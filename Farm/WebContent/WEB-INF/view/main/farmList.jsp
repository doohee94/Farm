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
									<input class="sb-search-input"
										placeholder="Enter your search term..." type="text" value=""
										name="search" id="search"> <input
										class="sb-search-submit" type="submit" value=""> <span
										class="sb-icon-search" title="Click to start searching"></span>
								</form>
							</div>


						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html"><img
							src="../img/dong_logo.png" alt="" width="199" height="52" /></a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<!--                         <li class="dropdown active"> -->
							<!--                      <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Home <i class="fa fa-angle-down"></i></a> -->
							<!--                             <ul class="dropdown-menu"> -->
							<!--                                 <li><a href="index.html">Home slider 1</a></li> -->
							<!--                                 <li><a href="index2.html">Home slider 2</a></li> -->

							<!--                             </ul>             -->

							<!--                   </li>         -->
							<li><a href="index.html">홈</a></li>
							<li><a href="portfolio.html">농장찾기</a></li>
							<li><a href="login.html">로그인</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->



		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li class="active">Portfolio</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h4 class="heading">Recent Works</h4>

						<div id="filters-container" class="cbp-l-filters-button">
							<div data-filter="*"
								class="cbp-filter-item-active cbp-filter-item">
								All
								<div class="cbp-filter-counter"></div>
							</div>
							<div data-filter=".identity" class="cbp-filter-item">
								Identity
								<div class="cbp-filter-counter"></div>
							</div>
							<div data-filter=".web-design" class="cbp-filter-item">
								Web Design
								<div class="cbp-filter-counter"></div>
							</div>
							<div data-filter=".graphic" class="cbp-filter-item">
								Graphic
								<div class="cbp-filter-counter"></div>
							</div>
							<div data-filter=".logo" class="cbp-filter-item">
								Logo
								<div class="cbp-filter-counter"></div>
							</div>
						</div>

				<!-- 농장리스트 출력 -->
						<div id="grid-container" class="cbp-l-grid-projects">
							<ul>
								<c:choose>
									<c:when test="${farmList == null}">
										<li>등록된 농장이 없습니다.</li>
									</c:when>
									<c:otherwise>
										<c:forEach items="${farmList }" var="fl">
											<li class="cbp-item graphic">
												<div class="cbp-caption">
													<div class="cbp-caption-defaultWrap">
														<c:if test="${fl.farmPhotofake == null }">
															<img src="/resource/img/works/1big.jpg" alt="농장사진" />
														</c:if>
														<c:if test="${fl.farmPhotofake != null }">
															<img src="/upload/${fl.farmPhotofake }.jpg" alt="농장사진" />
														</c:if>
													</div>
													<div class="cbp-caption-activeWrap">
														<div class="cbp-l-caption-alignCenter">
															<div class="cbp-l-caption-body">
																<a href="showFarmInfo.farm?farmNum=${fl.farmNum }"
																	class="cbp-l-caption-buttonRight">농장가기</a>
															</div>
														</div>
													</div>
												</div>
												<div class="cbp-l-grid-projects-title">${fl.farmName }</div>
												<div class="cbp-l-grid-projects-desc">${fl.farmAddr }</div>
											</li>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>

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


</body>
</html>