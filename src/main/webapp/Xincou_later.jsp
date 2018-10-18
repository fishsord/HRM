<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改记录</title>
<script src="js/jquery.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<center>
	<h2>薪资信息修改</h2>
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

				<lable for="jiben">基础工资</lable>
				<input type="text" name="jiben" id="jiben" class="form-control"
					value="<%=request.getParameter("jiben")%>" />
			</div>
			<div class="form-group">

				<lable for="reward">奖罚金额</lable>
				<input type="text" name="reward" id="reward" class="form-control"
					value="<%=request.getParameter("reward")%>" />
			</div>
			<div class="form-group">

				<lable for="price">实发工资</lable>
				<input type="text" name="price" id="price" class="form-control"
					value="<%=request.getParameter("price")%>" />
			</div>
			

			<div class="form-group">
				<lable for="date">核对日期</lable>
				<td><select type="text" name="date" id="date"
					class="form-control">
						<option value="<%=request.getParameter("date")%>"><%=request.getParameter("date")%></option>
						<option value="2018-1-10">2018-1-10</option>
						<option value="2018-2-10">2018-2-10</option>
						<option value="2018-3-10">2018-3-10</option>
						<option value="2018-4-10">2018-4-10</option>
						<option value="2018-5-10">2018-5-10</option>
						<option value="2018-6-10">2018-6-10</option>
						<option value="2018-7-10">2018-7-10</option>
						<option value="2018-8-10">2018-8-10</option>
						<option value="2018-9-10">2018-9-10</option>
						<option value="2018-10-10">2018-10-10</option>
						<option value="2018-11-10">2018-11-10</option>
						<option value="2018-12-10">2018-12-10</option>
				</select></td>

			</div>

			<input onclick="sub()" type="button" class="btn btn-primary"
				value="确认修改" /> <a href="Xincou.jsp" type="submit"
				class="btn btn-primary">返回</a>
		</form>
	</div>
	<script>
		function sub() {
			
            var id = document.getElementById("id").value.trim();
            var userid = document.getElementById("userid").value.trim();
            var jiben = document.getElementById("jiben").value.trim();
            var reward = document.getElementById("reward").value.trim();
            var price = document.getElementById("price").value.trim();
			var index = document.getElementById("date").selectedIndex;//获取当前选择项的索引.
			var date = document.getElementById("date").options[index].value;//获取当前选择项的值.

			$.ajax({
				url : "updateXincou.action",
				type : "post",
				datatype : 'json',
				data : {
					"id" : id,
					"userid" : userid,
					"jiben":jiben,
					"reward":reward,
					"price":price,
					"date" :date

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