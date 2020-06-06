<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Checkout</title>
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
                <li><a href="#">| 购物车</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">购物车
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="checkout-right">
            <h4>您的购物车：
            </h4>

            <div class="table-responsive">
                <table class="timetable_sub">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="all"/></th>
                        <th>fdid</th>
                        <th>FreshGoodsName</th>
                        <th>goodsType</th>
                        <th>img</th>
                        <th>price</th>
                        <th>discount</th>
                        <th>count</th>
                        <th>summery</th>
                        <th>delete</th>
                    </tr>
                    </thead>
                    <tbody class="cart1">
                    <c:if test="${!empty pageBean.dataList}">
                        <form method="post" action="saveCartItem">
                            <c:forEach items="${pageBean.dataList}" var="cart">
                                <tr>
                                    <td><input type="checkbox" name="one" value="${cart.fdid}"/></td>
                                    <td>${cart.fdid}</td>
                                    <td>${cart.goodsName}</td>
                                    <td>${cart.goodsType}</td>
                                    <td><img src="img/${imgs.get(cart.fdid)}.jpg" width="50px" height="50px"/></td>
                                    <td>${cart.price}</td>
                                    <td>${cart.discount}</td>
                                    <td><input type="number" data-cid="${cart.cid}" value="${cart.count}"/></td>
                                    <td>${cart.count * cart.price * cart.discount / 100}</td>
                                    <td>
                                        <button name="deleteBtn1" type="button" class="btn-danger"
                                                data-index="${cart.fdid}">
                                            delete
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            <tr align="center">
                                <td colspan="10">
                                    <button type="submit" class="btn-group-lg" id="completeOrder">填写订单</button>
                                </td>
                            </tr>
                        </form>
                    </c:if>
                    <c:if test="${empty pageBean.dataList}">
                        <tr>
                            <td colspan="10" align="center"><h1>您的购物车是空的！快去<a href="/index.jsp">选购</a>吧!!!</h1></td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"/>

<script src="js/jquery-2.1.4.min.js"></script>
<script>
    $("#cartBtn").click(function () {
        location.href = "/toCartPage";
    })

    $("input[type='number']").change(function () {
        var count = $(this).val();
        var cid = $(this).data('cid');
        location.href = "/updateCartByFdid?count=" + count + "&cid=" + cid;
    })
    $("#all").click(function () {
        $("input[name='one'][type='checkbox']").prop("checked", $("#all").prop("checked"));
    })

    $("input[name='one'][type='checkbox']").click(function () {
        var $ones = $("input[name='one'][type='checkbox']");
        $("#all").prop("checked", $ones.length == $ones.filter(":checked").length ? true : false);
    })

    $("button[name='deleteBtn1']").click(function () {
        var fdid = $(this).data("index");
        if (confirm("是否删除改购物车信息?")) {
            $.get("/deleteCartByFdid?fdid=" + fdid, function (data) {
                location.href = "/toCartPage";
            });
        } else {

        }
    })
</script>
<!-- //jquery -->
<script src="js/common.js"/>
<script src="js/jquery.magnific-popup.js"></script>
<script src="js/minicart.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script src="js/bootstrap.js"></script>
</body>

</html>