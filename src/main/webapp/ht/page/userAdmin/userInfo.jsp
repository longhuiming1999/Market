<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>用户信息</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../../layui/css/layui.css" />
</head>
<body class="childrenBody">
	<form class="layui-form">
		<div class="user_left">
			<div class="layui-form-item">
			    <label class="layui-form-label">用户ID</label>
			    <div class="layui-input-block">
			    	<input type="text" value="${users.userId}" readonly="readonly" class="layui-input layui-disabled">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">用户名</label>
			    <div class="layui-input-block">
			    	<input type="text" value="${users.userName}" readonly="readonly" class="layui-input layui-disabled">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">邮箱</label>
			    <div class="layui-input-block">
			    	<input type="text" value="${users.email}" readonly="readonly" class="layui-input realName">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">手机号码</label>
			    <div class="layui-input-block">
			    	<input type="tel" value="${users.tel}" readonly="readonly" class="layui-input userPhone">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">客户等级</label>
			    <div class="layui-input-block">
                    <c:if test="${users.level==1}">
                        <c:set var="level" value="初级客户"/>
                    </c:if>
			    	<input type="text" value="${level}" readonly="readonly" class="layui-input userEmail">
			    </div>
			</div>
			<div class="layui-form-item">
			    <label class="layui-form-label">客户贡献</label>
			    <div class="layui-input-block">
                    <input type="text" value="${users.integral}" readonly="readonly" class="layui-input userEmail">
			    </div>
			</div>
		</div>
		<div class="layui-form-item" style="margin-left: 5%;">
		    <div class="layui-input-block">
		    	<button class="layui-btn" lay-submit="" lay-filter="changeUser">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		</div>
	</form>
	<script type="text/javascript" src="../../../layui/layui.js"></script>
    <script>
        layui.use(['form','layer','jquery','laypage','table'],function() {
            var form = layui.form,
                layer = parent.layer === undefined ? layui.layer : parent.layer,
                laypage = layui.laypage,
                $ = layui.jquery,
                table = layui.table;
        });
    </script>
</body>
</html>