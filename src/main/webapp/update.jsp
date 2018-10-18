<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
		<div class="container">
			<form action="updateStaff.action" method="get" >
			
			<h1 >修改界面</h1>
			<input class="form-control" type="hidden" id="id" name="id" value="${param.id }"/>
			<div>
			<input  type="hidden" value="update" name="method" />
			<label for="name"><em>姓名</em></label>
			<input type="text" value="${param.name}"
			 id="name" name="name" class="form-control" required="required" autofocus="autofocus" title="请输入合法名字"/>
			</div>
			<div class="form-group">
			<label for="sex"><em>性别</em></label>
			<!-- 前端验证 -->
			<input type="text" value="${param.sex}"
			 id="sex" name="sex" class="form-control
			required="required" autofocus="autofocus" title="请输入一个性别" pattern="^[\u4e00-\u9fa5]$" />
			</div> 
			<div class="form-group">
			<label for="danganjiguan"><em>籍贯</em></label>
			<input type="text" value="${param.jiguan}" id="danganjiguan" name="danganjiguan" class="form-control"
			required="required" autofocus="autofocus" title="输入全中文" pattern="^([\u4e00-\u9fa5]+)$"/>
			</div>
			<div class="form-group">
			<label for="danganminzu"><em>民族</em></label>
			<input type="text" id="danganminzu" name="danganminzu"
			 class="form-control" value="${param.minzu}" required="required" pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入中文"/>
			</div>
			<div class="form-group">
			<label for="danganpolitical"><em>政治面貌</em></label>
			<input type="text" value="${param.political}" id="danganpolitical" name="danganpolitical" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入合法中文"/>
			</div>
			<div class="form-group">
			<label for="danganxueli"><em>学历</em></label>
			<input type="text" id="danganxueli" name="danganxueli" value="${param.xueli}" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入合法中文"/>
			</div>
			<div class="form-group">
			<label for="ruzhidate"><em>入职时间</em></label>
			<input type="text" id="ruzhidate" name="ruzhidate" value="${param.ruzhidate}" class="form-control" required="required" 
			pattern="^([1-9][0-9]{3}-[0-9]{2}-[0-9]{2})$" autofocus="autofocus" title="请输入合法字符及格式,如'xxxx-xx-xx'格式"/>
			</div>
			<div class="form-group">
			<label for="tel"><em>电话号码</em></label>
			<input type="text" id="tel" name="tel" value="${param.tel}" class="form-control" required="required" 
			pattern="^(1[0-9]{10})$" autofocus="autofocus" title="请输入11位合法字符,电话号码第一位必须为1"/>
			</div>
			<div class="form-group">
			<label for="emil"><em>E-mail</em></label>
			<input type="text" id="emil" name="emil" value="${param.emil}" class="form-control" required="required" 
			pattern="^([1-9][0-9]+@[q]{2}.com)$" autofocus="autofocus" title="请输入合法字符及格式,如'xxx@qq.com'格式"/>
			</div>
			<div class="form-group">
			<label for="danganschool"><em>毕业院校</em></label>
			<input type="text" id="danganschool" name="danganschool" value="${param.school}" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入合法字符"/>
			</div>
			<div class="form-group">
			<label for="profession"><em>所学专业</em></label>
			<input type="text" id="danganprofession" name="danganprofession" value="${param.profession}" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入合法中文"/>
			</div>
			<div class="form-group">
			<label for="date"><em>出生日期</em></label>
			<input type="text" id="date" name="date" value="${param.date}" class="form-control" required="required" 
			pattern="^([1-9][0-9]{3}-[0-9]{2}-[0-9]{2})$" autofocus="autofocus" title="请输入合法字符及格式,如'xxxx-xx-xx'格式"/>
			</div>
			
			<div class="form-group">
			<label for="b_name"><em>在职部门</em></label>
			<input type="text" id="b_name" name="b_name" value="${param.b_name}" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入合法中文"/>
			</div>
			<div class="form-group">
			<label for="status"><em>人员状态</em></label>
			<input type="text" id="status" name="status" value="${param.status}" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5]+)$" autofocus="autofocus" title="请输入合法中文"/>
			</div>
			<div class="form-group">
			<label for="shen"><em>现任职位</em></label>
			<input type="text" id="shen" name="shen" value="${param.shen}" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5_a-zA-Z0-9]+)$" autofocus="autofocus" title="请输入合法字符"/>
			</div>
			<div class="form-group">
			<label for="danganhomeaddress"><em>家庭住址</em></label>
			<input type="text" value="${param.homeaddress}" id="danganhomeaddress" name="danganhomeaddress" class="form-control" required="required" 
			pattern="^([\u4e00-\u9fa5_a-zA-Z0-9]+)$" autofocus="autofocus" title="请输入合法字符"/>
			</div>
		
			<input type="submit" value="提交" class="btn btn-secondary" />
			<a href="showStaffAll.action?staffId=${param.id}" class="btn btn-success">返回</a>
			</form>
		</div>
		
</body>
</html>