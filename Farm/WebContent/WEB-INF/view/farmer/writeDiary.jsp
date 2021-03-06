<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="/resource/farmer/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="/resource/farmer/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="/resource/farmer/css/sb-admin.css" rel="stylesheet">
  <style type="text/css">
  .photo{
  	display:none; 
 
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
        <li class="breadcrumb-item">
          <a href="farmInfo.jsp">내농장</a>
        </li>
        <li class="breadcrumb-item active">농장일기</li>
        <li class="breadcrumb-item active">일기작성</li>
      </ol>
      <div class="row">
        <div class="col-12">
         
          <!--  내용 -->
    		
    	<form action="writeDiary.farm" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <div class="form-row">
	              <div class="col-md-6">	              
	                <img src="/resource/main/img/imagesize.png"  id="photow1" class="upload_image" />
	                <input type="file" id="photo1" name="photo1" class="photo">
	              </div>
	              <div class="col-md-6">	              	
	                <img src="/resource/main/img/imagesize.png"  id="photow2" name="photow2" class="upload_image" />
	                <input type="file"  id="photo2" name="photo2"  class="photo">
	                
	              </div>
	              <div class="col-md-6">	             
	               <img src="/resource/main/img/imagesize.png" id="photow3" name="photow3" class="upload_image"/>
	              <input type="file"  id="photo3" name="photo3" class="photo">
	              
	              </div>
	              <div class="col-md-6">	              
	                <img src="/resource/main/img/imagesize.png" id="photow4" name="photow4" class="upload_image"/>
	                <input type="file"  id="photo4" name="photo4" class="photo">	                
	              </div>
            </div>
          </div>
          
          <div class="form-group">
          	<div class="col-md-6">
           	 <label for="exampleInputEmail1">제목</label>
             <input class="form-control" id="diaryTitle" name="diaryTitle" placeholder="제목을 입력하세요">
            </div>
          </div>
          <div class="form-group">
              <div class="col-md-6">
                <label for="exampleInputPassword1">날짜</label>
                <input class="form-control"  id="diaryDate" name="diaryDate" value="${today}" id="diaryDate" readonly="readonly"/>
              </div>
          </div>
          
          <div class="form-group">
              <div class="col-md-6">
                <label for="exampleInputPassword1">내용</label>
                <input class="form-control"  id="diaryContent" name="diaryContent" id="diaryContent"/>
              </div>
          </div>
         <div class="form-group">
         <div class="col-md-6">
           <input class="form-control"  type="submit" id="regist" name="regist" value="등록"/>

           </div>
         </div>
        </form>
        
        
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
			//이미지누를 시 file 찾기 창 뜨게 하기
 			
 			$('#photow1').click(function(e){
 	 			e.preventDefault();
 	 			$("#photo1").click();
 	 		});
 			
 			$('#photow2').click(function(e){
	 				e.preventDefault();
	 				$("#photo2").click();
	 			});
 			
 			$('#photow3').click(function(e){
	 				e.preventDefault();
	 				$("#photo3").click();
	 			});
 			
 			$('#photow4').click(function(e){
	 				e.preventDefault();
	 				$("#photo4").click();
	 			});
 			

 			$('#photo1').change(function(){
 		        var val = $(this).val();
 		        var thisDom = $(this)[0];
 		         
 		        console.log("val : " + val);
 		        console.log("thisDom : " + thisDom);
 		             
 		        if (thisDom.files && thisDom.files[0]) {
 		            var reader = new FileReader();
 		                    reader.onload = function (e) {
 		                $('#photow1').attr('src', e.target.result);
 		            }
 		            reader.readAsDataURL(thisDom.files[0]);
 		        }
 		    });//end function

 		   $('#photo2').change(function(){
		        var val = $(this).val();
		        var thisDom = $(this)[0];
		         
		        console.log("val : " + val);
		        console.log("thisDom : " + thisDom);
		             
		        if (thisDom.files && thisDom.files[0]) {
		            var reader = new FileReader();
		                    reader.onload = function (e) {
		                $('#photow2').attr('src', e.target.result);
		            }
		            reader.readAsDataURL(thisDom.files[0]);
		        }
		    });//end function
		    
		    $('#photo3').change(function(){
 		        var val = $(this).val();
 		        var thisDom = $(this)[0];
 		         
 		        console.log("val : " + val);
 		        console.log("thisDom : " + thisDom);
 		             
 		        if (thisDom.files && thisDom.files[0]) {
 		            var reader = new FileReader();
 		                    reader.onload = function (e) {
 		                $('#photow3').attr('src', e.target.result);
 		            }
 		            reader.readAsDataURL(thisDom.files[0]);
 		        }
 		    });//end function
 		    
 		   $('#photo4').change(function(){
		        var val = $(this).val();
		        var thisDom = $(this)[0];
		         
		        console.log("val : " + val);
		        console.log("thisDom : " + thisDom);
		             
		        if (thisDom.files && thisDom.files[0]) {
		            var reader = new FileReader();
		                    reader.onload = function (e) {
		                $('#photow4').attr('src', e.target.result);
		            }
		            reader.readAsDataURL(thisDom.files[0]);
		        }
		    });//end function
 		 			
 			
 		});// end function	
   	
 
   	</script>
  


</body>

</html>

