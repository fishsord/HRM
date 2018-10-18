<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script src="js/jquery.min.js"></script>
       <link href="bootstrap3/css/bootstrap.css" rel="stylesheet">

	</head>
	<body>
	<c:forEach items="${Message}" var="m">
		<form  method="get" enctype="multipart/form-data" >
			
		<center><table class="table table-bordered" cellpadding="7" cellspacing="0" border="1" width="650" height="500"></center>
			<thead>
				<tr >
					<td align="center" colspan="9"><font size="5"><b>个人详细信息</b></font></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td >姓名</td>
					<td colspan="2">${m.name }</td>
					<td >编号</td>
					<td >${m.id }</td>
					
					<td >籍贯</td>
					<td colspan="3">${m.dangan.jiguan}</td>
				</tr>
				
				<tr>
					<td >民族</td>
					<td colspan="2">${m.dangan.minzu}</td>
					<td >政治面貌</td>
					<td >${m.dangan.political }</td>
					<td >学历</td>
					<td colspan="3">${m.dangan.xueli}</td>
				</tr>
				<tr>
					<td>在职部门</td>
					<td colspan="2">${m.b_name}</td>
					<td >性别</td>
					<td >${m.sex }</td>
					<td>现任职位</td>
					<td colspan="3">${m.shen }</td>
				</tr>
					<tr>
					<td>人员状态</td>
					<td colspan="3">${m.status }</td>
					<td>入职时间</td>
					<td colspan="4">${m.ruzhidate }</td>
				</tr>
				<tr>
					<td>电话号码</td>
					<td colspan="3">${m.tel }</td>
					<td>E-mail</td>
					<td colspan="4">${m.emil }</td>
				</tr>
				<tr>
					<td>毕业院校</td>
					<td colspan="3">${m.dangan.school }</td>
					<td>出生日期</td>
					<td colspan="4">${m.date }</td>
				</tr>
				<tr>
					<td>所学专业</td>
					<td colspan="8">${m.dangan.profession }</td>
				</tr>
				<tr>
					<td>家庭住址</td>
					<td colspan="8">${m.dangan.homeaddress }</td>
				</tr>
			    <tr>
			    <td colspan="9">
			     <a href="people.jsp?b_id=${m.bid }" class="btn btn-primary">返回上一级</a>
			     <a href="update.jsp?id=${m.id }&name=${m.name }&jiguan=${m.dangan.jiguan}&minzu=${m.dangan.minzu}&political=${m.dangan.political}&xueli=${m.dangan.xueli}&sex=${m.sex}&b_name=${m.b_name}&shen=${m.shen }&status=${m.status }&ruzhidate=${m.ruzhidate}&tel=${m.tel}&emil=${m.emil}&school=${m.dangan.school}&date=${m.date}&profession=${m.dangan.profession}&homeaddress=${m.dangan.homeaddress}" class="btn btn-primary">修改信息</a>
			    </td>
			    </tr>
			</tbody>
			</form>
			</c:forEach>
		
			
	</body>
</html>
