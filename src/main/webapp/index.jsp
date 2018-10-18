<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>测试主页</title>
    <link href="lib/css/default/easyui.css" type="text/css" rel="stylesheet">
    <link href="lib/css/icon.css" type="text/css" rel="stylesheet">
    <script src="lib/js/jquery.min.js"></script>
    <script src="lib/js/jquery.easyui.min.js"></script>
    <script src="lib/js/easyui-lang-zh_CN.js"></script>
</head>

<body class="easyui-layout">

<!--头部导航栏部分开始-->
<div region="north" split="false" style="height:33px;background-color: #e3eefe">
			<span style="margin-left: 2%;">
					<a href="#" class="easyui-linkbutton" iconCls="icon-man" plain="true">admin</a>
				</span>
    <span style="margin-left: 10%;">
					<a href="#" class="easyui-linkbutton" iconCls="icon-back" plain="true">首页</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改个人信息</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-undo" plain="true">退出系统</a>
				</span>

    <span style="margin-left: 50%;">
					<a href="#" class="easyui-linkbutton" iconCls="icon-tip" plain="true">2018年8月3日 星期四</a>
				 </span>

</div>
<!--头部导航栏部结束-->

<!--左边导航栏部分开始-->
<div region="west" title="导航菜单" style="width:150px">
    <!--面板组件开始-->

    <div id="aa" class="easyui-accordion" style="width:150px;height:350px;">
        <shiro:hasAnyRoles name="admin,user">
            <div title="人事调配" iconCls="icon-undo" style="overflow:auto;padding:10px;">

                <shiro:hasAnyRoles name="admin">
                    <a href="javascript:addTab('员工调配', 'selectpersonnel.action')" class="easyui-linkbutton" plain="true"
                       style="width: 100%;">员工调配</a>
                </shiro:hasAnyRoles>
                <a href="javascript:addTab('员工调配记录', 'onlyselectpersonnel.action')" class="easyui-linkbutton"
                   plain="true"
                   style="width: 100%;">员工调配记录</a>
            </div>
        </shiro:hasAnyRoles>

        <shiro:hasAnyRoles name="admin,user">
            <div title="招聘管理" iconCls="icon-undo" style="overflow:auto;padding:10px;">

                <shiro:hasAnyRoles name="admin">
                    <a href="javascript:addTab('应聘者信息', 'record.action')" class="easyui-linkbutton" plain="true"
                       style="width: 100%;">应聘者信息</a>
                </shiro:hasAnyRoles>
                <a href="javascript:addTab('职位招聘信息', 'recruitment.action')" class="easyui-linkbutton" plain="true"
                   style="width: 100%;">职位招聘信息</a>
            </div>

        </shiro:hasAnyRoles>

        <shiro:hasAnyRoles name="admin,user">
            <div title="培训管理 " iconCls="icon-undo"
                 style="overflow: auto; padding: 10px;">

                <a href="javascript:addTab('培训信息','train_person.jsp')"
                   class="easyui-linkbutton" plain="true" style="width: 100%;">培训信息</a>
                <shiro:hasAnyRoles name="admin">
                    <a href="javascript:addTab('添加培训','person_add.jsp')"
                       class="easyui-linkbutton" plain="true" style="width: 100%;">添加培训</a>
                </shiro:hasAnyRoles>
            </div>
        </shiro:hasAnyRoles>

        <div title="考勤管理" iconCls="icon-undo" style="padding: 10px;">
            <a href="javascript:addTab('考勤信息','kaoqing.jsp')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">考勤记录</a><shiro:hasAnyRoles name="admin"> <a href="javascript:addTab('添加考勤','kaoqing_add.jsp')"
                                                class="easyui-linkbutton"
                                                plain="true" style="width: 100%;">添加考勤</a></shiro:hasAnyRoles>
        </div>
        <shiro:hasAnyRoles name="admin">
            <div title="薪资管理" iconCls="icon-undo" style="padding: 10px;">
                <a href="javascript:addTab('薪资记录','Xincou.jsp')" class="easyui-linkbutton" plain="true"
                   style="width: 100%;">薪资记录</a>
            </div>
        </shiro:hasAnyRoles>


        <div title="部门人事管理" iconCls="icon-undo" style="overflow:auto;padding:10px;">
            <a href="javascript:addTab('产品研发部人员信息管理', 'people.jsp?b_id=1')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">产品研发部</a>
            <a href="javascript:addTab('市场营销部人员信息管理', 'people.jsp?b_id=2')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">市场营销部</a>
            <a href="javascript:addTab('财务部人员信息管理', 'people.jsp?b_id=3')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">财务部</a>
        </div>

        <div title="员工档案管理" iconCls="icon-undo" style="padding:10px;">
            <a href="javascript:addTab('产品研发部','dangan.jsp?b_id=1')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">产品研发部</a>
            <a href="javascript:addTab('市场营销部','dangan.jsp?b_id=2')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">市场营销部</a>
            <a href="javascript:addTab('财务部','dangan.jsp?b_id=3')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">财务部</a>
        </div>
        <div title="员工合同管理" iconCls="icon-undo" style="padding:10px;">
            <a href="javascript:addTab('产品研发部','hetong.jsp?b_id=1')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">产品研发部</a>
            <a href="javascript:addTab('市场营销部','hetong.jsp?b_id=2')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">市场营销部</a>
            <a href="javascript:addTab('财务部','hetong.jsp?b_id=3')" class="easyui-linkbutton" plain="true"
               style="width: 100%;">财务部</a></div>


    </div>


    <!--面板组件结束-->
</div>
<!--左边导航栏部分结束-->


<!--中间工作区域开始-->
<div region="center">

    <div id="contentInfo" class="easyui-tabs" style="height:100%;">
        <div title="首页">
            <!--添加其他首页元素-->

        </div>

    </div>
</div>
<!--中间工作区域结束-->
<!--底部开始-->
<div region="south" split="false" style="height:28px;background-color: #e3eefe">
				<span style="margin-left: 40%;">
					<a href="#" class="easyui-linkbutton" iconCls="icon-search" plain="true">版本号:20180803V</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-large-shapes" plain="true">版权所有:SIX</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-help" plain="true">如有疑问请联系技术人员</a>
				</span>

</div>
<!--底部结束-->
</body>
<script>
    //动态添加tab选项卡
    function addTab(title, url) {
        //如果选项卡已经被打开，就选中它，否则，重新打开
        if ($('#contentInfo').tabs('exists', title)) {
            $('#contentInfo').tabs('select', title);
        } else {
            var content = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
            $('#contentInfo').tabs('add', {
                title: title,//标题
                content: content,//拼接的html
                closable: true//是否有关闭按钮，true是有，fasle是没有

            });


        }
    }


</script>
</html>
