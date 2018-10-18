<%@page import="java.util.Date"%>
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
				<th>职务</th>
				<th>操作</th>
			</tr>
			
			<c:if test="${a != null }">
				<c:forEach items="${a }" var="a" varStatus="sta">
					<tr>
						<td>${a.uId}</td>
						<td>${a.user.username }</td>
						<td>${a.uShen }</td>
						<td><a href="updatepersonnel.jsp?id=${a.uId }&username=${a.user.username }&userd=${a.uShen }&news=${p.news }&reasonr=${p.reasonr }" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a></td>
					</tr>
				</c:forEach>
			</c:if>
			
		</table>
	
	</div>
</body>
</html>