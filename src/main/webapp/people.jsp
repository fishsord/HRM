<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Insert title here</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">

</head>
<body>
<div align="center" style="widht: 100%">
    排序：<select id="orderBy" style="width: 100px; height: 30px"
               onchange="orderBy()">
    <option value="m.id">编号</option>
    <option value="m.name">姓名</option>
    <option value="m.sex">性别</option>
</select> 排序方式:<select id="orderByMethod" style="width: 100px; height: 30px"
                       onchange="orderByMethod()">
    <option value="asc">升序</option>
    <option value="desc">降序</option>

</select>
</div>

<table class="table table-hover">

    <thead>
    <tr>
        <th>序列号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>职位</th>
        <th>电话号码</th>
        <th>其他操作</th>
    </tr>
    </thead>
    <div id="AlertBox"></div>
    <tbody id="tb">

    </tbody>
</table>
<div align="center">


    <select id="sel" style="width: 100px; height: 30px"
            onchange="selectRows()">

        <option>5</option>
        <option>10</option>
    </select>


    <button type="button" class="btn btn-info" onclick="pre()">上一页</button>
    <button type="button" class="btn btn-info" onclick="next()">下一页</button>

</div>

</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap3/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var bid = ${param.b_id};
    //页码
    var page = 1;
    //每页显示的行数
    var row = 5;
    //总条数
    var total = 0;
    //排序列
    var orderByColName = "m.id";
    //排序方式
    var orderMethod = "asc";
    $(function () {
        loadPeople();
    })

    function loadPeople() {
        if (page == 0) {
            page = 1;
        }
        $
            .ajax({
                url: "selectStaff.action",
                type: "GET",
                dataType: "JSON",
                data: {
                    "start": page,
                    "rows": row,
                    "orderByColName": orderByColName,
                    "orderMethod": orderMethod,
                    "bid": bid
                },
                success: function (data) {

                    total = data.total;
                    var html = "";
                    if (data.rows.length > 0) {
                        for (var i = 0; i < data.rows.length; i++) {
                            html += "<tr><td>"
                                + data.rows[i].id
                                + "</td><td>"
                                + data.rows[i].name
                                + "</td><td>"
                                + data.rows[i].sex
                                + "</td><td>"
                                + data.rows[i].shen
                                + "</td><td>"
                                + data.rows[i].tel
                                + "</td><td>" <shiro:hasAnyRoles name="admin">
                                +"<a href='showStaffAll.action?staffId="
                                + data.rows[i].id
                                + "'><span class='glyphicon glyphicon-credit-card'></span>详细信息</a>"

                                + "<a href='javascript:void(0);' onclick='doRemoveStaff("
                                + '"'
                                + data.rows[i].id
                                + '"'
                                + ")'> <span class='glyphicon glyphicon-trash'></span> 删除</a>"</shiro:hasAnyRoles>
                                + "</td></tr>"
                        }

                        $("#tb").html(html);
                    }
                },
                error: function (data) {

                }
            });
    }

    function doRemoveStaff(a) {
        var a = window.confirm("你确定要删除该员工的基本信息吗？");

        if (a == true) {
            $.ajax({
                url: "delectStaff.action",
                type: "GET",
                data: {
                    "id": a,

                },
                dataType: "text",
                success: function (result) {
                    switch (result) {
                        case "success":
                            successAlert();
                            loadPeople();
                            break;
                        case "error":
                            errorAlert();
                            break;
                        default:
                            errorAlert();
                            break;
                    }

                },
                error: function (result) {
                    errorAlert();
                }
            });
        }
    }

    function successAlert() {
        $("#AlertBox")
            .html(
                "<div class='alert alert-success alert-dismissible' role='alert'>"
                + "<button type='button' class='close' data-dismiss='alert'"
                + "aria-label='Close'>"
                + "<span aria-hidden='true'>&times;</span>"
                + "</button>提示：操作成功</div>");
    }

    function errorAlert() {
        $("#AlertBox")
            .html(
                "<div class='alert alert-danger alert-dismissible' role='alert'>"
                + "<button type='button' class='close' data-dismiss='alert'"
                + "aria-label='Close'>"
                + "<span aria-hidden='true'>&times;</span>"
                + "</button>提示：操作失败</div>");
    }

    //上一页
    function pre() {
        page--;

        if (page < 1) {
            page = 1;
        }
        //查询
        loadPeople();
    }

    //下一页
    function next() {
        page++;
        //总页数
        var totalPage = total / row;
        //判断计算的总页数是不是小数
        if (Math.floor(totalPage) != totalPage) {
            //Math.floor向下取整，所以总页数要加1
            totalPage = Math.floor(totalPage) + 1;
        }
        //判断点击下一页的page是不是大于总页数，如果大于，page=总页数
        if (page > totalPage) {
            page = totalPage;
        }
        //查询
        loadPeople();
    }

    //分页选择框
    function selectRows() {
        row = $("#sel").val();
        loadPeople();
    }

    //排序
    function orderBy() {
        orderByColName = $("#orderBy").val();
        loadPeople();
    }

    //排序方式
    function orderByMethod() {
        orderMethod = $("#orderByMethod").val();
        loadPeople();
    }
</script>
</html>