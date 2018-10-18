<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
	<link rel="stylesheet" href="../bootstrap3/css/bootstrap.min.css">
	<script src="../js/jquery.min.js"></script>
	<script src="../bootstrap3/js/bootstrap.min.js"></script></head></head>
<body >
	<div class="container">
		<form action="../updateform.action" method="Get" onsubmit=" return check()">
				<div class="form-group">
				<input type="hidden" name="id" value ="<%=request.getParameter("id") %>" 
				class="form-control">
			</div>
			<div class="form-group">
				<label for="name">姓名 </label> <input type="text" name="name"
					id="name" class="form-control" value = "<%=request.getParameter("name")%>">
			</div>
			<div class="form-group">
				<label for="sex">性别 ：</label> 
				<input type="radio" name="sex"	id="sex" value="男" checked>男
				 <input type="radio" name="sex"	id="sex1" value="女">女
			</div>
			<div class="form-group">
				<label for="brdate">出生年月 </label> <input type="text" name="brdate"
					id="brdate"  value = "<%=request.getParameter("brdate")%>" class="form-control">
			</div>
			<div class="form-group">
				<label for="tel">电话号码</label> <input type="text" name="tel" maxlength ="11" pattern="^(1[0-9]{10})$"
					id="tel"  value = "<%=request.getParameter("tel")%>" class="form-control">
			</div>
			<div class="form-group">
				<label for="emil">邮箱</label> <input type="text" name="emil" pattern="^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$"
					id="emil"  value = "<%=request.getParameter("emil")%>" class="form-control">
			</div>
			<div>
			<div class="form-group">
				<label for="recruitment">应聘状态 </label> 
						<input type="text" name="recruitment"
					id="recruitment"  value = "<%=request.getParameter("recruitment")%>" class="form-control">
				
			</div>
				<button type="submit" class="btn btn-dark">提交</button>
				<a href="../record.action"  class="btn btn-dark"> 取消</a>
			</div>

		</form>
	</div>
	<script>
		function check() {
			if (document.getElementById("name").value.trim() == "") {
				alert("你没有输入正确的名字");
				return false;
			}
			
			  if (document.getElementById("tel").value.trim() == "") {
				alert("你没有输入正确的电话号码");
				return false;
			} else if (isNaN(document.getElementById("tel").value.trim())) {
				alert("你没有输入正确的电话号码");
				return false;
			}
			if (document.getElementById("brdate").value.trim() == "") {
				alert("你没有输入正确的出生日期例如2018/02/03");
				return false;
			}
			if (document.getElementById("emil").value.trim() == "") {
				alert("你没有输入正确的邮箱");
				return false;
			}  
			return true;
		}
	</script>
</body>
</html>