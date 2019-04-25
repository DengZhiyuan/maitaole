﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>手机回收_麦淘乐</title>
    <base href="<%=request.getContextPath()%>/"/>
    <meta name="keywords" content="手机回收,二手手机回收,旧手机回收,废旧手机回收,二手手机交易,二手手机价格,二手手机估价,手机回收价格"/>
    <meta name="description" content="麦淘乐二手手机回收，为您提供各种品牌的二手手机、旧手机、废旧手机的回收交易、专业检测、价格评估服务，给您一个满意的二手手机回收价格。"/>
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/ershoushouji.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/ershoushouji.html">
    <link href="favicon.ico" type=image/x-icon rel="Icon">
    <link href="css/new_css/global.css" rel="stylesheet" type="text/css">
    <script src="js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="js/new_js/new_public.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script type="text/javascript">
        function selectcity(url) {
            open_div_extends('切换地区', url, 'Loading_child');
        }
    </script>
    <link href="css/new_global.css" rel="stylesheet" type="text/css">
    <script src="js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>
    <script src="js/new_js/lrtk.js" type="text/javascript"></script>
    <script src="js/new_js/menu.js" type="text/javascript"></script>
    <script src="js/new_js/index.js" type="text/javascript"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/alert_zhe.css"/>
<script type="text/javascript" src="js/alert_zhe.js"></script>
<div id="Loading_child" class="Loading" style="display:none; height:480px;" onDblClick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img
                    src="images/close1.gif" border="0"/></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">
                <iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="450" border="0"
                        frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div><!--头部-->
<div class="shortcut">
    <div class="page">
        <div class="shortcut-left">
            <ul>
                <li class="city"><span>当前：
        <span id="selectcity_new">
        </span>
        <a rel="nofollow" href="javascript:void(0);">[切换城市]</a></span></li>
            </ul>
        </div>
        <div class="shortcut-right">
            <ul id='login_show'>
                <li><a href="/goods/login" rel="nofollow">登录</a></li>
                <li><a href="/goods/register" rel="nofollow">注册</a></li>
                
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header">
    <div class="page">
        <h1 class="logo"><a href=""><img src="images/new_images/logo.png" width="171" height="43"
                                         title="二手手机回收交易网"/></a></h1>
        
    </div>
</div>
<!--头部-->
<script type="text/javascript" src="js/goods.js"></script>
<div class="new_search" style="padding-bottom:20px">
    <div class="search-box">
        <div class="search-title">搜一下，看看你的二手闲置还值多少钱</div>
        <div class="search">
            <div class="search-fenlei" id="search-fenlei">
                <div class="set" id="all_type">手机</div>
                <div class="search-list">
                    <ul>
                        <li class="search-list-iconall"><a href="javascript:void(0)" rel="nofollow"><span
                                onClick="t_click(this,'goods.html')">全部分类</span></a></li>
                        <li class="search-list-icon1"><a href="javascript:void(0)" rel="nofollow"><span
                                onClick="t_click(this,'ershoushouji.html')">手机</span></a></li>
                    </ul>
                </div>
            </div>
            <form name="top_goods_search" id="top_goods_search" action="phone/phone" method="post">
                <input type="text" name="phoneName" id="top_name" value="请输入品牌型号搜索" class="input-txt"
                       onkeydown="if(event.keyCode==13) return top_search_goods();"
                       onFocus="if(this.value=='请输入品牌型号搜索'){this.value='';}"
                       onblur="if(this.value==''){this.value='请输入品牌型号搜索';}"/>
                <input type="hidden" name="pageNo" value="1">
                <input type="submit" value="" class="input-btn"/>
            </form>
            <%--<script type="text/javascript">
                $("#top_goods_search").submit();
            </script>--%>
        </div>
    </div>
</div>
<!--查询结果-->
<div id="vueId" class="search_list" >
    <div class="page">
        <div class="current"><a href="">首页</a><span>></span><a href="goods.html">闲置回收</a>
            <span>></span><a href="ershoushouji.html">手机</a>
            <em></em>
        </div>
        <div class="side_left">
            <dl class="side_list">
                <dt>搜索结果分类</dt>
                <template v-for="(type,index) in typeList">
                    <dd class="item_on" v-if="index == 0"><a v-on:click="choose(brandURL+'/'+type.typeId)" v-bind:title="type.typeName+'回收价格评估'"><b
                            v-bind:class="'item'+(index+1)">&nbsp;</b><em>{{type.typeName}}</em><span>&nbsp;</span></a></dd>
                    <dd class="" v-else><a @click="choose(brandURL+type.typeId)" v-bind:title="type.typeName+'回收价格评估'"><b
                            v-bind:class="'item'+(index+1)">&nbsp;</b><em>{{type.typeName}}</em><span>&nbsp;</span></a></dd>
                </template>
                <%--<dd class="item_on"><a href="ershoushouji.html" title="手机回收价格评估"><b
                        class="item1">&nbsp;</b><em>手机</em><span>&nbsp;</span></a></dd>
                <dd class=""><a href="ershoupingguo.html" title="苹果系列回收价格评估"><b
                        class="item2">&nbsp;</b><em>苹果系列</em><span>&nbsp;</span></a></dd>
                <dd class=""><a href="ershoupingban.html" title="平板电脑回收价格评估"><b
                        class="item3">&nbsp;</b><em>平板电脑</em><span>&nbsp;</span></a></dd>
                <dd class=""><a href="ershoubijiben.html" title="笔记本回收价格评估"><b
                        class="item4">&nbsp;</b><em>笔记本</em><span>&nbsp;</span></a></dd>
                <dd class=""><a href="ershoushumaxiangji.html" title="数码相机回收价格评估"><b
                        class="item5">&nbsp;</b><em>数码相机</em><span>&nbsp;</span></a></dd>
                <dd class=""><a href="ershouyouxiji.html" title="游戏机回收价格评估"><b
                        class="item6">&nbsp;</b><em>游戏机</em><span>&nbsp;</span></a></dd>
                <dd class=""><a href="ershoujingtou.html" title="镜头回收价格评估"><b class="item7">&nbsp;</b><em>镜头</em><span>&nbsp;</span></a>
                </dd>
                <dd class="last"><a href="wurenji.html" title="无人机回收价格评估"><b class="item8">&nbsp;</b><em>无人机</em><span>&nbsp;</span></a>
                </dd>--%>
            </dl>
            <dl class="side_hot">
                <dt>最近热门回收</dt>
                <dd>
                    <div class="img2">
                        <img src="http://img.ihuigo.com/goods_a/f6a645a58a6b36cb42e8ef1af0364101.jpg" width="42"
                             height="31" title="ipad mini回收价格评估"/>
                    </div>
                    <div class="txt2">
                        <p style="width:120px;">
                            <a href="goods/info/17015.html" title="ipad mini回收价格评估">ipad mini</a></p>462
                    </div>
                    <div class="clear"></div>
                </dd>
            </dl>
            <ul class="hotline">
                                <li><img src="images/icon30.png" alt="麦淘乐手机回收400电话咨询"
                         style="vertical-align:middle"><span>400-xxxx-xxx</span></li>
            </ul>
        </div>
        <div class="side_right">
            <!--全部手机品牌-->
            <div class="brand">
                <div class="brand_main">
                    <div class="brand_hot">
                        <%--<c:forEach items="${allType}" var="list">--%>
                            <template v-for="brand in brandList">
                                <a v-bind:href="'goods/phone?pageNo=1&phoneName='+brand.brandName">{{brand.brandName}}</a>
                                <em>|</em>
                            </template>
                        <%--</c:forEach>--%>
                    </div>
                </div>
                <div class="title2"><span><a href="goods.html"><strong>手机</strong> 品牌</a></span></div>
            </div>
            <!--全部手机品牌-->
            <div class="search_main">
                <div class="search_title"><h2 class="list-item">手机回收</h2>&nbsp;&nbsp;&nbsp;&nbsp;<em></em>搜索到<em>
                    1852 </em>个结果
                </div>
                <dl class="pic_list">
                    <c:forEach items="${phones}" var="phones">
                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img"><a href="" title="回收价格评估"><img
                                    src="${phones.img}" width="180"
                                    height="135" alt="闲置回收价格评估"/></a></div>
                            <p class="name">${phones.mobileName}</p>
                            <!--<p class="price">回收价：<em>￥3080</em></p>-->
                            <p class="pinggu"><a href="goods/info/${phones.id}" title="在线评估${phones.mobileName}回收价格"><!----></a>
                            </p>
                            <div class="hot"><img src="images/hot.png"/></div>
                        </div>
                    </dd>
                    </c:forEach>
                    <div class="clear"></div>
                </dl>
                <div class="clear"></div>
                <div class="pageStr">
                    <div class="ihuigo_page">
                        <c:choose>
                            <c:when test="${pageNo==1}">
                                首页
                                上一页
                            </c:when>
                            <c:otherwise>
                                <a href="goods/phone?pageNo=1&phoneName=${phoneName}">首页</a>
                                <a href="goods/phone?pageNo=${pageNo-1}&phoneName=${phoneName}">上一页</a>
                            </c:otherwise>
                        </c:choose>
                        <span id="page_list" class="cur_link"></span>
                        <c:choose>
                            <c:when test="${pageNo==phonePage}">
                                尾页
                                下一页
                            </c:when>
                            <c:otherwise>
                                <a href="goods/phone?pageNo=${phonePage}&phoneName=${phoneName}">尾页</a>
                                <a href="goods/phone?pageNo=${pageNo+1}&phoneName=${phoneName}">下一页</a>
                            </c:otherwise>
                        </c:choose>
                        <%--<span class="cur_link">1</span><span><a
                            href='phone/phone?pageNo="+i+"'>2</a></span><span><a
                            href="ershoushouji/3.html">3</a></span><span><a
                            href="ershoushouji/4.html">4</a></span><span><a
                            href="ershoushouji/5.html">5</a></span><span><a href="ershoushouji/6.html">6</a></span><span
                            class="next_link"><a href="ershoushouji/2.html">下一页</a></span><span class="last_link"><a
                            href="ershoushouji/232.html">尾页</a></span>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!--查询结果-->
<script type="text/javascript">
    $(document).ready(function () {
        $('.pic_list dd').mousemove(function () {
            $(this).find('.pic_list_box').addClass('kuang');
        });
        $('.pic_list dd').mouseleave(function () {
            $(this).find('.pic_list_box').removeClass('kuang');
        });
    });
</script>
<div class="footer">
    <div class="page2">
        <dl class="foot_list1">
            <dt>关于我们</dt>
            <dd><a href="service/about.html" rel="nofollow" target="_blank" title="麦淘乐高价在线手机回收平台">关于麦淘乐</a></dd>
            <dd><a href="service/contact.html" target="_blank" rel="nofollow" title="麦淘乐手机回收联系方式">联系我们</a></dd>
            <dd><a href="service/join.html" target="_blank" rel="nofollow" title="麦淘乐长期招聘爱好手机回收行业的小伙伴">人才招聘</a></dd>
        </dl>
        <dl class="foot_list2">
            <dt>服务</dt>
            <dd><a href="service/terms.html" target="_blank" rel="nofollow" title="手机回收常见问题与解答">服务条款</a></dd>
            <dd><a href="service/suggestions.html" target="_blank" rel="nofollow" title="感谢您对手机回收相关问题的投诉与建议">投诉建议</a>
            </dd>
            <dd><a href="service/map.html" target="_blank" title="麦淘乐的网站地图导航">网站地图</a></dd>
        </dl>
        <dl class="foot_list3">
            <dt>客服热线</dt>
            <dd>
                <p>tel:xxxxxxxxxxx</p>
                
            </dd>
        </dl>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".weixin2").hover(function () {
                    $(this).find(".weixin-qrcode2").show();
                }, function () {
                    $(this).find(".weixin-qrcode2").hide();
                });
            });
        </script>
        <dl class="foot_list4">
            <dt>关注我们</dt>
            <dd class="sina"><a href="http://e.weibo.com/ihuigo?topnav=11" rel="nofollow" target="_blank">&nbsp;</a>
            </dd>
            <dd class="weixin"><a rel="nofollow" class="weixin2" target="_blank">
                <div class="weixin-qrcode2"></div>
            </a></dd>
        </dl>
        <div class="clear"></div>
        <div class="statist">
            <p><em>Copyright Reserved 2009-2016 @</em>
                麦淘乐qfedu.com版权所有
                <span>
                    <a href="#" target="_blank" rel="nofollow">鄂ICP备xxxxxx号</a>
                </span>
            </p>
        </div>
        <!--购物车-->
        <div class="mui-mbar">
            <!--黑色栏-->
            <div class="mui-mbar-mask">
                <div class="mui-mbar-gwc">
                    <div class="mui-mbar-wz"><em class="cart_total_items">0</em>
                        <p><img src="images/new_images/cart.png"/></p>
                        <span>回购车</span>
                    </div>
                </div>
                <!--在线客服-->
                <div class="mui-mbar-kefu mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:void(0)"
                                                onclick="zixunserver('index/zixunserver.html')"><img
                            src="images/new_images/cart_icon1.png"/></a></div>
                    <div class="mui-zaixian mui-mbar-last"><a href="javascript:void(0)"
                                                              onclick="zixunserver('index/zixunserver.html')">在线客服</a>
                    </div>
                </div>
                <!--在线客服-->
                <!--微信二维码-->
                <div class="mui-mbar-weixin">
                    <div class="mui-mbar-go"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon2.png"/></a></div>
                    <div class="mui-weima"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                            src="images/new_images/70.png" width="192" height="192"/></a></div>
                </div>
                <!--微信二维码-->
                <!--投诉建议-->
                <div class="mui-mbar-tousu mui-mbar-all">
                    <div class="mui-mbar-go"><a href="service/suggestions.html" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon3.png"/></a></div>
                    <div class="mui-jianyi mui-mbar-last"><a href="service/suggestions.html" rel="nofollow"
                                                             target="_blank">投诉建议</a></div>
                </div>
                <!--投诉建议-->
                <!--返回顶部-->
                <div class="mui-mbar-top mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:goTop();" class="sidetop"><img
                            src="images/new_images/go_top.png"/></a></div>
                    <div class="mui-fanhui mui-mbar-last">返回顶部</div>
                </div>
                <!--返回顶部-->
            </div>
            <!--黑色栏-->
            <!--购物车-->
            <div class="mui-mbar-cart">
                <div class="mui-list">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">
                        <tr id="cart_tr_title">
                            <th class="table-padding">机型</th>
                            <th width="100">&nbsp;</th>
                            <th width="68">评估价</th>
                        </tr>
                    </table>
                </div>
                <!--结算-->
                <div class="mui-jiesuan">
                    <p>已选<em class="cart_total_items">0</em>台共计<em id="cart_total">￥0</em></p>
                    <input type="button" value="去结算" class="mui-button"
                           onclick="gocart('ajax/check_iflogin.html','order/cart.html')"/>
                </div>
                <!--结算-->
            </div>
            <!--购物车-->
        </div>
        <!--购物车-->
    </div>
</div>
<!--[if lte IE 6]>
<script src="js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->
</body>
</html>
<script type="text/javascript">
    var vue =  new Vue({
        el:"#vueId",
        data() {
            return{
                brandURL: "http://localhost:8080/maitaole/goods/queryBrandById/",
                typeList: null,
                brandList: null,
                /*ck:true*/
            }
        },
        methods:{
            choose:function(url){
                axios.get(url).then(function (response) {
                    vue.brandList = response.data.obj;
                })
            }
        },mounted() {
            axios.get("http://localhost:8080/maitaole/goods/queryTbTypeList")
                .then(response => (this.typeList = response.data.obj));
            axios.get("http://localhost:8080/maitaole/goods/queryBrandById/1")
                .then(response => (this. brandList= response.data.obj));
        }
    });
    $(function () {
        var pageCount = ${phonePage};
        var htmlStr = "";
        for (var i = 1; i <= pageCount; i++){
            htmlStr += "<a href='goods/phone?pageNo="+i+"'>"+i+"</a>";
        }
        $("#page_list").html(htmlStr);
    });
</script>
