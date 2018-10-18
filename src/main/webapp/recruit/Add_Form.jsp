<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台添加招聘信息</title>
	<link rel="stylesheet" href="../bootstrap3/css/bootstrap.min.css">
	<script src="../js/jquery.min.js"></script>
	<script src="../bootstrap3/js/bootstrap.min.js"></script></head>
<body>
	<div class="container">
		<form action="../insertform.action" method="get"  onsubmit=" return check()" >
			<div class="form-group">
				<label for="name">姓名 </label> 
				<input type="text" name="name" id="name" class="form-control" >
			</div>
			<div class="form-group">
				<label for="sex">性别 ：</label> 
				<input type="radio" name="sex"	id="sex" value="男" checked>男 
				 <input type="radio" name="sex"	id="sex" value="女">女 
			</div>
			<div>
				<label for="tel">电话号码: </label> <input type="text" name="tel"  maxlength ="11" pattern="^(1[0-9]{10})$"
					id="tel" class="form-control">
				</div>
			
				
			<div class="form-group">
				<label for="emil">邮箱: </label> <input type="email" name="emil" pattern="^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$"
					id="emil" class="form-control">
			</div>
				<div class="form-group">
				<label for="recruitment">应聘状态: </label> <input type="text" name="recruitment"
					placeholder="未处理" id="recruitment" class="form-control">
			</div>
			
			<div>
				<input type="submit" class="btn btn-dark" value="提交" /> <a
					href="../record.action" class="btn btn-dark"> 取消</a>
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
				alert("你没有输入正确的出生日期");
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