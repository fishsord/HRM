<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台应聘者信息</title>
	<link rel="stylesheet" href="../bootstrap3/css/bootstrap.min.css">
	<script src="../js/jquery.min.js"></script>
	<script src="../bootstrap3/js/bootstrap.min.js"></script></head></head>
<body>
	<a href="recruit/Add_Form.jsp" class="btn btn-info">添加</a>
	<form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>员工编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>电话</th>
					<th>出生年月</th>
					<th>邮箱</th>
					<th>招聘状态</th>
					<th>职位申请</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tb">
				
					<c:forEach items="${yingpinList}" var="yingpin">
						<tr>
							<td>${yingpin.id}</td>
							<td>${yingpin.name}</td>
							<td>${yingpin.sex}</td>
							
							<td>${yingpin.tel}</td>
							<td>${yingpin.brdate}</td>
							<td>${yingpin.emil}</td>
							<td>${yingpin.recruitment}</td>
							<td>${yingpin.zhiwei}</td>
						
							<td><a href="recruit/Update_Form.jsp?id=${yingpin.id}&name=${yingpin.name}&sex=${yingpin.sex}&tel=${yingpin.tel}&brdate=${yingpin.brdate}&emil=${yingpin.emil}&recruitment=${yingpin.recruitment}&zhiwei=${yingpin.zhiwei}"   class="btn btn-info">修改</a></td>
							
						</tr>
					</c:forEach>
				
			</tbody>
		</table>
	</form>
</body>
</html>