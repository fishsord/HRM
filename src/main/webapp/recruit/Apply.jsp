<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>应聘职位</title>
	<link rel="stylesheet" href="../bootstrap3/css/bootstrap.min.css">
	<script src="../js/jquery.min.js"></script>
	<script src="../bootstrap3/js/bootstrap.min.js"></script></head></head>
<body>
	<form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>序号</th>
					<th>职位名称</th>
					<th>薪资</th>
					<th></th>
					<th></th>
					<th></th>

				</tr>
			</thead>
			<tbody id="tb">
				<c:forEach items="${applyList}" var="zhiwei">
					<tr>
						<td>${zhiwei.uId}</td>
						<td>${zhiwei.uShen}</td>
						<td>${zhiwei.uPrice}</td>
						<td></td>
						<td></td>
						<td></td>
						<td><a href="recruit/resume.jsp?zhiwei=${zhiwei.uShen}" class="btn btn-info">申请</a></td>
					</tr>
				</c:forEach>
		
			</tbody>
		</table>
	</form>

</body>
</html>