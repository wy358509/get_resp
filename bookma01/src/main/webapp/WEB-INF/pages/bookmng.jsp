<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>图书录入</title>
</head>
<body>
<form id="bookma" action="bookmng.do" method="POST" name="thisform">
<table  border="1" class="table-class"  style="text-algin:center;width:100%；border: 0px;">
			
			<tr >
				<td>
			     <input type ="hidden" name="action" value="insert">
				 <input type ="text"  id="logname" name="logname">书名
				</td>
			</tr>
			<tr >
				<td  >
				<input type ="text" id="logid" name="logid">编号
				</td>
			</tr>
				<tr >
				<td  >
				<input type ="text" id="status" name="status">状态
				</td>
			</tr>
			<tr >
				<td  >
					<input type ="submit" value="确定" name="confirm" onclick="return valinput()">
					<input type ="button" value="取消" name="cancel">
				</td>
			</tr>
			<tr >
				<td  >
					<input type ="button" value="返回" name="return" onclick="window.location.href='login.do'">
				</td>
			</tr>
</table>
</form>
</body>
<script type="text/javascript">
	function valinput() {
	var name=document.getElementById("logname").value;
	var id=document.getElementById("logid").value;
	var status=document.getElementById("status").value;
	if (name == "")
	{alert("请输入名字");return false;}
	if (id == "")
	{alert("请输入编号");return false;}
	if (status == "")
	{alert("请输入状态");return false;}
	}
	
</script>

</html>