<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>考勤记录</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <center>
        <h2>员工考勤信息</h2>
    </center>
    <hr/>
</head>
<body>
<div align="center" style="widht: 100%">
    排序:<select id="orderBy" style="width: 100px; height: 30px"
               onchange="orderBy()">
    <option value="id">序号</option>
    <option value="userid">员工编号</option>
    <option value="type">出勤情况</option>
</select>排序方式:<select id="orderByMethod" style="width: 100px; height: 30px"
                      onchange="orderByMethod()">
    <option value="asc">升序</option>
    <option value="desc">降序</option>
</select>
</div>
<table class="table table-hover">

    <thead>
    <tr>
        <th>序号</th>
        <th>员工编号</th>
        <th>出勤情况</th>
        <th>奖罚金额</th>
        <th>操作</th>

    </tr>
    </thead>
    <tbody id="tb">

    </tbody>


</table>
<div align="center">


    <select id="sel" style="width: 100px; height: 30px"
            onchange="selectRows()">
        <option>2</option>
        <option>5</option>
        <option>10</option>
    </select>


    <button type="button" class="btn btn-info" onclick="pre()">上一页</button>
    <button type="button" class="btn btn-info" onclick="next()">下一页</button>
</div>


<script>
    //页码
    var page = 1;
    //每页显示的行数
    var row = 2;
    //总条数
    var total = 0;
    //排序列
    var orderByColName = "id";
    //排序方式
    var orderMethod = "asc";
    $(function () {
        loadStudnt();

    })

    function loadStudnt() {

        $.ajax({
            url: "selectKaoQingByte.action",
            type: "get",
            dataType: "JSON",
            data: {
                "start": page,
                "row": row,
                "orderByColName": orderByColName,
                "orderMethod": orderMethod
            },
            success: function (data) {

                total = data.total;
                var html = "";

                if (data.rows.length > 0) {
                    for (var i = 0; i < data.rows.length; i++) {
                        html += "<tr><td>"
                            + data.rows[i].id
                            + "</td><td>"
                            + data.rows[i].userid
                            + "</td><td>"
                            + data.rows[i].type
                            + "</td><td>"
                            + data.rows[i].price
                            + "</td><td>"
                            <shiro:hasAnyRoles name='admin'>
                            +"<a href='kaoqing_later.jsp?id=" + data.rows[i].id + "&userid=" + data.rows[i].userid + "&type=" + data.rows[i].type
                            + "'>修改</a>"
                            + "<a onclick='deleteKaoQing("
                            + '"'
                            + data.rows[i].id
                            + '"'
                            + ")'> <span class='glyphicon glyphicon-trash'></span> 删除</a>"<%----%>
                            </shiro:hasAnyRoles>
                            + "</td></tr>"
                    }

                    $("#tb").html(html);
                }
            },
            error: function (data) {

            }
        })
    }

    function deleteKaoQing(id) {
        var a = confirm('确认删除！');
        if (a == true) {
            $.ajax({
                url: "deleteKaoQing.action",
                type: "GET",
                data: {
                    "id": id
                },
                dataType: "text",
                success: function (result) {
                    if (result > 0) {
                        loadStudnt();
                    } else {
                        alert("");
                    }

                },
                error: function (result) {
                    alert("操作有误，无法执行");
                }
            });
        }

    }

    //上一页
    function pre() {
        page--;

        if (page < 1) {
            page = 1;
        }
        //查询
        loadStudnt();
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
        loadStudnt();
    }

    //分页选择框
    function selectRows() {
        row = $("#sel").val();
        loadStudnt();
    }

    //排序
    function orderBy() {
        orderByColName = $("#orderBy").val();
        loadStudnt();
    }

    //排序方式
    function orderByMethod() {
        orderMethod = $("#orderByMethod").val();
        loadStudnt();
    }
</script>
</body>
</html>