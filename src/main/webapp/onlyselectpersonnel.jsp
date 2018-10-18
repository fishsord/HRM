<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="bootstrap3/css/bootstrap.css">
<script src="lib/js/jquery.min.js"></script>
		<link href="lib/css/default/easyui.css" type="text/css" rel="stylesheet">
		<link href="lib/css/icon.css" type="text/css" rel="stylesheet">
		<script src="lib/js/jquery.min.js"></script>
		<script src="lib/js/jquery.easyui.min.js"></script>
		<script src="lib/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div class="container">
		
		<table class="table">
			<tr>
				<th>ID</th>
				<th>姓名</th>
				<th>职务（原）</th>
				<th>职务（现）</th>
				<th>时间</th>
				<th>理由</th>

			</tr>
			
			<c:if test="${p != null }">
				<c:forEach items="${p }" var="p" varStatus="sta">
					<tr>
						<td>${p.userid}</td>
						<td>${p.user.username }</td>
						<td>${p.userd }</td>
						<td>${p.news }</td>
						<td>${p.date }</td>
						<td>${p.reasonr }</td>
					</tr>
				</c:forEach>
			</c:if>
			
		</table>
	
	</div>
</body>
</html>