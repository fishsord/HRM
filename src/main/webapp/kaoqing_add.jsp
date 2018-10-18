<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加信息</title>
<script src="js/jquery.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<center>
	<h2>添加考勤信息</h2>
</center>
<hr>
</head>
<body>
	<script type="text/javascript">
		
	</script>
	<div class="container">
		<form method="post">
			<!-- 提交要用post -->
			<div class="form-group">
				<lable for="userid">员工编号</lable>
				<input type="text" name="userid" id="userid" class="form-control" />
			</div>
			<div class="form-group">
				<lable for="type">考勤方式</lable>
				<td><select type="text" name="type" id="type"
					class="form-control">
						<option value="">--请选择--</option>
						<option value="1">迟到</option>
						<option value="2">旷班</option>
						<option value="3">请假</option>
						<option value="4">出差</option>
						<option value="5">停职</option>
						<option value="6">加班</option>
				</select></td>

			</div>
			<shiro:hasAnyRoles name='admin'>
			<input onclick="sub()" type="button" class="btn btn-primary"
				value="保存" />
			</shiro:hasAnyRoles>
		</form>
	</div>
	<script>
		function sub() {
			var userid = document.getElementById("userid").value.trim();
			var index = document.getElementById("type").selectedIndex;//获取当前选择项的索引.
			var type = document.getElementById("type").options[index].value;//获取当前选择项的值.
			if (userid == "") {
				alert("请输入员工编号！");
				return false;
			}

			if (type == "") {
				alert("请输入考勤方式！");
				return false;
			}
			$.ajax({
				url : "addKaoQing.action",
				type : "post",
				data : {
					"userid" : userid,
					
					"type" : type
				},
				datatype : 'json',

				success : function(data) {
					if (data > 0)
						alert("操作成功！");
					else
						alert("失败");
				}

			})
		}
	</script>
</body>
</html>