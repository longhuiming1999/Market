<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>主页-${goodType.gtname}</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <style>
        .goodsImg {
            width: 120px;
            height: 160px;
        }

        .goodsHref {
            max-width: 180px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            display: block;

        }

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

        #bianJu {
            margin-top: 20px;
        }

    </style>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <!--//tags -->
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/font-awesome.css" rel="stylesheet">
    <!--pop-up-box-->
    <link href="/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//pop-up-box-->
    <!-- price range -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
</head>

<body>
<% int i = 0;%>
<jsp:include page="top.jsp"/>

<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.jsp">主页</a>
                    <%--<i>|</i>--%>
                </li>
                <li><a href="#">丨${goodType.gtname}</a></li>
            </ul>
        </div>

    </div>
</div>
<!-- //page -->
<!-- top Products -->
<div class="ads-grid">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">${goodType.gtname}
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <!-- product left -->
        <div class="side-bar col-md-3">
            <div class="search-hotel">
                <h3 class="agileits-sear-head">搜索</h3>
                <form action="getSouSuoGoods" method="post">
                    <input type="search" placeholder="物品名字" name="goodName" required="">
                    <input type="hidden" name="gtid" value="${goodType.gtid}">
                    <input type="submit" value=" ">
                </form>
            </div>
            <div class="left-side">
                <h3 class="agileits-sear-head">食物偏好</h3>
                <ul>
                    <li>
                        <input type="radio" name="pre" value="0" class="souSuo">
                        <span class="span">其他</span>
                    </li>
                    <li>
                        <input type="radio" name="pre" value="2" class="souSuo">
                        <span class="span">素食主义</span>
                    </li>
                    <li>
                        <input type="radio" name="pre" value="1" class="souSuo">
                        <span class="span">荤食主义</span>
                    </li>
                </ul>
            </div>
            <div class="left-side">
                <h3 class="agileits-sear-head">折扣</h3>
                <ul>
                    <li>
                        <input type="radio" name="discount" value="5" class="souSuo">
                        <span class="span">5% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="10" class="souSuo">
                        <span class="span">10% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="20" class="souSuo">
                        <span class="span">20% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="30" class="souSuo">
                        <span class="span">30% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="50" class="souSuo">
                        <span class="span">50% or More</span>
                    </li>
                    <li>
                        <input type="radio" name="discount" value="60" class="souSuo">
                        <span class="span">60% or More</span>
                    </li>
                </ul>
            </div>
            <div class="deal-leftmk left-side" id="specialGoods">
            </div>
            <!-- //deals -->
        </div>
        <!-- //product left -->
        <!-- product right -->
        <div class="agileinfo-ads-display col-md-9 w3l-rightpro">
            <div class="wrapper">
                <!-- first section -->

                <div class="product-sec1" id="products">
                    <c:forEach items="${freshGoods}" var="goods">

                        <div class="col-xs-4 product-men" id="bianJu">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="img/${imgs.get(goods.fdid)}.jpg" alt="" class="goodsImg">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="getGoodDetailsByFdid?fdid=${goods.fdid}"
                                               class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <a href="getGoodDetailsByFdid?fdid=${goods.fdid}"
                                           class="goodsHref">${goods.goodName}</a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">${goods.price*goods.discount/100}</span>
                                        <del>$${goods.price}</del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#">
                                            <fieldset>
                                                <input type="button" data-fdid="${goods.fdid}" name="addGoodsToCartBtnId" value="Add to cart" class="button"/>
                                            </fieldset>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <% i = i + 1;%>
                    </c:forEach>
                    <div class="clearfix"></div>

                </div>
                <!-- //first section -->


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
<jsp:include page="bottom.jsp"/>

<!-- js-files -->
<!-- jquery -->
<script src="js/jquery-2.1.4.min.js"></script>

<script>
    $(function () {
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


        $(function () {
            $("input[name='addGoodsToCartBtnId']").click(function () {
                var fdid = $(this).data('fdid');
                $.post("cart", {fdid: fdid}, function (data) {
                    if (data == "true") {
                        alert("添加成功!");
                    }
                })
            })
        });
    })
</script>


<!-- popup modal (for signin & signup)-->
<script src="js/jquery.magnific-popup.js"></script>

<!-- price range (top products) -->
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.flexisel.js"></script>
<script src="js/common.js"/>
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
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>

</html>