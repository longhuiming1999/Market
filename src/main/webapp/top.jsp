<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <span>G</span>rocery
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
                        <span class="fa fa-truck" aria-hidden="true"></span>跟踪订单</a>
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
                    <input name="goodName" type="search" placeholder="How can we help you today?" required="">

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
        <h3>请选择您的位置</h3>
        <select class="list_of_cities">
            <optgroup label="Popular Cities">
                <option selected style="display:none;color:#eee;" value="0" id="locations">请选择城市</option>
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
                    <h3 class="agileinfo_sign">登录 </h3>
                    <p>
                        现在，让我们开始您的杂货店购物。没有帐户?
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
                            <input type="password" placeholder="Password" name="password" required="">
                        </div>
                        <div class="styled-input">
                            <input type="email" placeholder="E-mail" name="email" required="">
                        </div>
                        <div class="styled-input">
                            <input type="text" placeholder="Tel" name="tel" required="">
                        </div>
                        <input type="submit" value="注册">
                    </form>
                    <p>
                        <a href="#">点击注册即表示我同意您的条款</a>
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
                <select id="agileinfo-nav_search" name="agileinfo_search" required="" class="goodTypes">
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
                            <li>
                                <a class="nav-stylehead" href="index.jsp">主页
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="about.jsp">关于我们</a>
                            </li>

                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="faqs.jsp">常见问题解答</a>
                            </li>

                            <li>
                                <a class="" href="contact.jsp">联系我们</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- //navigation -->
<!-- banner-2 -->
<div class="page-head_agile_info_w3l">
</div>
