<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加信息</title>
<script src="js/jquery.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<center>
	<h2>添加培训信息</h2>
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
				<lable for="name">员工姓名</lable>
				<input type="text" name="name" id="name" class="form-control" />
			</div>
			<div class="form-group">
				<lable for="trainid">培训方式</lable>
				<td><select type="text" name="trainid" id="trainid"
					class="form-control">
						<option value="">--请选择--</option>
						<option value="1">在职培训</option>
						<option value="2">岗前培训</option>
				</select></td>

			</div>
			<div class="form-group">
				<lable for="istong">培训结果</lable>
				<td><select type="text" name="istong" id="istong"
					class="form-control">
						<option value="">--请选择--</option>
						<option value="合格">合格</option>
						<option value="不合格">不合格</option>
				</select></td>
			</div>


			<input onclick="sub()" type="button" class="btn btn-primary"
				value="保存" />
		</form>
	</div>
	<script>
		function sub() {

			var name = document.getElementById("name").value.trim();
			var index = document.getElementById("trainid").selectedIndex;//获取当前选择项的索引.
			var trainid = document.getElementById("trainid").options[index].value;//获取当前选择项的值.
			var index2 = document.getElementById("istong").selectedIndex;//获取当前选择项的索引.
			var istong = document.getElementById("istong").options[index2].value;//获取当前选择项的值.
			if (name == "") {
				alert("请输入员工姓名！");
				return false;
			}

			if (trainid == "") {
				alert("请输入培训方式！");
				return false;
			}
			if (istong == "") {
				alert("请输入培训结果！");
				return false;
			}
			$.ajax({
				url : "addTrainPerson.action",
				type : "post",
				data : {
					"name" : name,
					"istong" : istong,
					"trainid" : trainid
				},
				datatype : 'json',

				success : function(data) {
					if (data == true)
						alert("操作成功！");
					else
						alert("失败");
				}

			})
		}
	</script>
</body>
</html>