<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
    <!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>ownerInfo</title>
  <!-- Bootstrap core CSS-->
  <link href="/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="/resource/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="/resource/css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="ownerInfo.farm">농장주님 마이페이지</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="myInfo">
          <a class="nav-link" href="ownerInfo.farm">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">내 정보</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="FarmManage">
          <a class="nav-link" href="farmManage.farm">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">농장관리</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="distributionManage.farm">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">분양관리</span>
          </a>
        </li>
        
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>

    </div>
  </nav>
  
  
  <div class="content-wrapper">
  
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">농장주</a>
        </li>
        <li class="breadcrumb-item active">농장추가</li>
      </ol>
      <div class="row">
        <div class="col-12">
          
            
            <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">농장 등록</div>
      <div class="card-body">
        <form action="addFarm.farm" method="post"  enctype="multipart/form-data">
        <div class="col-md-3 img-portfolio " style="margin-bottom: 2px;">
               <img style="width:450px; height:200px" class="img-responsive img-hover" id="farmPhotow" src="http://placehold.it/750x450" alt="">
               <input type="file" name="photo1" id="photo1" class="photo">
            </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">농장명</label>
                <input name="farmName" class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">농장주소</label>
            <input name="farmAddr" class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
           <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">농장연락처</label>
                <input name="farmPhone" class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
              </div>
            </div>
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">농장 평수</label>
                <input name="farmSize" class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">평
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">농장소개</label>
            <input name="farmInfo" class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <input type="hidden" id="ownerId" name="ownerId" value="${ownerId}">
          <input type="submit" class="btn btn-primary btn-block" value="등록">
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.html">Login Page</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
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