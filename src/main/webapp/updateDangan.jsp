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
			<form action="updateDangan.action" method="get" >
			
			<h1 >修改界面</h1>
			
		
			<div class="form-group">
			<label for="danganneirong"><em>档案内容</em></label>
			<input type="text" id="danganneirong" name="danganneirong" class="form-control"
			required="required" autofocus="autofocus" title="输入全中文" pattern="^([\u4e00-\u9fa5_0-9a-zA-Z]+)$"/>
			</div>
			<div class="form-group">
			<label for="danganbeizhu"><em>档案备注</em></label>
			<input type="text" id="danganbeizhu" name="danganbeizhu"
			 class="form-control" required="required" pattern="^([\u4e00-\u9fa5_0-9a-zA-Z]+)$" autofocus="autofocus" title="请输入中文"/>
			</div>
		
			<button type="button" onclick="updateResult()" class="btn btn-secondary">提交</button>
			<a href="dangan.jsp?b_id=${param.b_id}" class="btn btn-success">返回</a>
			</form>
		</div>
		
</body>
<script type="text/javascript" src="bootstrap3/js/bootstrap.min.js"></script>
<script type="text/javascript">

function updateResult() {
	var id=${param.id};
	
	console.log("id="+id)
	var danganneirong=$("#danganneirong").val();
	var danganbeizhu=$("#danganbeizhu").val();
	$.ajax({
		url : "updateDangan.action",
		type : "GET" ,
		data : {"danganid" : id,
		"danganneirong" : danganneirong,
		"danganbeizhu" : danganbeizhu
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