<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>订单提交-回购网 -  手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
    <base href="<%=request.getContextPath()%>/"/>
    <meta name="keywords" content="手机回收,二手手机回收,手机回收网,二手手机回收网,二手手机,笔记本回收,平板电脑回收,数码相机回收,旧手机回收,苹果手机回收" />
    <meta name="description" content="回购网是一家专业安全的二手手机回收网，为您提供在线手机回收、平板电脑回收、笔记本回收、数码相机回收、相机镜头回收、无人机回收，专业手机回收价格评估，让你轻松买卖二手手机等闲置数码产品。" />
    <meta name="baidu-site-verification" content="IpuQLFxZiC" />
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1" />
    <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/order/cart.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)"     href="http://m.ihuigo.com/order/cart.html" >
    <link href="favicon.ico" type=image/x-icon rel="Icon"/>
    <link href="css/new_css/global.css" rel="stylesheet" type="text/css"/>
    <script src="js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url){
            open_div_extends('切换地区',url,'Loading_child');
        }
        function addInfo() {
            var custId = $("input[name='userId']").val();
            var province = $("span[id='text_province']").text();
            var city= $("span[id='text_city']").text();
            var district = $("span[id='text_district']").text();
            var address=province+"-"+city+"-"+district;
            var trueName = $("input[name='trueName']").val();
            var mobile = $("input[name='mobile']").val();
            var addressInfo = $("input[name='addressInfo']").val();
            var bank = $("select[name='bank']").val();
            var bankName = $("input[name='bankName']").val();
            var bankCard = $("input[name='bankCard']").val();
            var cartOrOrder = $("input[name='cartOrOrder']").val();
           /* var province = $("span[id='text_province']").text();*/
            var city = $("span[id='text_city']").text();
            var district = $("span[id='text_district']").text();
            var zhifubao = $("input[name='zhifubao']").val();
//            alert(bank);
//            alert(province);
//            alert(city);
//            alert(district);
            $.post("goods/autoOrders",{
                custId:custId,
                address:address,
                zhifubao:zhifubao,
                trueName:trueName,
                mobile:mobile,
                addressInfo:addressInfo,
                bank:bank,
                bankName:bankName,
                bankCard:bankCard,
                /*cartOrOrder:cartOrOrder,*/
                province:province,
                city:city,
                district:district,

            },function (data) {
                if(data=="addOrdersNew"){
                    alert("生成订单成功");
                    window.location.href = "mobile/addOrdersNew";
                }else{
                    alert("出现未知错误");
                }
            });
        }
    </script>
    <link href="css/new_global.css" rel="stylesheet" type="text/css">

    <script src="js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>

    <script src="js/new_js/lrtk.js" type="text/javascript"></script>

    <script src="js/new_js/menu.js" type="text/javascript"></script>

    <script src="js/new_js/index.js" type="text/javascript"></script>

</head>
<body>
<link rel="stylesheet" type="text/css" href="css/alert_zhe.css" />
<script type="text/javascript" src="js/alert_zhe.js"></script>
<script type="text/javascript" src="js/payway.js" ></script>
<script type="text/javascript" src="js/order.js" ></script>
<script type="text/javascript" src="js/city.js"></script>
<script type="text/javascript" src="js/city_jilian.js"></script>
<form name="myFrom" id="myFrom" method="post" action="">
    <%--<input type="text" name="userId" id="userId" value="${sessionScope.user.getId}" />--%>

    <input type="hidden" name="cartOrOrder" id="cartOrOrder" value="${id}" />
    <input type="hidden" name="ifalipay" id="ifalipay" value="n" />
    <input type="hidden" name="validate_code" value="45c512b37e2922042a98bd0b44dcb245" />
    <input type="hidden" name="typeid" id="typeid" value="1" />
    <!--提交订单-->
    <div class="contanier page">
        <div class="current"><a href="/">首页</a><span>></span><em>提交订单</em></div>
        <div style="padding:0 15px;">
            <div class="areas"><SPAN>请选择您的收款方式：</SPAN></div>
            <input type="hidden" name="userId"  value="${sessionScope.user.id}" />
          <%--  <p>${sessionScope.user}</p>
            ${sessionScope.user.id}--%>
            <div class="areas_flow">
                <div class="c_1" id="m1" onclick="aa(1)">
                    <ul class="bor_right">
                        <li class="bor_img"><IMG src="images/img_1_1.png"></li>
                    </ul>
                    <ul class="bor_left">
                        <li class="bor_tile">官方担保交易</li>
                        <li class="bor_text">汇款到您指定银行账户（即时到账）</li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="c_0" id="m2" onclick="aa(2)" >
                    <ul class="bor_right">
                        <li class="bor_img"><IMG src="images/img_2_1.png"></li>
                    </ul>
                    <ul class="bor_left">
                        <li class="bor_tile">支付宝交易</li>
                        <li class="bor_text">知名平台，安全交易，打款更快捷透明</li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="c_0" id="m3" onclick="aa(3)" style="border:none">
                    <ul class="bor_right">
                        <li class="bor_img"><IMG src="images/img_3_1.png"></li>
                    </ul>
                    <ul class="bor_left">
                        <li class="bor_tile">上门现金交易</li>
                        <li class="bor_text">质检师会在指定时间到达指定地点跟您进行交易</li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <!--切换-->
            <div class="process block" id="t1"><img src="images/liucheng1_1.jpg" /></div>
            <div class="process none" id="t2"><img src="images/liucheng2.jpg" /></div>
            <div class="process none" id="t3"><img src="images/liucheng3_1.jpg" /></div>
            <div class="ihuigo">
                <!-- 通用联系方式start-->
                <div class="sub_con_top">
                    <div class="contact_ways">联系方式：</div>
                    <div class="contanct_c check" name="item_member_addr" id="item_member_addr_0">
                        <label>
                            <input type="radio" name="member_addr" value="0" checked="checked" onClick="new_member_addr(0)" />
                            <span>使用新地址</span></label>
                    </div>

                    <!-- 新地址start-->
                    <div   id="new_member_addr_div">
                        <div class="clear" style="height:15px;"></div>
                        <ul class="contact_list">
                            <li class="contact_text">联系人：</li>
                            <li class="contact_texts"><span class="img_1"><img
                                    src="images/in_1.gif"></span><span class="img_2"><input name="trueName" id="link_name" type="text"></span> <span class="img_1"><IMG src="images/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
                            <div class="clear"></div>
                        </ul>
                        <ul class="contact_list">
                            <li class="contact_text">手机号码：</li>
                            <li class="contact_texts"><span class="img_1"><img
                                    src="images/in_1.gif"></span><span class="img_2"><input name="mobile" id="mobile" type="text"></span> <span class="img_1"><IMG src="images/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
                            <div class="clear"></div>
                        </ul>
                        <div class="mod_select" style="margin-bottom:12px;">
                            <ul>
                                <li class="contact_text" style="width:88px;">我的地址：</li>
                                <li>

                                    <div class="select_box">
                                        <span class="select_txt" id="text_province">请选择省份</span><em class="selet_open"><b></b></em>
                                        <input type="hidden" id="province" name="province" value="0"  />
                                        <div class="option" id="option_province"></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="select_box">
                                        <span class="select_txt" id="text_city" >请选择城市</span><em class="selet_open"><b></b></em>
                                        <input type="hidden" id="city" name="city" value="0"  />
                                        <div class="option" id="option_city"></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="select_box">
                                        <span class="select_txt" id="text_district">请选择区县</span><em class="selet_open"><b></b></em>
                                        <input type="hidden" id="district" name="district" value="0"  />
                                        <input type="hidden" id="school_id" name="school_id" value="0"  />
                                        <div class="option" style="position:absolute;right:0 !important; " id="option_district">
                                        </div>
                                    </div>
                                </li>

                                <span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
                                <div class="clear"></div>
                            </ul>
                        </div>
                        <div>
                            <ul class="contact_list">
                                <li class="contact_text">详细地址：</li>
                                <li class="contact_texts"><span class="img_1"><img
                                        src="images/in_1.gif"></span><span class="img_2_area"><input name="addressInfo" id="address" type="text"></span> <span class="img_1"><IMG src="images/in_3.gif"></span></li>
                                <div class="clear"></div>
                            </ul>
                        </div>
                    </div>
                    <link rel="stylesheet" type="text/css" href="js/calendar/calendar.css"/>
                    <script type="text/javascript" src="js/calendar.php"></script>
                    <!--上门取件时间-->
                    <div class="contact_list" style="margin-top:20px;">
                        <div id="div_addr" style="display:none;">
                            <ul><li class="contact_textval">上门取件时间：</li></ul>
                            <ul class="area_list">
                                <li class="area_list_texts"><input name="stime" id="stime" type="text" style="border:0px;" onfocus="return showCalendar('stime', '%Y-%m-%d %H:%m', '24', false, 'stime');"  value=""></li>
                                <li class="area_list_bg"></li>
                            </ul>
                            <ul class="area_lists"><li>到</li></ul>
                            <ul class="area_list">
                                <li class="area_list_texts">
                                    <input name="etime" id="etime"   type="text" style="border:0px; "onfocus="return showCalendar('etime', '%Y-%m-%d %H:%m', '24', false, 'etime');" value="">
                                </li>
                                <li class="area_list_bg"></li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="kuaidi"><!--<a href="###" class="on">回购网联系快递</a>-->
                            <input type="checkbox" value='y' name="express_true" id="express_true" onclick="express_true_click()"  /><label for="express_true">回购网联系快递</label>
                        </div>
                        <script>
                            function	express_true_click(){
                                if($("#express_true").attr('checked')){
                                    $("#div_addr").css('display','block');
                                }else{
                                    $("#div_addr").css('display','none');
                                }
                            }
                        </script>
                    </div>
                    <!-- 新地址end-->
                    <script>
                        function 	new_member_addr(val){
                            $("div[name='item_member_addr']").attr('class','contanct_c');
                            if(val)	$("#new_member_addr_div").css('display','none');
                            else	$("#new_member_addr_div").css('display','block');
                            $("#item_member_addr_"+val).attr('class','contanct_c check');
                        }
                    </script>
                </div>

                <!-- 通用联系方式end-->
                <div  id="s1" class="block">
                    <!-- 银行收款start-->
                    <div class="sub_con_foot">
                        <div class="contact_ways">收款银行账号：</div>



                        <div class="contanct_c check" name="item_member_bank" id="item_member_bank_0">
                            <label>
                                <input type="radio" name="member_bank" value="0" checked="checked" onClick="new_member_bank(0)" />
                                <span>使用新账号</span></label>
                        </div>
                        <div   id="new_member_bank_div">
                            <div class="clear" style="height:15px;"></div>
                            <div class="contact_list">
                                <ul>
                                    <li class="contact_text">银行名称：</li>
                                    <li class="contact_select">
                                        <select name="bank" id="bankname">
                                            <option value="0">请选择银行</option>
                                            <option value="中国银行">中国银行</option>
                                            <option value="招商银行">招商银行</option>
                                            <option value="中国工商银行">中国工商银行</option>
                                            <option value="中国建设银行">中国建设银行</option>
                                            <option value="中国农业银行">中国农业银行</option>
                                            <option value="中国邮政储蓄银行">中国邮政储蓄银行</option>
                                            <option value="交通银行">交通银行</option>
                                            <option value="中国光大银行">中国光大银行</option>
                                            <option value="中信银行">中信银行</option>
                                            <option value="华夏银行">华夏银行</option>
                                            <option value="中国民生银行">中国民生银行</option>
                                            <option value="北京银行">北京银行</option>
                                            <option value="兴业银行">兴业银行</option>
                                            <option value="长沙银行">长沙银行</option>
                                            <option value="深圳发展银行">深圳发展银行</option>
                                            <option value="广东发展银行">广东发展银行</option>
                                            <option value="平安银行">平安银行</option>
                                            <option value="渤海银行">渤海银行</option>
                                            <option value="天津银行">天津银行</option>
                                            <option value="北京农村商业银行">北京农村商业银行</option>
                                            <option value="上海浦东发展银行">上海浦东发展银行</option>
                                            <option value="上海银行">上海银行</option>
                                            <option value="江苏银行">江苏银行</option>
                                            <option value="南京银行">南京银行</option>
                                            <option value="浙商银行">浙商银行</option>
                                            <option value="温州银行">温州银行</option>
                                            <option value="杭州银行">杭州银行</option>
                                            <option value="宁波银行">宁波银行</option>
                                            <option value="宁波国际银行">宁波国际银行</option>
                                            <option value="绍兴银行">绍兴银行</option>
                                            <option value="徽商银行">徽商银行</option>
                                            <option value="湛江市商业银行">湛江市商业银行</option>
                                            <option value="广州银行">广州银行</option>
                                            <option value="珠海市商业银行">珠海市商业银行</option>
                                            <option value="东莞银行">东莞银行</option>
                                            <option value="深圳农村商业银行">深圳农村商业银行</option>
                                            <option value="广州农村商业银行">广州农村商业银行</option>
                                            <option value="东莞农村商业银行">东莞农村商业银行</option>
                                            <option value="佛山顺德农村商业银行">佛山顺德农村商业银行</option>
                                            <option value="华商银行">华商银行</option>
                                        </select>
                                        <span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
                                    <div class="clear"></div>
                                </ul>
                            </div>


                            <ul class="contact_list">
                                <li class="contact_text">开户姓名：</li>
                                <li class="contact_texts"><span class="img_1"><img
                                        src="images/in_1.gif"></span><span class="img_2"><input name="bankName" id="realname" type="text"></span> <span class="img_1"><IMG src="images/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> <span class="contact_textsval">开户时的真实姓名</span></li>
                                <div class="clear"></div>
                            </ul>
                            <ul class="contact_list" style="position:relative">
                                <li class="contact_text">银行帐号：</li>
                                <li class="contact_texts"><span class="img_1"><img
                                        src="images/in_1.gif"></span><span class="img_2"><input name="bankCard" id="card_sn" type="text" onkeyup="show_card_sn_format()" onfocus="show_card_sn_format()" onblur="card_sn_blur()"></span> <span class="img_1"><IMG src="images/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> <span class="contact_textsval">我们对用户帐号信息严格保密，请放心填写！</span></li>
                                <div class="clear"></div>

                                <div id="card_sn_format" style="display:none;position:absolute; left:100px; top:-26px; z-index:10000; border:1px solid #ccc; background:#fff9c9; height:24px; line-height:24px; padding:0 5px; font-size:16px; color:#2056ff; font-weight:bold; font-family:"微软雅黑";"></div>
                        </ul>
                    </div>

                </div>
                <!-- 银行收款end-->
            </div>
            <div  id="s1" class="block">
                <!-- 手机解锁情况start-->
                <div class="sub_con_foot">
                    <div class="contact_ways m_unclock">
                        手机解锁情况：
                        <label>
                            <span><input type="radio" name="lock" value="y">已解锁</span>
                            <span class="guide">解锁指引<i>？</i></span>
                            <span style="margin-left:30px;"><input type="radio"  name="lock" value="n" >回购网解锁</span>
                        </label>
                        <div class="alertTips">
                            <p>imobile设置取消开机密码<span>设置-Touch ID和密码-点击关闭密码</span></p>
                            <p>imobile关闭iCloud<span>设置-iCloud-注销-从我的imobile删除-输入密码-删除</span></p>
                            <p>魅族手机取消开机密码<span>设置-安全-屏幕密码-输入密码-关闭</span></p>
                            <p>魅族手机关闭Flyme:<span>方法1：设置-账户-退出账户</span><span>方法2：打开Flyme官网登录-云服务-登录选择机型-远程退出 </span></p>
                        </div>
                    </div>
                    <div style="padding-left:100px; margin-bottom:15px;">
                        <input style="width:410px;padding:3px 10px;display:none;" type="text" name="pwd" placeholder="请提供开机密码和iCloud或Flyme账号密码（备注类型并以空格间隔）">
                        <p style="margin-top:10px;">
                            温馨提示：发货前请确保以下账号密码已解锁，未解除将无法质检导致交易失败。<br>
                            1、开机密码；2、iCloud或Flyme账号密码；3、还原密码
                        </p>
                    </div>
                </div>

                <!-- 手机解锁情况end-->
            </div>


            <script>
                function 	new_member_bank(val){
                    $("div[name='item_member_bank']").attr('class','contanct_c');
                    if(val)	$("#new_member_bank_div").css('display','none');
                    else	$("#new_member_bank_div").css('display','block');
                    $("#item_member_bank_"+val).attr('class','contanct_c check');
                }
                function show_card_sn_format(){
                    var new_str	=	'';
                    str			=	$.trim($("#card_sn").val());
                    if(str.length	==	0){
                        $("#card_sn_format").css('display','none');
                        return;
                    }
                    var arr		=	str.split("");
                    var suffix	=	'';
                    for(var i = 0; i < arr.length; i++){
                        if(i > 0	&&	i%4 == 0)	suffix	=	' ';
                        new_str	+=	suffix+str[i];
                        suffix	=	'';
                    }
                    $("#card_sn_format").css('display','block');
                    $("#card_sn_format").html(new_str);
                }
                function card_sn_blur(){
                    $("#card_sn_format").css('display','none');
                }
            </script>
            <div id="s2" class="none">
                <!-- 收款支付宝账号start-->
                <div class="sub_con_foot">
                    <div class="contact_ways">收款支付宝账号：</div>


                    <div  id="new_member_alipay_div">

                        <ul class="contact_list">
                            <li class="contact_text">姓名：</li>
                            <li class="contact_texts"><span class="img_1"><img
                                    src="images/in_1.gif"></span><span class="img_2"><input name="trueName" id="trueName" type="text" value=""></span> <span class="img_1"><IMG src="images/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*</em></span> </li>
                            <div class="clear"></div>
                        </ul>

                        <ul class="contact_list">
                            <li class="contact_text">支付宝账号：</li>
                            <li class="contact_texts"><span class="img_1"><img
                                    src="images/in_1.gif"></span><span class="img_2"><input name="zhifubao" id="zhifubao" type="text" value="" ></span> <span class="img_1"><IMG src="images/in_3.gif"></span><span class="img_3"><em style="color: red; font-size:12px;margin-right: 10px;">*亲，必须是实名认证的支付宝账号哦！</em></span> </li>
                            <div class="clear"></div>
                        </ul>
                    </div>

                </div>
                <!-- 收款支付宝账号end-->
            </div>

            <script>
                function 	new_member_alipay(val){
                    $("div[name='item_member_alipay']").attr('class','contanct_c');
                    if(val)	$("#new_member_alipay_div").css('display','none');
                    else	$("#new_member_alipay_div").css('display','block');
                    $("#item_member_alipay_"+val).attr('class','contanct_c check');
                }
            </script>

            <div id="s3" class="none" >
                <!-- 回购点start-->
                <div class="sub_con_foot">
                    <div class="contact_ways">面交方式(目前仅支持<b style="color:#f60">深圳</b>地区当面交易，其它地区请选择<b style="color:#f60">官方担保交易</b>)</div>

                    <div class="contanct_c check" id="div_mianjiao_method_1">
                        <label>
                            <input type="radio" name="mianjiao_method" id="mianjiao_method_1" value="1" checked="checked" onClick="mianjiao_method_click(1)" />
                            <span style="font-weight:bold;">去回购网面交</span>
                            <span >地址：广东·深圳市福田区天安数码城天经大厦A701</span>
                        </label>

                    </div>


                    <div class="contanct_c" id="div_mianjiao_method_2">
                        <label>
                            <input type="radio" name="mianjiao_method" id="mianjiao_method_2" value="2" onClick="mianjiao_method_click(2)" />
                            <span style="font-weight:bold;">上门面交</span>
                            <span >目前支持福田区，罗湖区，南山区（建议选择地铁口面交）</span>
                        </label>
                    </div>

                    <link href="js/new_js/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" type="text/css"/>
                    <script src="js/new_js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>

                    <div class="contanct_c" id="go_mianjiao_method_2" style="display:none;">
          	<span >上门日期：<input name="yu_time" id="yu_time" type="text" onfocus="return WdatePicker();"  style="width:80px;">
                                    <em style="padding-left:0px;"><input type="radio" name="mianjiao_hour" value="1" style="vertical-align:middle"/><i>09:00-12:00</i><div class="clear"></div></em>
                        <em ><input type="radio" name="mianjiao_hour" value="2" style="vertical-align:middle"/><i>12:00-18:00</i><div class="clear"></div></em>
                        <em ><input type="radio" name="mianjiao_hour" value="3" style="vertical-align:middle"/><i>18:00-21:00</i><div class="clear"></div></em>
                                    </span>
                        <span >沿途临近（地铁）：
            <input type="text" name="ditie_xian" id="ditie_xian" style="width:60px;" /> 线
            <input type="text" name="ditie_zhan" id="ditie_zhan" style="width:60px;" /> 站
            </span>
                    </div>
                    <script>
                        function 	mianjiao_method_click(val){
                            var a=1,b=1;
                            a	=	val==1?1:val;
                            b	=	val==1?2:1;
                            $("#div_mianjiao_method_"+a).attr('class','contanct_c check');
                            $("#div_mianjiao_method_"+b).attr('class','contanct_c');
                            $("#go_mianjiao_method_"+a).css('display','');
                            $("#go_mianjiao_method_"+b).css('display','none');
                        }
                    </script>
                </div>
                <!-- 回购点end-->
            </div>
            <script>
                function 	juan_click(obj,val){
                    if($("#juan_item_"+val).attr('class')	==	'certificate_b_on'){
                        $("#juan_item_"+val).attr('class','certificate_b');
                        $("#juan_id_"+val).attr('checked',false);
                    }else{
                        $("#juan_item_"+val).attr('class','certificate_b_on');
                        $("#juan_id_"+val).attr('checked',true);
                    }
                }
            </script>
        </div>
        <div class="clear"></div>
        <div class="tijiao" style="position:relative">
            <script>
                function baoxian_click(obj){
                    var flag	=	$(obj).attr('checked');
                    if(flag){
                        $("#baoxian_content").css('display','block');
                    }else{
                        $("#baoxian_content").css('display','none');
                    }
                }
            </script>
            <span style="position:absolute; right:74px; top:30px;">
      <input type="checkbox" value="y" name="ifbaoxian" id="ifbaoxian" onclick="baoxian_click(this)" />
      您可选择<a href="http://www.ihuigo.com/html/baoxian.html" style="background:none; padding:0px; color:#03F; font-weight:bold;" target="_blank">参与中国人民财产保险投保计划</a></span>
            &nbsp;&nbsp;
            <label><a href="/service/legal.html" target="_blank"  class="on">我已查看并同意回收协议</a></label>
            <input type="button" name="sub_button" id="sub_button" onclick="addInfo()" value="提交回购单" class="input_btn2"  />
        </div>

        <dl id="baoxian_content" style="display:none;">
            <dt><span>请输入您的姓名和身份证号，以生成中国人保保单</span></dt>
            <dd><span>姓&nbsp;&nbsp;&nbsp;名：</span><input type="text" name="baoxian_name" id="baoxian_name" value="" /></dd>
            <dd><span>身份证：</span><input type="text" name="baoxian_card_id" id="baoxian_card_id" value="" /></dd>
            <dd style="height:20px; line-height:20px;"><img src="images/new_images/picc.jpg" style="vertical-align:middle; margin-right:6px;" />旧手机隐私信息泄露或运输丢失，人保理赔五千元</dd>

        </dl>

    </div>
        <div class="dingdan">
            <div class="contact_way">订单详情：</div>
            <table width="100%" border="0" cellpadding="0" cellspacing="1"  class="table1">
                <tbody>
                <tr>
                    <th width="20%" height="35">型号</th>
                    <th width="16%">回购价格</th>
                    <th width="64%">评估描述情况</th>
                </tr>
                <c:forEach items="${cartById}" var="carts">
                    <tr>
                        <td height="95" align="center">
                            <div class="contact_way_img"><img src="http://img.ihuigo.com/goods_a/739b3910f020832305a94a6a96eec952.jpg"></div>
                            <div class="contact_way_txt"><p><span>${carts.mobileName}</span></p></div>
                            <div class="clear"></div>
                        </td>
                        <td align="center" style="line-height:22px;">
                            <h3>￥${carts.price}</h3>
                        </td>
                        </td>
                        <td style="padding-left:28px; line-height: 18px;text-align: left;"><span>${carts.basicSituation}${carts.functionalSituation}${carts.wearDegree}</span>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="foot_bor"> <em>1</em>件产品总计回收价格<em style="font-size:18px;">￥50</em> <!--<span>赠送环保券 <i>30</i>元--></span></div>
        </div>
        <!--订单-->
        </div>
        <!--提交订单-->

</form>
<!--切换-->
<script language="javascript">
    function aa(s_id){
        for(i=1;i<4;i++){
            if(i==s_id){
                document.getElementById("s"+i).className="block";
                document.getElementById("m"+i).className="c_"+i+" c_1";
                document.getElementById("t"+i).className="block";
            }
            else
            {
                document.getElementById("s"+i).className="none";
                document.getElementById("m"+i).className="c_0";
                document.getElementById("t"+i).className="none";
            }
        }
        if(s_id	==	1)	$("#ifalipay").val('n');
        else if(s_id	==	2)	$("#ifalipay").val('y');
        else if(s_id	==	3)	$("#ifalipay").val('s');

    }
    aa(2);
</script>
</body>
</html>