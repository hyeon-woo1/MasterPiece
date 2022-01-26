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
	
	<title>PIECE WORKS</title>
		
	<!-- Custom fonts for this template-->
	<link href="resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link 
    	  href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resource/css/sb-admin-2.min.css" rel="stylesheet">


</head>
<<<<<<< HEAD
<body onload="gologin();">

<p>메인페이지</p>
<p><button onclick="location.href='chattest.ch'">실시간 채팅 테스트</button></p>
<p><button onclick="location.href='chatForm.ch'">채팅폼</button></p>
<p><button id="chatList">채팅리스트</button></p>
<p><button onclick="location.href='common.com'">Common Form</button></p>
<p><button onclick="location.href='project.com'">Project Sidebar</button></p>
<p><button id="chattingDetailForm">chattingDetailForm</button></p>
<p><button onclick="location.href='loginView.me'">Login</button></p>
<p><button onclick="location.href='pDetailView.pr'">Project Detail</button></p>
<p><button onclick="location.href='pUpdateView.pr'">Project Update</button></p>
<p><button onclick="loaction.href='inviteMember.pr'" id="inviteMember">InviteMember</button>

<style>
	.col-lg-6{
		max-width: 100%;
	}


    .user-input{
        width: 50%;
        margin: 0 auto;
    }



</style>
<body class="bg-gradient-primary"> <!-- onload="alert('로그인 후 서비스 이용이 가능합니다.')" -->


    <div class="container">

            <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        
                        <div class="col-lg-6">
                        	<div class="p-5">
                            	<div class="text-center">
                            		<img src="resource/img/logo_transparent.png" width="350px">
<!--                                 	<h1 class="h1 text-gray-900 mb-4">PIECE WORKS</h1> -->
                            	</div>
                               	<form class="user" action="login.me" method="post">
                                	<div class="user-input">
                                    	<div class="form-group">
                                        	<input type="email" class="form-control form-control-user"
                                                    id="email" aria-describedby="emailHelp" name="email"
                                                    placeholder="이메일을 입력하세요" required>
                                    	</div>
                                        <div class="form-group">
                                        	<input type="password" class="form-control form-control-user"
                                                    id="pwd" name="pwd" placeholder="비밀번호를 입력하세요" required>
                                        </div>
                                        <div class="form-group">
                                	        <div class="custom-control custom-checkbox small">
                                    	        <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">아이디 저장</label>
                                            </div>
                                        </div>
                                        <div class="user-btn">
                                	        <input type="submit" class="btn btn-primary btn-user btn-block" value="로그인">
                                        </div>
                                        <div class="user-btn" style="margin-top: 10px">
                                	        <input class="btn btn-info btn-user btn-block" value="회원 가입" onclick="location.href='signUpView.me'">
                                        </div>
                       	            </div>
                  	            </form>
                                <hr>
                                <div class="text-center">
                                	<a class="small" href="sEmailView.me">이메일 찾기 </a> /
                                	<a class="small" href="sPwdView.me"> 비밀번호 찾기</a>
                                </div>
<!--                                 <div class=text-center> -->
<!--                                 	<a class="small" href="signUpView.me">회원가입</a> -->
<!--                                 </div> -->
                            </div>
                        </div>
                  	</div>
            	</div>
			</div>
        </div>
	</div>

    <!-- Bootstrap core JavaScript-->
    <script src="resource/vendor/jquery/jquery.min.js"></script>
    <script src="resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resource/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resource/js/sb-admin-2.min.js"></script>

</body>

</html>