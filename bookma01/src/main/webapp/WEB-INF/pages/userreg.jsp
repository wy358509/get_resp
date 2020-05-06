<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册账号</title>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">
<h1 class="margin-bottom-15">账号创建</h1>
	<div class="container">
		<div class="col-md-12">		
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" id="serviceuser" action="userreg.do" method="POST" name="thisform">
			  	<div class="form-inner">
			  	  <div class="form-group">
			      <div class="col-md-6">       
				    <label for="user_name" class="control-label">姓名</label>
				    <br/>
				    <input type ="hidden" name="action" value="insert">
				    <input type ="text"  id="user_name" name="user_name" placeholder="name">
				  </div> 
				  <div class="col-md-6">
				  	<label for="sex" class="control-label">性别</label>
				  	<br/>
				    <select name ="sex" id="sex">
				    <option value="male">男</option>
				    <option value="female">女</option>
				    </select>
				  </div>
				 </div>
				 <div class="form-group">
				 <div class="col-md-6">
				 	<label for="code" class="control-label">密码</label>
				 	<br/>
					<input type ="text" id="code" name="code" placeholder="password">
					</div>
				</div>
				<div class="form-group">
		        	<div class="col-md-6">
						<input type ="submit" value="确定"  class="btn btn-info" name="confirm" onclick="return valinput()">
					</div>
					<div class="col-md-6">
					<input type ="button" value="返回"  class="btn btn-info" name="return" onclick="window.location.href='login.do'">
					</div>
				</div>				
				</div>			
</form>
</div>
</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function valinput() {
	var name=document.getElementById("user_name").value;
	var sex=document.getElementById("sex").value;
	var code=document.getElementById("code").value;
	if (name == "")
	{alert("请输入姓名");return false;}
	if (sex == "")
	{alert("请输入性别");return false;}
	if (code == "")
	{alert("请输入密码");return false;}
	}
	
</script>

</html>