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
<!-- start header -->
<section id="content">
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" class="register-form" action="goLogin.farm" method="post">
			<h2>Sign in <small>manage your account</small></h2>
			<hr class="colorgraph">
 		<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="radio" value="0" id="state" name="state" class="user_state">  농사꾼
					</div>
				</div>		
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="radio" value="1" id="state" name="state" class="user_state">  농장주
					</div>
				</div>	
			</div>			
			<div class="form-group">
				<input name="user_id" id="user_id" class="form-control input-lg" placeholder="ID" tabindex="4">
			</div>
			<div class="form-group">
				<input type="password" class="form-control input-lg" name="user_pass" id="user_pass" placeholder="Password">
			</div>

	
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Sign in" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-12 col-md-6">계정이 없으신가요? <a href="user_state.farm">회원가입</a></div>
			</div>
		</form>
	</div>
</div>
			<input type="hidden" id="login_fail" name="login_fail" value="${fail}">
</div>
	</section>

	

<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
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
<script type="text/javascript">
$(function(){
	
	if($("#login_fail").val() == 'fail'){
		alert("아이디와 비밀번호를 확인해주세요~");
	}
	
	
});



</script>
</body>
</html>