<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
<script src="js/jquery.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<center>
	<h2>考勤信息修改</h2>
</center>
<hr>
</head>
<body>
	<div class="container">
		<form action="" method="post">
			<!-- 提交一般要用post -->
			<div class="form-group">

				<lable for="id">序号</lable>
				<input type="text" name="id" id="id" class="form-control"
					value="<%=request.getParameter("id")%>" readonly="readonly" />
			</div>
			<div class="form-group">

				<lable for="userid">员工编号</lable>
				<input type="text" name="userid" id="userid" class="form-control"
					value="<%=request.getParameter("userid")%>" />
			</div>

			<div class="form-group">
				<lable for="type">考勤方式</lable>
				<td><select type="text" name="type" id="type"
					class="form-control">
						<option value="<%=request.getParameter("type")%>"><%=request.getParameter("type")%></option>
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
				value="确认修改" /></shiro:hasAnyRoles> <a href="kaoqing.jsp" type="submit"
				class="btn btn-primary">返回</a>

		</form>
	</div>
	<script>
		function sub() {
			
            var id = document.getElementById("id").value.trim();
			var userid = document.getElementById("userid").value.trim();
			var index = document.getElementById("type").selectedIndex;//获取当前选择项的索引.
			var type = document.getElementById("type").options[index].value;//获取当前选择项的值.

			$.ajax({
				url : "updateKaoQing.action",
				type : "post",
				datatype : 'json',
				data : {
					"id" : id,
					"userid" : userid,
					"type" : type

				},
				success : function(data) {
					if (data == true)
						
						alert("操作成功！");
					else
						alert("失败");
				}

			});
		}
	</script>

</body>
</html>