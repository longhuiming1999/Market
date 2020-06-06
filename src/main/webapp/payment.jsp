<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>payment</title>
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
                <li><a href="#">| 结算中心</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">完成支付
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>

        <div class="formDiv">
            <form action="saveOrder" method="post" class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">支付类型：</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="payType" required>
                            <option value=""></option>
                            <option value="1">银行卡</option>
                            <option value="2">微信</option>
                            <option value="3">支付宝</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">商品展示：</label>
                    <div class="col-sm-10">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th>fdid</th>
                                <th>FreshGoodsName</th>
                                <th>img</th>
                            </tr>
                            <c:forEach items="${list}" var="cartItemDto">
                                <tr>
                                    <td><input name="fdid" type="text" value="${cartItemDto.fdid}"/> </td>
                                    <td>${cartItemDto.goodsName}</td>
                                    <td><img src="img/${imgs.get(cartItemDto.fdid)}.jpg" width="50px" height="50px"/></td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">选择地址：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="addressSelect" name="address" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">总金额：</label>
                    <div class="col-sm-10">
                        <input type="text" name="totalPrice" value="${totalPrice}" readonly required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10" align="center">
                        <button class="btn btn-default" type="submit" id="addAddressBtn">支付</button>
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
        $.post("findAddressByUid", function (data) {
            var addressList = eval(data);
            for (var address of addressList) {
                var op = $('<option value=' + address.did + '>' + address.province + address.city + address.township + address.detial + '</option>');
                $("#addressSelect").append(op);
            }
        })
    })
</script>
<script src="js/common.js"/>
<script src="js/jquery.magnific-popup.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>

</html>