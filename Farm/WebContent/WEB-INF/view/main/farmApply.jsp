<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sailor - Bootstrap 3 corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Bootstrap 3 template for corporate business" />
<!-- css -->
<link href="/resource/css2/bootstrap.min.css" rel="stylesheet" />
<link href="/resource/plugins2/flexslider/flexslider.css" rel="stylesheet" media="screen" />   
<link href="/resource/css2/cubeportfolio.min.css" rel="stylesheet" />
<link href="/resource/css2/style.css" rel="stylesheet" />

<!-- Theme skin -->
<link id="t-colors" href="../skins/default.css" rel="stylesheet" />

   <!-- boxed bg -->
   <link id="bodybg" href="../bodybg/bg1.css" rel="stylesheet" type="text/css" />
   
   <!-- jQuery UI CSS파일 --> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> 

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
                    <a class="navbar-brand" href="index.html"><img src="../img/dong_logo.png" alt="" width="199" height="52" /></a>
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
   
   
   
   <section id="content">
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" class="register-form">
			<h2>농장분양 <small>주말농장 분양신청을 해주세요</small></h2>
			<hr class="colorgraph">
			이름  
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" name="first_name" id="first_name" class="form-control input-lg" value="${userInfo.userName }" tabindex="1">
					</div>
				</div>
			</div>
			연락처  
			<div class="form-group">
				<input type="text" name="display_name" id="display_name" class="form-control input-lg" value="${userInfo.userPhone }" tabindex="3">
			</div>
			이메일
			<div class="form-group">
				<input type="email" name="email" id="email" class="form-control input-lg" value="${userInfo.userEmail }" tabindex="4">
			</div>
			희망구역
			<div class="form-group">
				<c:choose>
					<c:when test="${regionInfo == null }">
					<!-- 셀렉트박스@@ -->
				<select id="regionSelectBox" style="width: 50%">
						<option >구역이 없습니다.</option>
						</select>
					</c:when>
					<c:otherwise>
						<c:forEach items="${regionInfo }" var="ri">
						<select id="regionSelectBox" style="width: 50%">
							<option value="${ri.regionNum }">${ri.regionName }  임대가격(개월 당): ${ri.regionSize }</option>
						</select>
						</c:forEach>
					</c:otherwise>
				</c:choose> 
			</div>
        	농사시작날짜
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" name="first_name" id="testDatepicker" class="form-control input-lg" placeholder="First Name" tabindex="1">
					</div>
				</div>
			</div>
			농사기간(개월수)
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" name="first_name" id="month" class="form-control input-lg" placeholder="First Name" tabindex="1">
					</div>
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="신청하기" class="btn btn-theme btn-block btn-lg" tabindex="7"></div>
			</div>
		</form>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
			</div>
			<div class="modal-body">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
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
<script src="/resource/js2/jquery.min.js"></script>
<!-- datepicker에러 잡기위한 코드 -->
<script type="text/javascript">
jQuery.browser = {};
(function () {
    jQuery.browser.msie = false;
    jQuery.browser.version = 0;
    if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
        jQuery.browser.msie = true;
        jQuery.browser.version = RegExp.$1;
    }
})();
</script>

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


 
  
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<script type="text/javascript">
$(function() {
    $( "#testDatepicker" ).datepicker({
    	
    });
});
</script>
</body>
</html>