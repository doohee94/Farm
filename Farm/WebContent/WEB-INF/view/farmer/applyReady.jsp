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
  .btn-block{
  	background-color: #09540b;
  	border-color: #000;
  }
  
  .myPhoto{
 	height: 300px; 
 	width: 466px;
  }
  
  </style>
  
  
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="main.jsp">농사꾼님의 농장관리</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="myInfo.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">내정보</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="applyReady.jsp">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">승인대기농장</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">내농장</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="farmInfo.jsp">농장정보</a>
            </li>
            <li>
              <a href="farmDiary.jsp">농장일기</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="fastFarm.jsp">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">농사이력</span>
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
      <ul class="navbar-nav ml-auto">
        
       <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="../main/index.html">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">메인가기</span>
          </a>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">농장승인상태</a>
        </li>
       
      </ol>
      <div class="row">
        <div class="col-12">    

         	
       <!--  내용 -->
       <div class="right_side">
       <div class="card-body"> 
       
       <div class="form-group">
        <img src="../main/img/dong_logo.png"  class="myPhoto">  
       </div>  	
             
          <div class="form-group">
            <div class="form-group">
              <div class="col-md-6">
                <label for="exampleInputName">농장명</label>
                <input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" readonly="readonly">
              </div>
            </div>
          </div>
          <div class="form-group">
           <div class="col-md-6">
            <label for="exampleInputEmail1">농장주</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp"readonly="readonly">
          </div>
          </div>
          <div class="form-group">
           <div class="col-md-6">
            <label for="exampleInputEmail1">주소</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp"readonly="readonly">
          </div>
          </div>
          <div class="form-group">
           <div class="col-md-6">
            <label for="exampleInputEmail1">연락처</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp"readonly="readonly">
          </div>
          </div>
          <div class="form-group">
           <div class="col-md-6">
            <label for="exampleInputEmail1">신청크기</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp"readonly="readonly">
          </div>
          </div>
          <div class="form-group">
           <div class="col-md-6">
            <label for="exampleInputEmail1">진행상태</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp"readonly="readonly">
          </div>
          </div>
          
       
      </div>
     </div>      	
      </div>
      </div>
      <!--  정보끝끝 -->
      </div>

    <!--  내용 끝 -->
    
    
    
    
    
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
  </div>
</body>

</html>

