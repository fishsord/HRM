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
<body>
	<div class="container">
		<form action="../updateRec.action" method="Get"
			onsubmit=" return check()">
			<div class="form-group">
				<input type="hidden" name="uId"
					value="<%=request.getParameter("uId")%>" class="form-control">
			</div>
			<div class="form-group">
				<label for="uShen">职位名称 </label> <input type="text" name="uShen"
					id="uShen" class="form-control"
					value="<%=request.getParameter("uShen")%>">
			</div>


			<div class="form-group">
				<label for="tel">薪资</label> <input type="text" name="uPrice" id="tel"
					value="<%=request.getParameter("uPrice")%>" class="form-control">
			</div>
			<div>
				<button type="submit" class="btn btn-dark">提交</button>
				<a href="../recruitment.action" class="btn btn-dark"> 取消</a>
			</div>

		</form>
	</div>
	<script>
		function check() {
			if (document.getElementById("uShen").value.trim() == "") {
				alert("你没有输入正确的职位名称");
				return false;
			}

			if (document.getElementById("uPrice").value.trim() == "") {
				alert("你没有输入正确的薪资");
				return false;
			} else if (isNaN(document.getElementById("uPrice").value.trim())) {
				alert("你没有输入正确的薪资");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>