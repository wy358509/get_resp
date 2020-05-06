<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登录界面</title>	
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
		<h1 class="margin-bottom-15">登录</h1>
		<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="#" method="post">
			<div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<input type="text" class="form-control" id="username" placeholder="Username">
		            </div>		            	            
		          </div>              
		    </div>
			 <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<input type="password" class="form-control" id="password" placeholder="Password">
		            </div>
		          </div>
		      </div>
			  <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		<input type="button" value="Log in"  class="btn btn-info" onclick="logon()">
		          		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		          		<input type="button" value="sign in" class="btn btn-info" onclick="register()">
		          		<a href="forgot-password.html" class="text-right pull-right">Forgot password?</a>
		          	</div>
		          </div>
		        </div>
		</form>
		</div>
	</div>
</body>

<script type="text/javascript">
	function register() {
	window.location.href="userreg.do";
	}
	function logon() {
	window.location.href="bookmng.do";
	}
</script>
</html>