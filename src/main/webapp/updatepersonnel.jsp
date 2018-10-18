<%@page import="java.text.SimpleDateFormat"%>
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
<%
Date date = new Date();
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

%>
	<form class="form-horizontal" action="updatePersonnel.action">

	<div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
	    
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="inputEmail34" placeholder="ID" name="id" value="<%=request.getParameter("id") %>" readonly="readonly">
	    </div>
	  </div>
	
	
	
	  
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="inputEmail3" placeholder="姓名" name="username" value="<%=request.getParameter("username") %>">
	    </div>
	  </div>
	  
  
	 
	      <input  type="hidden" class="form-control" id="inputPassword4" placeholder="职务（原）" name="userd" value="<%=request.getParameter("userd") %>">
	   
	  
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">职务</label>
	    <div class="col-sm-10">
			<select type="text" name="userAdminId">
				<c:forEach items="${list}" var="list">
					<option value="${list.uId}">${list.uShen}</option>
				</c:forEach>

			</select>
	      <%--<input type="text" class="form-control" id="inputPassword5" placeholder="职务" name="uShen">--%>
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">时间</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="inputPassword6" placeholder="时间" name="date" value="<%=format.format(date)%>">
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">理由</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="inputPassword3" placeholder="理由" name="reasonr" value="<%=request.getParameter("reasonr") %>">
	    </div>
	  </div>
	  
	  
	  
	  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认修改</button>
    </div>
  </div>
</form>
</body>
</html>