<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>地址管理</title>
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
                <li><a href="#">| 地址管理</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">地址管理
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>


        <div class="formDiv">
            <form action="#" class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">省份：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="provinceSelectId" name="province" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">城市：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="citySelectId" name="city" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">区域：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="townShipSelectId" name="township" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">详细地址：</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" name="detial" id="addDetail" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10" align="center">
                        <button class="btn btn-default" type="button" id="addAddressBtn">添加</button>
                        <button class="btn btn-default" type="button" id="cancelBtn">取消</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="updFormDiv">
            <form action="#" class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label">编号：</label>
                    <div class="col-sm-10">
                        <input class="form-control" name="did" hidden required readonly/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">省份：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="updProvinceSelectId" name="province" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">城市：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="updCitySelectId" name="city" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">区域：</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="updTownShipSelectId" name="township" required>
                            <option value=""></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">详情地址：</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" name="detial" id="updTextArea" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10" align="center">
                        <button class="btn btn-default" type="button" id="updBtnId">确认修改</button>
                        <button class="btn btn-default" type="button" id="updCancelBtn">取消</button>
                    </div>
                </div>
            </form>
        </div>

        <table class="table">
            <caption>
                <h3>
                    <button type="button" id="addAddressBtnId">添加地址</button>
                </h3>
                <h1>我的地址</h1>
            </caption>
            <thead>
            <tr>
                <th>地址编号</th>
                <th>省份</th>
                <th>城市</th>
                <th>区域</th>
                <th>详细地址</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${!empty addressList}">
                <c:forEach items="${addressList}" var="address">
                    <tr>
                        <td>${address.did}</td>
                        <td>${address.province}</td>
                        <td>${address.city}</td>
                        <td>${address.township}</td>
                        <td>${address.detial}</td>
                        <td>
                            <button type="button" data-did="${address.did}" class="deleteAddressBtnId">删除</button>
                            |
                            <button type="button" data-did="${address.did}" class="updateAddressBtnId">修改</button>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${empty addressList}">
                <tr>
                    <td colspan="5">暂无地址</td>
                </tr>
            </c:if>
            </tbody>
        </table>

    </div>
</div>
<!-- //checkout page -->
<!-- newsletter -->
<jsp:include page="bottom.jsp"/>

<script src="js/jquery-2.1.4.min.js"></script>
<script>
    $(window).load(function () {
        $(".formDiv").hide();
        $(".updFormDiv").hide();
        $.post("/findAllProvince", function (data) {
            var provinceList = eval(data);
            for (var province of provinceList) {
                var op1 = $('<option value= ' + province.pid + '>' + province.pname + '</option>');
                var op2 = $('<option value= ' + province.pid + '>' + province.pname + '</option>');
                $("select[name='province'][id='provinceSelectId']").append(op1);
                $("#updProvinceSelectId").append(op2);
            }
        })
    })

    $("select[name='province']").change(function () {
        var pid = $(this).val();
        $.post("/findCitysByPid", {pid: pid}, function (data) {
            $("#citySelectId>option").not(":first").remove();
            console.log($("#citySelectId").length);
            var citys = eval(data);
            for (var city of citys) {
                var op1 = $('<option value=' + city.cid + '>' + city.cname + '</option>');
                var op2 = $('<option value=' + city.cid + '>' + city.cname + '</option>');
                $("#citySelectId").append(op1);
                $("#updCitySelectId").append(op2);
            }

        })
    })

    $("select[name='city']").change(function () {
        var cid = $(this).val();
        $.post("/findTownShipsByCid", {cid: cid}, function (data) {
            $("#townShipSelectId>option").not(":first").remove();
            var townShips = eval(data);
            for (var townShip of townShips) {
                var op1 = $('<option value=' + townShip.tid + '>' + townShip.tname + '</option>');
                var op2 = $('<option value=' + townShip.tid + '>' + townShip.tname + '</option>');
                $("#townShipSelectId").append(op1);
                $("#updTownShipSelectId").append(op2);
            }

        })
    })

    $("#addAddressBtnId").click(function () {
        $(".formDiv").show();
    })

    $("#cancelBtn").click(function () {
        $(".formDiv").hide();
    })

    $(".deleteAddressBtnId").click(function () {
        var did = $(this).data('did');
        if (confirm("是否确认删除?")) {
            location.href = "deleteAddressByDid?did=" + did;
        } else {

        }
    })

    $(".updateAddressBtnId").click(function () {
        $(".updFormDiv").show();
        var did = $(this).data('did');
        $.get("findAddressByDid?did=" + did, function (data) {
            $("input[name='did']").val(data.did);
        })
    })

    $("#updCancelBtn").click(function () {
        $(".updFormDiv").hide();
    })

    $("#updBtnId").click(function () {
        var did = $("input[name='did']").val();
        var province = $("select[id='updProvinceSelectId']").find("option:selected").text();
        var city = $("select[id='updCitySelectId']").find("option:selected").text();
        var township = $("select[id='updTownShipSelectId']").find("option:selected").text();
        var detial = $("#updTextArea").val();
        var data = {};
        // var url = "updateAddress?did=" + did + "&province=" + province;
        // location.href = url;
        data.did = did;
        data.province = province;
        data.city = city;
        data.township = township;
        data.detial = detial;
        $.post("updateAddress", data, function (data) {
            if (data == "true") {
                window.location.reload(); // 刷新页面
            }
        })
    })

    $("#addAddressBtn").click(function () {
        var province = $("select[id='provinceSelectId']").find("option:selected").text();
        var city = $("select[id='citySelectId']").find("option:selected").text();
        var township = $("select[id='townShipSelectId']").find("option:selected").text();
        var detial = $("#addDetail").val();
        var data = {};
        data.province = province;
        data.city = city;
        data.township = township;
        data.detial = detial;
        $.post("saveAddress", data, function (data) {
            if (data == "true") {
                window.location.reload();
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