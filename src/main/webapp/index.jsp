<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>主页</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script>
        /*		addEventListener("load", function () {
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
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
    <style type="text/css">
        a {
            white-space: nowrap;
            overflow: hidden;
            display: block;
        }

        h3 {
            white-space: nowrap;
            overflow: hidden;
            display: block;
        }
    </style>
</head>

<body>
<!-- top-header -->
<div class="header-most-top">
    <p>杂货优惠区优惠和折扣</p>
</div>
<!-- //top-header -->
<!-- header-bot-->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <!-- header-bot-->
        <div class="col-md-4 logo_agile">
            <h1>
                <a href="index.jsp">
                    <span>F</span>resh
                    <span>S</span>hoppy
                    <img src="images/logo2.png" alt=" ">
                </a>
            </h1>
        </div>
        <!-- header-bot -->
        <div class="col-md-8 header">
            <!-- header lists -->
            <ul>
                <li>
                    <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>商店定位</a>
                </li>
                <li>
                    <a href="#" data-toggle="modal" data-target="#myModal1">
                        <span class="fa fa-truck" aria-hidden="true"></span>订单跟踪</a>
                </li>
                <li>
                    <span class="fa fa-phone" aria-hidden="true"></span> 13333333333
                </li>
                <c:choose>
                    <c:when test="${sessionScope.users == null}">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 登录 </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal2">
                                <span class="fa fa-pencil-square-o" aria-hidden="true"></span> 注
                                册 </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="/personCenter.jsp" id="personalCenter">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 个人中心 </a>
                        </li>
                        <li>
                            <a href="/userLogout" id="logout">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> 注销 </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <!-- //header lists -->
            <!-- search -->
            <div class="agileits_search">
                <form action="getBigSouSuoGoods" method="post">
                    <input name="goodName" type="search" placeholder="今天要来点什么？" required="">
                    <button type="submit" class="btn btn-default" aria-label="Left Align">
                        <span class="fa fa-search" aria-hidden="true"> </span>
                    </button>
                </form>
            </div>
            <!-- //search -->
            <!-- cart details -->
            <div class="top_nav_right">
                <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                    <c:if test="${sessionScope.users != null}">
                        <button id="cartBtn" class="w3view-cart" type="button" name="submit" value="">
                            <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                        </button>
                    </c:if>
                </div>
            </div>
            <!-- //cart details -->
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- shop locator (popup) -->
<!-- Button trigger modal(shop-locator) -->
<div id="small-dialog1" class="mfp-hide">
    <div class="select-city">
        <h3>Please Select Your Location</h3>
        <select class="list_of_cities">
            <optgroup label="Popular Cities">
                <option selected style="display:none;color:#eee;">Select City</option>
                <option>Birmingham</option>
                <option>Anchorage</option>
                <option>Phoenix</option>
                <option>Little Rock</option>
                <option>Los Angeles</option>
                <option>Denver</option>
                <option>Bridgeport</option>
                <option>Wilmington</option>
                <option>Jacksonville</option>
                <option>Atlanta</option>
                <option>Honolulu</option>
                <option>Boise</option>
                <option>Chicago</option>
                <option>Indianapolis</option>
            </optgroup>
        </select>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //shop locator (popup) -->
<!-- signin Model -->
<!-- Modal1 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign In </h3>
                    <p>
                        请登录, 开启您的生鲜之旅。 没有账号?
                        <a href="#" data-toggle="modal" data-target="#myModal2">
                            请注册</a>
                    </p>
                    <form action="#" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="用户名" id="username1" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="密码" id="password1" required="">
                        </div>
                        <input type="button" value="登录" id="signIn">
                    </form>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal1 -->
<!-- //signin Model -->
<!-- signup Model -->
<!-- Modal2 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">注册</h3>
                    <p>
                        快来加入杂货店吧！请设置您的帐户。
                    </p>
                    <form action="createUser" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="Name" name="userName" required="">
                        </div>
                        <div class="styled-input">
                            <input type="email" placeholder="E-mail" name="Email" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Password" name="password" required="">
                        </div>
                        <div class="styled-input">
                            <input type="text" placeholder="Tel" name="tel" required="">
                        </div>
                        <input type="submit" value="Sign Up">
                    </form>
                    <p>
                        <a href="#">By clicking register, I agree to your terms</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal2 -->
<!-- //signup Model -->
<!-- //header-bot -->
<!-- navigation -->
<div class="ban-top">
    <div class="container">
        <div class="agileits-navi_search">
            <form action="#" method="post">
                <select id="agileinfo-nav_search" class="goodTypes" name="agileinfo_search" required="">
                </select>
            </form>
        </div>
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1"
                                aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active">
                                <a class="nav-stylehead" href="index.jsp">主页
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="about.jsp">关于我们</a>
                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="faqs.jsp">常见问题解答</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- //navigation -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/">自助建站</a></div>
<!-- banner -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Big
                        <span>Save</span>
                    </h3>
                    <p>Get flat
                        <span>10%</span> Cashback</p>
                    <a class="button2" href="product.jsp">Shop Now </a>
                </div>
            </div>
        </div>
        <div class="item item2">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Healthy
                        <span>Saving</span>
                    </h3>
                    <p>Get Upto
                        <span>30%</span> Off</p>
                    <a class="button2" href="product.jsp">Shop Now </a>
                </div>
            </div>
        </div>
        <div class="item item3">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Big
                        <span>Deal</span>
                    </h3>
                    <p>Get Best Offer Upto
                        <span>20%</span>
                    </p>
                    <a class="button2" href="product.jsp">Shop Now </a>
                </div>
            </div>
        </div>
        <div class="item item4">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Today
                        <span>Discount</span>
                    </h3>
                    <p>Get Now
                        <span>40%</span> Discount</p>
                    <a class="button2" href="product.jsp">Shop Now </a>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- //banner -->

<!-- top Products -->
<div class="ads-grid">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">顶级产品
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <!-- product left -->
        <div class="side-bar col-md-3">
            <!-- deals -->
            <div class="deal-leftmk left-side" id="specialGoods">
            </div>
            <!-- //deals -->
        </div>
        <!-- //product left -->
        <!-- product right -->
        <div class="agileinfo-ads-display col-md-9">
            <div class="wrapper">
                <!-- first section (nuts) -->
                <div class="product-sec1" id="grandPa">
                </div>
                <!-- //first section (nuts) -->
                <!-- second section (nuts special) -->
                <div class="product-sec1 product-sec2">
                    <div class="col-xs-7 effect-bg">
                        <h3 class="">Pure Energy</h3>
                        <h6>Enjoy our all healthy Products</h6>
                        <p>Get Extra 10% Off</p>
                    </div>
                    <h3 class="w3l-nut-middle">Nuts & Dry Fruits</h3>
                    <div class="col-xs-5 bg-right-nut">
                        <img src="images/nut1.png" alt="">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //second section (nuts special) -->
                <!-- third section (oils) -->
                <div class="product-sec1" id="grandPa1">
                </div>
                <!-- //third section (oils) -->
                <!-- fourth section (noodles) -->
                <div class="product-sec1" id="grandPa2">
                </div>
                <!-- //fourth section (noodles) -->
            </div>
        </div>
        <!-- //product right -->
    </div>
</div>
<!-- //top products -->
<!-- special offers -->
<div class="featured-section" id="projects">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">特别优惠
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="content-bottom-in">
            <ul id="flexiselDemo1" class="specialOffers">
            </ul>
        </div>
    </div>
</div>
<!-- //special offers -->
<jsp:include page="bottom.jsp"/>

<!-- js-files -->
<!-- jquery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jquery -->
<script>
    $(function () {
    	$("#cartBtn").click(function () {
			location.href = "/toCartPage";
		})

        $("#signIn").click(function () {
            var name = $("#username1").val();
            var pass = $("#password1").val();
            $.post("/userLogin", {username: name, password: pass}, function (data) {
                if (data == "true") {
                    location.href = "index.jsp";
                }
            });
        });

        function goodType() {
            $.get("/getGoodTypes", function (data) {
                var option = "<option value=''>所有种类</option>"
                for (var key in data) {
                    option += "<option value='" + data[key].gtid + "'>" + data[key].gtname + "</option>"
                }
                $("#agileinfo-nav_search").append($(option));
            });
        }

        //初始化下拉框
        goodType();
        //获取被选中的种类
        $(".goodTypes").on("change", function () {
            var gtid = $(this).find(":selected").val();
            console.log(gtid);
            location.href = "getFreshGoods?gtid=" + gtid + "&time=" + new Date().toString();
        });
        //获取所有的特价商品
        $.get("/getSpecialGood", function (data) {
            var h3 = $('<h3 class="agileits-sear-head">特价促销</h3>');

            $("#specialGoods").append(h3);

            for (var key in data) {
                var divParent = $("<div class='special-sec1'></div>");
                var divChild1 = $("<div class='col-xs-4 img-deals'></div>");
                var divChild2 = $("<div class='col-xs-8 img-deal1'></div>");
                var divChild3 = $("<div class='clearfix'></div>");
                var imgs = data[key].img.split("-");
                var img = $("<img src='img/" + imgs[0] + ".jpg' style='width: 70px;height: 70px' />");
                var name = $("<h3>" + data[key].goodName + "</h3>");
                var a = $("<a href='getGoodDetailsByFdid2?fdid=" + data[key].fdid + "'>$" + data[key].price * data[key].discount / 100 + "</a>");
                divChild1.append(img);
                divChild2.append(name);
                divChild2.append(a);
                divParent.append(divChild1);
                divParent.append(divChild2);
                divParent.append(divChild3);
                $("#specialGoods").append(divParent);
            }
        });
        //获取所有的特别优惠
        $.get("/getDiscountGoods", function (data) {
            for (var key in data) {
                var li = $("<li></li>");
                var divParent = $("<div class='w3l-specilamk'></div>");
                var divChild1 = $("<div class='speioffer-agile'><div>");
                var divChild2 = $("<div class='product-name-w3l'><div>");
                //第一个子div
                var imgs = data[key].img.split("-");
                var img =
                    $("<a href='getGoodDetailsByFdid2?fdid=" + data[key].fdid + "'><img src='img/" + imgs[0] + ".jpg' style='width: 150px;height: 150px; ' /></a>");
                divChild1.append(img);

                //第二个子div
                var h4 = $("<h4><a href='getGoodDetailsByFdid2?fdid=" + data[key].fdid + "'>" + data[key].goodName + "</a></h4>");
                divChild2.append(h4);
                var divGrandson1 = $("<div class='w3l-pricehkj'></div>");
                //divGrandson1中的标签
                var h6 = $("<h6>$" + data[key].price * data[key].discount / 100 + "</h6>");

                var save = $('<p>原价$' + data[key].price + '</p>');
                divGrandson1.append(h6);
                divGrandson1.append(save);
                var divGrandson2 = $("<div class='snipcart-details top_brand_home_details item_add single-item hvr-outline-out'></div>");
                //divGrandson2中的标签
                var form = $("<form action='addGoodToCart' method='post'></form>");
                var fieldset = $("<fieldset></fieldset>");

                var input1 = $('<input type="hidden" name="fdid" value="' + data[key].fdid + '" />');
                var input2 = $('<input type="hidden" name="count" value="1" />');
                var input3 = $('<input type="hidden" name="business" value=" " />');
                var input4 = $('<input type="hidden" name="item_name" value="' + data[key].goodName + '" />');
                var input5 = $('<input type="hidden" name="amount" value="' + data[key].price + '" />');
                var input6 = $('<input type="hidden" name="currency_code" value="USD" />');
                var input7 = $('<input type="hidden" name="return" value=" " />');
                var input8 = $('<input type="hidden" name="cancel_return" value=" " />');
                var input9 = $('<input type="submit" name="submit" value="加入购物车" class="button" />');

                fieldset.append(input1);
                fieldset.append(input2);
                fieldset.append(input3);
                fieldset.append(input4);
                fieldset.append(input5);
                fieldset.append(input6);
                fieldset.append(input7);
                fieldset.append(input8);
                fieldset.append(input9);

                form.append(fieldset);
                divGrandson2.append(form);

                divParent.append(divChild1);
                divChild2.append(divGrandson1);
                divChild2.append(divGrandson2);
                divParent.append(divChild2);
                li.append(divParent);
                $(".specialOffers").append(li);
            }
            lunxun();
        });

        //获取海鲜类产品
        $.get("/getHaiXians", function (data) {
            var h3 = $('<h3 class="heading-tittle">海鲜</h3>');
            $('#grandPa').append(h3);
            var divClearfix = $('<div class="clearfix"></div>');
            for (var key in data) {
                var divParent = $('<div class="men-pro-item simpleCart_shelfItem" ></div>');
                //第一个子div
                var divChild1 = $('<div class="men-thumb-item"></div>');
                var imgs = data[key].img.split("-");
                //1
                var img = $('<img src="img/' + imgs[0] + '.jpg" alt="" style="width: 150px;height: 150px">');
                //2
                var div2 = $('<div class="men-cart-pro"></div>');
                //0201
                var div0102 = $('<div class="inner-men-cart-pro"></div>');
                //020101
                var a1 = $('<a href="getGoodDetailsByFdid2?fdid=' + data[key].fdid + '" class="link-product-add-cart">Quick View</a>');
                //3
                var span = $('<span class="product-new-top">New</span>3');
                div0102.append(a1);
                div2.append(div0102);
                divChild1.append(img);
                divChild1.append(div2);
                divChild1.append(span);

                //第二个子div
                var divChild2 = $('<div class="item-info-product "></div>');
                //1
                var a2 = $('<h4><a href="getGoodDetailsByFdid2?fdid=' + data[key].fdid + '">' + data[key].goodName + '</a></h4>');
                //2
                var div02 = $('<div class="info-product-price"></div>');
                //0201
                var div0201 = $('<span class="item_price">$' + data[key].price + '</span>');
                //0202
                var div0202 = $('<del>$' + data[key].price + '</del>');
                div02.append(div0201);
                div02.append(div0202);
                //3
                var div03 = $('<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out"></div>');
                //0301
                var div0301 = $('<form action="#" method="post"></form>');
                //0301f
                var fieldset = $('<fieldset></fieldset>');

                var input1 = $('<input type="hidden" name="cmd" value="_cart" />');
                var input2 = $('<input type="hidden" name="add" value="1" />');
                var input3 = $('<input type="hidden" name="business" value=" " />');
                var input4 = $('<input type="hidden" name="item_name" value="' + data[key].goodName + '" />');
                var input5 = $('<input type="hidden" name="amount" value="' + data[key].price + '" />');
                var input6 = $('<input type="hidden" name="currency_code" value="USD" />');
                var input7 = $('<input type="hidden" name="return" value=" " />');
                var input8 = $('<input type="hidden" name="cancel_return" value=" " />');
                var input9 = $('<input type="submit" name="submit" value="加入购物车" class="button" />');

                fieldset.append(input1);
                fieldset.append(input2);
                fieldset.append(input3);
                fieldset.append(input4);
                fieldset.append(input5);
                fieldset.append(input6);
                fieldset.append(input7);
                fieldset.append(input8);
                fieldset.append(input9);

                div0301.append(fieldset);
                div03.append(div0301);
                //向子2中添加元素
                divChild2.append(a2);
                divChild2.append(div02);
                divChild2.append(div03);
                divParent.append(divChild1);
                divParent.append(divChild2);
                var parents = $('<div class="col-md-4 product-men">');
                parents.append(divParent);
                $('#grandPa').append(parents);

            }
            $('#grandPa').append(divClearfix);

        });
        //获取酒水类产品
        $.get("/getJiuShuis", function (data) {
            var h3 = $('<h3 class="heading-tittle">酒水</h3>');
            $('#grandPa1').append(h3);
            var divClearfix = $('<div class="clearfix"></div>');
            for (var key in data) {
                var divParent = $('<div class="men-pro-item simpleCart_shelfItem" ></div>');
                //第一个子div
                var divChild1 = $('<div class="men-thumb-item"></div>');
                var imgs = data[key].img.split("-");
                //1
                var img = $('<img src="img/' + imgs[0] + '.jpg" alt="" style="width: 150px;height: 150px">');
                //2
                var div2 = $('<div class="men-cart-pro"></div>');
                //0201
                var div0102 = $('<div class="inner-men-cart-pro"></div>');
                //020101
                var a1 = $('<a href="getGoodDetailsByFdid2?fdid=' + data[key].fdid + '" class="link-product-add-cart">Quick View</a>');
                //3
                var span = $('<span class="product-new-top">New</span>3');
                div0102.append(a1);
                div2.append(div0102);
                divChild1.append(img);
                divChild1.append(div2);
                divChild1.append(span);

                //第二个子div
                var divChild2 = $('<div class="item-info-product "></div>');
                //1
                var a2 = $('<h4><a href="getGoodDetailsByFdid2?fdid=' + data[key].fdid + '">' + data[key].goodName + '</a></h4>');
                //2
                var div02 = $('<div class="info-product-price"></div>');
                //0201
                var div0201 = $('<span class="item_price">$' + data[key].price + '</span>');
                //0202
                var div0202 = $('<del>$' + data[key].price + '</del>');
                div02.append(div0201);
                div02.append(div0202);
                //3
                var div03 = $('<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out"></div>');
                //0301
                var div0301 = $('<form action="#" method="post"></form>');
                //0301f
                var fieldset = $('<fieldset></fieldset>');

                var input1 = $('<input type="hidden" name="cmd" value="_cart" />');
                var input2 = $('<input type="hidden" name="add" value="1" />');
                var input3 = $('<input type="hidden" name="business" value=" " />');
                var input4 = $('<input type="hidden" name="item_name" value="' + data[key].goodName + '" />');
                var input5 = $('<input type="hidden" name="amount" value="' + data[key].price + '" />');
                var input6 = $('<input type="hidden" name="currency_code" value="USD" />');
                var input7 = $('<input type="hidden" name="return" value=" " />');
                var input8 = $('<input type="hidden" name="cancel_return" value=" " />');
                var input9 = $('<input type="submit" name="submit" value="加入购物车" class="button" />');

                fieldset.append(input1);
                fieldset.append(input2);
                fieldset.append(input3);
                fieldset.append(input4);
                fieldset.append(input5);
                fieldset.append(input6);
                fieldset.append(input7);
                fieldset.append(input8);
                fieldset.append(input9);

                div0301.append(fieldset);
                div03.append(div0301);
                //向子2中添加元素
                divChild2.append(a2);
                divChild2.append(div02);
                divChild2.append(div03);
                divParent.append(divChild1);
                divParent.append(divChild2);
                var parents = $('<div class="col-md-4 product-men">');
                parents.append(divParent);
                $('#grandPa1').append(parents);

            }
            $('#grandPa1').append(divClearfix);

        });
        //获取水果类产品
        $.get("/getFruits", function (data) {
            var h3 = $('<h3 class="heading-tittle">水果</h3>');
            $('#grandPa2').append(h3);
            var divClearfix = $('<div class="clearfix"></div>');
            for (var key in data) {
                var divParent = $('<div class="men-pro-item simpleCart_shelfItem" ></div>');
                //第一个子div
                var divChild1 = $('<div class="men-thumb-item"></div>');
                var imgs = data[key].img.split("-");
                //1
                var img = $('<img src="img/' + imgs[0] + '.jpg" alt="" style="width: 150px;height: 150px">');
                //2
                var div2 = $('<div class="men-cart-pro"></div>');
                //0201
                var div0102 = $('<div class="inner-men-cart-pro"></div>');
                //020101
                var a1 = $('<a href="getGoodDetailsByFdid2?fdid=' + data[key].fdid + '" class="link-product-add-cart">Quick View</a>');
                //3
                var span = $('<span class="product-new-top">New</span>3');
                div0102.append(a1);
                div2.append(div0102);
                divChild1.append(img);
                divChild1.append(div2);
                divChild1.append(span);

                //第二个子div
                var divChild2 = $('<div class="item-info-product "></div>');
                //1
                var a2 = $('<h4><a href="getGoodDetailsByFdid2?fdid=' + data[key].fdid + '">' + data[key].goodName + '</a></h4>');
                //2
                var div02 = $('<div class="info-product-price"></div>');
                //0201
                var div0201 = $('<span class="item_price">$' + data[key].price + '</span>');
                //0202
                var div0202 = $('<del>$' + data[key].price + '</del>');
                div02.append(div0201);
                div02.append(div0202);
                //3
                var div03 = $('<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out"></div>');
                //0301
                /*var div0301 = $('<form action="addGoodToCart" method="post"></form>');
                //0301f
                var fieldset = $('<fieldset></fieldset>');

                var input1 =$('<input type="hidden" name="cmd" value="_cart" />');
                var input2 =$('<input type="hidden" name="add" value="1" />');
                var input3 =$('<input type="hidden" name="business" value=" " />');
                var input4 =$('<input type="hidden" name="item_name" value="'+data[key].goodName+'" />');
                var input5 =$('<input type="hidden" name="amount" value="'+data[key].price+'" />');
                var input6 =$('<input type="hidden" name="currency_code" value="USD" />');
                var input7 =$('<input type="hidden" name="return" value=" " />');
                var input8 =$('<input type="hidden" name="cancel_return" value=" " />');*/
                var input9 = $('<input type="button"  value="加入购物车" class="button" id="addCart"/>');

                /*fieldset.append(input1);
                fieldset.append(input2);
                fieldset.append(input3);
                fieldset.append(input4);
                fieldset.append(input5);
                fieldset.append(input6);
                fieldset.append(input7);
                fieldset.append(input8);
                fieldset.append(input9);
*/
                /*div0301.append(input9);*/
                div03.append(input9);
                //向子2中添加元素
                divChild2.append(a2);
                divChild2.append(div02);
                divChild2.append(div03);
                divParent.append(divChild1);
                divParent.append(divChild2);
                var parents = $('<div class="col-md-4 product-men">');
                parents.append(divParent);
                $('#grandPa2').append(parents);

            }
            $('#grandPa2').append(divClearfix);

        });
        /*			$("#addCart").click(function () {
                        console.log(haha);

                    });*/

    });

</script>

<!-- popup modal (for signin & signup)-->
<script src="js/jquery.magnific-popup.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- Large modal -->
<!-- <script>
    $('#').modal('show');
</script> -->
<!-- //popup modal (for signin & signup)-->

<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    /*function addCart() {
        paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js

        paypalm.minicartk.cart.on('checkout', function (evt) {
            var items = this.items(),
                    len = items.length,
                    total = 0,
                    i;

            // Count the number of each item in the cart
            for (i = 0; i < len; i++) {
                total += items[i].get('quantity');
            }

            if (total < 3) {
                alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                evt.preventDefault();
            }
        });
    }*/
</script>
<!-- //cart-js -->

<!-- price range (top products) -->
<script src="js/jquery-ui.js"></script>
<script>
    //<![CDATA[
    $(window).load(function () {
        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 9000,
            values: [50, 6000],
            slide: function (event, ui) {
                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
            }
        });
        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

    }); //]]>
</script>
<!-- //price range (top products) -->

<!-- flexisel (for special offers) -->
<script src="js/jquery.flexisel.js"></script>
<script>
    function lunxun() {
        $("#flexiselDemo1").flexisel({
            visibleItems: 3,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 2
                }
            }
        });
    }
</script>
<script>
    $(window).load(function () {
        /*		$("#flexiselDemo1").flexisel({
                    visibleItems: 3,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 2
                        }
                    }
                });*/

    });
</script>
<!-- //flexisel (for special offers) -->

<!-- password-script -->
<script>
    window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        /*document.getElementById("password2").onchange = validatePassword;*/
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }
</script>
<!-- //password-script -->

<!-- smoothscroll -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->


</body>

</html>