<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>personalCenter</title>
    <!--/tags -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script>
        /*addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }*/
    </script>
    <!--//tags -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/font-awesome.css" rel="stylesheet">
    <!--pop-up-box-->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//pop-up-box-->
    <!-- price range -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <!-- flexslider -->
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
    <style type="text/css">
        a {
            white-space: nowrap;
            overflow: hidden;
            display: block;
        }
    </style>
</head>

<body>
<jsp:include page="top.jsp"/>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.jsp">Home</a>

                </li>
                <li><a href="#">| 个人中心</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">个人中心
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <table class="table">
            <caption>
                <h1>个人信息</h1>
            </caption>
            <thead>
            <tr>
                <th>用户</th>
                <th>邮箱</th>
                <th>联系方式</th>
                <th>用户等级</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${sessionScope.users.userName}</td>
                <td>${sessionScope.users.email}</td>
                <td>${sessionScope.users.tel}</td>
                <td>${sessionScope.users.level}</td>
                <td>
                    <button type="button" id="updateUserId">修改个人信息</button>
                    <button type="button" id="addressManagerId">地址管理</button>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="formDiv" style="background-color: pink">
            <form method="post" action="updateUser">
                <div>
                    <label>账号：</label>
                    <div>
                        <input type="text" name="userName" value="${sessionScope.users.userName}" readonly required/>
                    </div>
                </div>
                <div>
                    <label>密码：</label>
                    <div>
                        <input type="password" name="password" value="${sessionScope.users.password}" required/>
                    </div>
                </div>
                <div>
                    <label>邮箱：</label>
                    <div>
                        <input type="email" name="email" value="${sessionScope.users.email}" required/>
                    </div>
                </div>
                <div>
                    <label>手机号码：</label>
                    <div>
                        <input type="text" name="tel" value="${sessionScope.users.tel}" required/>
                    </div>
                </div>
                <div>
                    <div>
                        <button type="submit">提交</button>
                    </div>
                </div>
                <div>
                    <div>
                        <button type="button" id="cancelBtn">取消</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- //checkout page -->
<!-- newsletter -->
<jsp:include page="bottom.jsp"/>

<script src="js/jquery-2.1.4.min.js"></script>
<script>
    $(window).load(function () {
        $(".formDiv").hide();
    })

    $("#updateUserId").click(function () {
        $(".formDiv").show();
    })

    $("#cancelBtn").click(function () {
        $(".formDiv").hide();
    })

    $("#addressManagerId").click(function () {
        location.href = "/getAddressByUid";
    })

</script>
<script src="js/common.js"/>
<script src="js/jquery.magnific-popup.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>

</html>