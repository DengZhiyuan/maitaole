<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7 0007
  Time: 下午 2:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <base href="<%=request.getContextPath()%>/"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>iphone 7的30天内回收平均价格3360元-回购网 - 二手数码回收平台</title>
        <meta name="keywords" content="iphone 7 iphone7 7 苹果7 苹果 7"/>
        <meta name="description" content="iphone 7 iphone7 7 苹果7 苹果 7"/>
        <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
        <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
        <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/goods/info/21025.html">
        <meta name="applicable-device" content="pc">
        <link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/goods/info/21025.html">
        <link href="favicon.ico" type=image/x-icon rel="Icon">
        <link href="css/new_css/global.css" rel="stylesheet" type="text/css">
        <script src="js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
        <script src="js/new_js/new_public.js" type="text/javascript"></script>
        <script type="text/javascript">
        </script>
        <link href="css/new_css/sub.css" rel="stylesheet" type="text/css">
        <script src="js/public.js" type="text/javascript"></script>
        <script src="js/new_js/menu.js" type="text/javascript"></script>
        <script src="js/new_js/new_goods.js" type="text/javascript"></script>
    </head>
<body>
<link rel="stylesheet" type="text/css" href="css/alert_zhe.css"/>
<script type="text/javascript" src="js/alert_zhe.js"></script>
<!--头部--><!--手机回收-->
<div class="recovery">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".new_search_btn").click(function () {
                $(".new_search").slideToggle();
            });
        });
    </script>
    <div class="page2" style="position:relative">
        <div class="new_search_btn" style="position:absolute; left:-40px; top:-11px; cursor:pointer;"><img
                src="images/new_images/search_btn.png" alt="搜索您要评估价格的机型"/></div>
        <!--<div class="new_search" style="display:none">
            <div class="search-box">
                <h2 class="search-title">搜一下，看看你的闲置还值多少钱</h2>
                <div class="search">
                    <div class="search-fenlei" id="search-fenlei">
                        <div class="set" id="all_type">全部分类</div>
                        <div class="search-list">
                            <ul>
                                <li class="search-list-icon1"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'5')">手机</span></a></li>
                                <li class="search-list-icon2"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'7')">苹果系列</span></a></li>
                                <li class="search-list-icon3"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'23')">平板电脑</span></a></li>
                                <li class="search-list-icon4"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'52')">笔记本</span></a></li>
                                <li class="search-list-icon5"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'53')">数码相机</span></a></li>
                                <li class="search-list-icon6"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'54')">游戏机</span></a></li>
                                <li class="search-list-icon7"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'88')">镜头</span></a></li>
                                <li class="search-list-icon8"><a href="javascript:void(0)" rel="nofollow"><span
                                        onClick="t_click(this,'795')">无人机</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <form name="top_goods_search" id="top_goods_search" action="goods.html" method="get">
                        <input type="hidden" name="pid" id="top_pid" value="0"/>
                        <input type="text" name="gname" id="top_name" value="请输入品牌型号搜索" class="input-txt"
                               onkeydown="if(event.keyCode==13) return top_search_goods();"
                               onFocus="if(this.value=='请输入品牌型号搜索'){this.value='';}"
                               onblur="if(this.value==''){this.value='请输入品牌型号搜索';}"/>
                        <input type="button" value="" class="input-btn" onclick="top_search_goods()"/>
                    </form>
                </div>
                <div class="search-hot" style="display:none">热门搜索：
                    <a href="goods.html?gname=iPhone 6" rel="nofollow" target="_blank">iPhone 6</a>
                    <a href="goods.html?gname=iPhone 5s" rel="nofollow" target="_blank">iPhone 5s</a>
                    <a href="goods.html?gname=荣耀8" rel="nofollow" target="_blank">荣耀8</a>
                    <a href="goods.html?gname=iPad" rel="nofollow" target="_blank">iPad</a>
                    <a href="goods.html?gname=iPhone 7" rel="nofollow" target="_blank">iPhone 7</a>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $(".search-fenlei .set").click(function () {
                        var ul = $(".search-list");
                        if (ul.css("display") == "none") {
                            ul.slideDown();
                        } else {
                            ul.slideUp();
                        }
                    });
                    $(".search-fenlei li").click(function () {
                        var li = $(this).html();
                        $("#all_type").html(li);
                        $(".search-list").hide();
                        var arr = $(this).attr('class').split('-');
                        suff_class = arr[arr.length - 1];
                        //alert(suff_class);
                        $("#search-fenlei").attr('class', 'search-fenlei-' + suff_class);
                        //$(".set").removeClass("select") ;
                    });
                })

                function top_search_goods() {
                    var val = $.trim($("#top_name").val());
                    if (val.length == 0 || val == '请输入品牌型号搜索') {
                        alert("请输入品牌型号");
                        return false;
                    }
                    $("#top_goods_search").submit();
                }
            </script>
        </div>-->
        <c:forEach items="mobilePhoneList" var="mpl">
        <div style="height:30px; line-height:30px; font-size:14px;"><a href="">首页</a> &gt;<a
                href="ershoushouji.html">手机</a> &gt;<a href="ershouiphone.html"> iphone</a> &gt; ${mobilePhoneList.mobileName}
        </div>
        <div class="heat_l">
            <div class="heat_img">
                <img src="${mobilePhoneList.img}" alt="${mobilePhoneList.mobileName}回收价格评估"
                     width="264" height="197"/>
            </div>
            <div class="heat_txt">
                <div class="heat_name"><span>${mobilePhoneList.mobileName}</span></div>
                <dl class="heat_ts">
                    <dd><em>${mobilePhoneList.price}</em>元<br/>
                        30天内回收最高价
                    </dd>
                    <dt class="clear"></dt>
                </dl>
                <div class="heat_bao"><img src="images/new_images/icon10.gif" alt="iphone 7回收免费享受第三方理赔服务"/>可免费享受第三方理赔服务
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        </c:forEach>
        <script src="js/new_js/morris/raphael-2.1.0.min.js"></script>
        <script src="js/new_js/morris/morris.js"></script>
        <link rel="stylesheet" href="js/new_js/morris/morris.css">
        <div class="heat_r">
            <div class="heat_title"><span>回购价格趋势</span><samp>单位：元</samp></div>
            <div class="heat_pic">
                <div id="graph" style="width:360px; height:210px; margin-top:0px;"></div>
            </div>
            <script>
                var day_data = [
                    {"elapsed": "12", "价格": "3600"}
                    , {"elapsed": "1", "价格": "3400"}
                    , {"elapsed": "2", "价格": "3187"}
                    , {"elapsed": "3", "价格": "2907"}
                ];
                Morris.Line({
                    element: 'graph',
                    data: day_data,
                    xkey: 'elapsed',
                    ykeys: ['价格'],
                    labels: ['价格'],
                    parseTime: false
                });
            </script>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!--手机回收-->
<!--评估流程-->
<div id="ahs_trade_body">
    <input type="hidden" id="view" value="goods_info"/>
    <input type="hidden" id="if_show_price" value="1"/>
    <input type="hidden" id="gid" name="gid" value="21025"/>
    <input type="hidden" id="package_id" name="package_id" value="571"/>
    <div id="ahs_property_head">
        <p>开始评估你的手机，只需3步，获得产品精准评估报价</p>
        <!--步骤一-->
        <div class="speed" id="speed1"><img src="images/new_images/step1.gif" alt="第1步评估手机的基本情况"/></div>
        <!--步骤一-->
        <!--步骤二-->
        <div class="speed" id="speed2"><img src="images/new_images/step2.gif" alt="第2步评估手机的功能使用情况"/></div>
        <!--步骤二-->
        <!--步骤三-->
        <div class="speed" id="speed3"><img src="images/new_images/step3.gif" alt="第一步评估手机的外观成色"/></div>
        <!--步骤三-->
    </div>
    <form action="goods/check/${id}" method="post" id="frm1">
    <div id="ahs_property_body">
        <!--第一步-->
        <div id="property_step1">
            <dl>
                <c:forEach items="${list}" var="bs">
                <dd>
                    <input type="hidden" name="property" id="property_${bs.id}" value="0"/>
                    <div class="property_title"><h3>${bs.attribute}</h3></div>
                    <ul>
                        <c:forEach items="${bs.basicSituationInfoList}" var="info">
                            <li class="" onClick="property_click(this,'${bs.id}','${info.id}')" name="sx_child_${bs.id}">
                                <div class="pro_div"><span class="property_value"><i>${info.describes}</i><ins>${info.detailed}</ins></span><span
                                        class="gou"></span></div>
                            </li>
                        </c:forEach>
                        <div class="clear"></div>
                    </ul>
                </dd>
                </c:forEach>
                <div id="step1_nav" class="property_nav">
                    <div id="btn_step1_next" class="btn_next">下一步</div>
                </div>
            </dl>
        </div>
        <!--第一步-->
        <!--第二步-->
        <div id="property_step2" class="hide">
            <dl>
                <dd>
                    <div class="property_title">
                        <h3>功能情况（可多选或不选）</h3>
                    </div>
                    <ul>
                        <c:forEach items="${functionalSituationList}" var="f">
                        <input type="hidden" name="property_2" id="desc_id_${f.id}"/>
                        <li onClick="item_click(this,'${f.id}')" name="mx_child_${f.id}">
                            <div class="pro_div"><span class="property_value"><i>${f.describes}</i><ins>${f.detailed}</ins></span>
                                <span class="gou"></span></div>
                        </li>
                        </c:forEach>
                        <div class="clear"></div>
                    </ul>
                </dd>
            </dl>
            <div id="step2_nav" class="property_nav">
                <div id="btn_step2_back" class="btn_back">< 返回上一步</div>
                <div id="btn_step2_next" class="btn_next">都没问题，跳过 ></div>
            </div>
        </div>
        <!--第二步-->
        <!--第三步-->


        <div id="property_step3" class="hide">
            <dl>
                <c:forEach items="${degreeList}" var="d">
                <dd>
                    <input type="hidden" name="property_3" id="property_3_${d.id}" value="0"/>
                    <div class="property_title"><h3>${d.attribute}</h3></div>
                    <ul>
                        <c:forEach items="${d.wearDegreeInfoList}" var="wearInfo">
                        <li class="" onClick="property_click(this,'3_${d.id}','${wearInfo.id}')" name="sx_child_${d.id}">
                            <div class="pro_div"><span class="property_value"><i>${wearInfo.describes}</i><ins>${wearInfo.detailed}</ins></span><span
                                    class="gou"></span></div>
                        </li>
                        </c:forEach>
                        <div class="clear"></div>
                    </ul>
                </dd>
                </c:forEach>
            </dl>
            <div id="step3_nav" class="property_nav">
                <div id="btn_step3_back" class="btn_back">< 返回上一步</div>
                <div id="btn_step3_next" class="btn_next"
                     onclick="frm1Submit();">查看价格 >
                </div>
            </div>
        </div>
        <!--第三步-->
    </div>
    </form>
</div>
<script>
    function frm1Submit() {
        $("#frm1").submit();
    }
</script>

<!--评估流程-->
<!--隐藏的评估描叙选项start-->
<div style="display:none; background-color:#CCCCCC;">
</div>
<!--隐藏的评估描叙选项end-->
<script>
    $(document).ready(function () {
        $("#step1_nav .btn_next").bind('click', step1_next);
        $("#step2_nav .btn_next").bind('click', step2_next);
        $("#step2_nav .btn_back").bind('click', step2_back);
        $("#step3_nav .btn_back").bind('click', step3_back);

        $("input[name='property[]']").each(function () {
            $(this).val(0);
        })
        $("#property_step1 input[name='desc_id[]']").each(function () {
            $(this).val(0);
        })
        $("#property_step3 input[name='desc_id[]']").each(function () {
            $(this).val(0);
        })
        $("#pj_ids").val(0);
    })
</script>
<!--[if lte IE 6]>
<script src="js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->
</body>
</html>
