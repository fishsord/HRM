<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">


</head>
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<body>
<script>
    function x() {
        $.ajax({
            url:"sa.jsp",
            method:'post',
            success:function(data){

            },
            failure:function(){
            }
        });
    }
</script>
<button type="button" onclick="x()">导入</button>
<p id="sa">sa</p>
<shiro:hasPermission name="user">
    <a href="javascript:void(0)" id="btnAdd" class="easyui-linkbutton"
       style="height: 30px; width: 60px" iconCls="icon-add" plain="true"
       onclick="addRoleUI()">添加</a>     
</shiro:hasPermission>

<shiro:hasPermission name="user">
    <a href="javascript:void(0)" id="btnEdit" class="easyui-linkbutton"
       style="height: 30px; width: 60px" iconCls="icon-edit" plain="true"
       onclick="editRoleUI()">编辑</a>    
</shiro:hasPermission>
<shiro:hasPermission name="itoo-authority-role-role-delete">
    <a href="javascript:void(0)" id="btnDel" class="easyui-linkbutton"
       style="height: 30px; width: 60px" iconCls="icon-remove"
       plain="true" onclick="deleteRole()">删除</a>    
</shiro:hasPermission>
</body>
</html>