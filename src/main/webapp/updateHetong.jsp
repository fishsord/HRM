<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
          <div id="AlertBox"></div>
		<div class="container">
			<form action="updateStaff.action" method="get" >
			
			<h1 >修改界面</h1>
			<div>
         
			<div class="form-group">
			<label for="startdate"><em>合同起始时间</em></label>
			<!-- 前端验证 -->
			<input type="text"
			 id="startdate" name="startdate" class="form-control
			required="required" autofocus="autofocus" title="请输入一个合法的格式，如'xxxx-xx-xx'" pattern="^([1-9][0-9]{3}-[0-9]{2}-[0-9]{2})$" />
			</div> 
			<div class="form-group">
			<label for="enddate"><em>合同终止时间</em></label>
			<input type="text" id="enddate" name="enddate" class="form-control"
			required="required" autofocus="autofocus" title="请输入一个合法的格式，如'xxxx-xx-xx'" pattern="^([1-9][0-9]{3}-[0-9]{2}-[0-9]{2})$"/>
			</div>
			
			<div class="form-group">
			<label for="hetongnei"><em>合同内容</em></label>
			<input type="text" id="hetongnei" name="hetongnei"
			 class="form-control" value="${param.beizhu}" required="required" pattern="^([\u4e00-\u9fa5_0-9a-zA-Z]+)$" autofocus="autofocus" title="请输入合法字符"/>
			</div>
		
			<button type="button" onclick="updateResult()" class="btn btn-secondary" >提交</button>
			<a href="hetong.jsp?b_id=${param.bid}" class="btn btn-success">返回</a>
			</form>
		</div>
		
</body>
<script type="text/javascript" src="bootstrap3/js/bootstrap.min.js"></script>
<script type="text/javascript">

function updateResult() {
	var id=${param.id};
	
	console.log("id="+id)
	
	var startdate=$("#startdate").val();
	var enddate=$("#enddate").val();
	var hetongnei=$("#hetongnei").val();
	$.ajax({
		url : "updateHetong.action",
		type : "GET" ,
		data : {"id" : id,
		"name" : name,
		"startdate" : startdate,
		"enddate" : enddate,
		"hetongnei" : hetongnei
		},
		dataType : "text" ,
		success : function(data){
			if(data==1){
				successAlert();
			}
			else{
				errorAlert();
			}
		},
		error : function(data) {
			errorAlert();
		}
	});
}
function successAlert() {
	$("#AlertBox")
			.html(
					"<div class='alert alert-success alert-dismissible' role='alert'>"
							+ "<button type='button' class='close' data-dismiss='alert'"
			+"aria-label='Close'>"
							+ "<span aria-hidden='true'>&times;</span>"
							+ "</button>提示：操作成功</div>");
}
function errorAlert() {
	$("#AlertBox")
			.html(
					"<div class='alert alert-danger alert-dismissible' role='alert'>"
							+ "<button type='button' class='close' data-dismiss='alert'"
			+"aria-label='Close'>"
							+ "<span aria-hidden='true'>&times;</span>"
							+ "</button>提示：操作失败</div>");
}

</script>
</html>