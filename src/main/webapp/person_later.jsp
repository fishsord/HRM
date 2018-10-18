<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
<script src="js/jquery.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<center>
	<h2>培训信息修改</h2>
</center>
<hr>
</head>
<body>
	<div class="container">
		<form action="" method="post">
			<!-- 提交一般要用post -->
			<div class="form-group">

				<lable for="id">员工编号</lable>
				<input type="text" name="id" id="id" class="form-control"
					value="<%=request.getParameter("id")%>" readonly="readonly" />
			</div>
			<div class="form-group">

				<lable for="name">员工姓名</lable>
				<input type="text" name="name" id="name" class="form-control"
					value="<%=request.getParameter("name")%>" />
			</div>

			<div class="form-group">
				<lable for="trainid">培训方式</lable>
				<td><select type="text" name="trainid" id="trainid"
					class="form-control">
						<option value="<%=request.getParameter("trainid")%>"><%=request.getParameter("type")%></option>
						<option value="1">在职培训</option>
						<option value="2">岗前培训</option>
				</select></td>

			</div>

			<div class="form-group">
				<lable for="istong">培训结果</lable>
				<td><select type="text" name="istong" id="istong"
					class="form-control">
						<option value="<%=request.getParameter("istong")%>"><%=request.getParameter("istong")%></option>
						<option value="合格">合格</option>
						<option value="不合格">不合格</option>
				</select></td>
			</div>


			<input onclick="sub()" type="button" class="btn btn-primary"
				value="确认修改" /> <a href="train_person.jsp" type="submit"
				class="btn btn-primary">返回</a>
		</form>
	</div>
	<script>
		function sub() {
			
            var id = document.getElementById("id").value.trim();
			var name = document.getElementById("name").value.trim();
			var index = document.getElementById("trainid").selectedIndex;//获取当前选择项的索引.
			var trainid = document.getElementById("trainid").options[index].value;//获取当前选择项的值.
			var index2 = document.getElementById("istong").selectedIndex;//获取当前选择项的索引.
			var istong = document.getElementById("istong").options[index2].value;//获取当前选择项的值.

			
			$.ajax({
				url : "updateTrainPerson.action",
				type : "post",
				datatype : 'json',
				data : {
					"id" : id,
					"name" : name,
					"trainid" : trainid,
					"istong" : istong

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