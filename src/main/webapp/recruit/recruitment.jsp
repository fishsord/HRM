<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
				<c:forEach items="${zhiweiList}" var="zhiwei">
					<tr>
						<td>${zhiwei.uId}</td>
						<td>${zhiwei.uShen}</td>
						<td>${zhiwei.uPrice}</td> 
						<td></td>
						<td></td>
						<td></td>
						<td><a href="recruit/UpdateRec.jsp?uId=${zhiwei.uId}&uShen=${zhiwei.uShen}&uPrice=${zhiwei.uPrice}" class="btn btn-info">修改</a></td>
						<td><a href="javascript:del('${zhiwei.uId}')" class="btn btn-danger" >删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
</body>
<script type="text/javascript">
function del(id) {
	if (confirm("确定要删除吗")) {
		location.href="deleteform.action?uId="+id;
	}
}

</script>
</html>