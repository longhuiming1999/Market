<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>用户管理</title>
	<link rel="stylesheet" href="../../../layui/css/layui.css">
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">用户ID</label>
			<div class="layui-input-inline">
				<input type="text" id="userId" name="userId" lay-verify="required" placeholder="请输入用户ID" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">用户姓名</label>
			<div class="layui-input-inline">
				<input type="text" id="userName" name="userName" lay-verify="required" placeholder="请输入用户姓名" autocomplete="off" class="layui-input">
			</div>
		    <a class="layui-btn search_btn" id="search">查询</a>
		</div>
	</blockquote>
	<div class="layui-form news_list">
		<table id="useradmin" lay-filter="useradmin"></table>
	</div>
	<div id="page"></div>
	<script type="text/javascript" src="../../../layui/layui.js"></script>
	<script type="text/html" id="operate">
		{{#  if(d.ifNew === 0){ }}
		<a class="layui-btn layui-btn-xs" lay-event="review">会员审核</a>
		{{#  } else { }}
		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">会员信息</a>
		{{#  } }}
	</script>

	<script>
		layui.use(['form','layer','jquery','laypage','table'],function() {
			var form = layui.form,
					layer = parent.layer === undefined ? layui.layer : parent.layer,
					laypage = layui.laypage,
					$ = layui.jquery,
					table = layui.table;

			table.render({
				elem: '#useradmin'
				,height: 510
				,url: '../../../getAllUser' //数据接口
				,page: true //开启分页
				,cols: [[ //表头
					{field: 'userId', title: 'ID', sort: true, fixed: 'left'}
					,{field: 'userName', title: '用户名'}
					,{field: 'email', title: '邮箱'}
					,{field: 'tel', title: '电话'}
					,{field: 'level', title: '客户等级',sort:true,templet:function (d) {
							switch (d.level) {
								case 1:
									return "初级客户";
								case 2:
									return "中级客户";
								case 3:
									return "高级客户";
							}
						}}
					,{field: 'integral', title: '积分', sort: true}
					,{field: 'operate', title: '操作',templet:'#operate'}
				]]
			});
			function reload(userId,userName){
				table.reload('useradmin', {
					method:'get'
					, where: {//参数列表
						'userId':userId,
						'userName':userName
					}
					, page: {
						curr: 1
					}
				})
			}
			$("#search").on("click",function () {
				var userId = $("#userId").val();
				var userName = $("#userName").val();
				reload(userId,userName);
			});
			table.on('tool(useradmin)', function(obj){
				if (obj.event === 'review'){
					var userId = obj.data.userId;
					var index = layer.msg('审核中，请稍候',{icon: 16,time:false,shade:0.8});
					setTimeout(function () {
						console.log(userId);
						$.post("/reviewNewUser",{userId:userId},function (data) {
							if (parseInt(data) > 0){
								layer.close(index);
								layer.msg("审核完成");
								reload("","");
							}
						});
					},2000);
				}
				if (obj.event === 'detail'){
                    layer.open({
                        type:2,
                        title:'用户信息',
                        closeBean:false,/*右上关闭*/
                        anim:2,
                        shade:[0.3,'#76EEC6'],
                        area:['800px','500px'],
                        content:'http://localhost:8088/getUserByUserId?userId='+obj.data.userId
                    });
				}
			});
		});
	</script>
</body>
</html>