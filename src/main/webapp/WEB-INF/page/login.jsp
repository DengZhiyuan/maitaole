<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/9 0009
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>Title</title>
    <base href="<%=request.getContextPath()%>/"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="baidu-site-verification" content="t2itB2aISc">
    <meta name="baidu-site-verification" content="uxd62RWAmv">
    <title>米淘乐，二手手机，二手手机市场，二手手机价格，二手手机平台，二手手机交易，二手手机买卖，二手手机转让，求购二手手机，二手数码。</title>
    <meta name="keywords" content="米淘乐，二手手机，二手手机市场，二手手机价格，二手手机平台，二手手机交易，二手手机买卖，二手手机转让，求购二手手机，二手数码。">
    <meta name="description" content="米淘乐是中国首创二手数码产品竞价出售的交易平台。在这里可以闲置转让，参加竞价；还可以淘二手，卖二手良品；同时还有最专业的官方鉴定，专业质检,品质认证,让你放心买卖!选择米淘乐，让二手买卖，如此简单，而有趣！">
    <link href="./登录和注册_files/global.css" rel="stylesheet" type="text/css">
    <link href="./登录和注册_files/eject.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="./登录和注册_files/jquery.js"></script>
    <script type="text/javascript" src="./登录和注册_files/public.js"></script>
    <script type="text/javascript" src="./登录和注册_files/all.js"></script>
    <link href="http://www.mitaole.com/favicon.ico" type="image/x-icon" rel="Icon">
    <script>var site_url    =   'http://www.mitaole.com/';</script>
    <link href="./登录和注册_files/login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="./登录和注册_files/checkData.js"></script>
    <script type="text/javascript" src="./登录和注册_files/jqBackgroundPositionAnimate.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".login_btn").click(function(){
                $("body").animate({ "background-position-x": "center",
                    "background-position-y": "-300px"},1000);
            });

            $(".register_btn").click(function(){
                $("body").animate({ backgroundPositionX: "center",
                    backgroundPositionY: "-300px"},1000);
            });

            $(".login_btn").click(function(){
                $(".login_btn").animate({width:'264px'},500);
                $(".login_btn").text("登录米淘乐");
                $(".register_btn").animate({width:'125px'},500);
                $(".register_btn").text("注册");
                $(".login").fadeIn(3000)
                $(".register").fadeOut('slow')
            });

            $(".register_btn").click(function(){
                $(".login_btn").animate({width:'125px'},500);
                $(".login_btn").text("登录");
                $(".register_btn").animate({width:'264px'},500);
                $(".register_btn").text("注册米淘乐");
                $(".register").fadeIn(3000)
                $(".login").fadeOut('slow')
            });
            /*$('#mtl_submit_re').click(function(){

                if(check_register_data()&& V('status','v') == 1){
                    var form = V('reg','o');
                    form.attr('action',"/goods/register")
                    form.submit();
                }else{
                    return false;
                }
            });*/
            $('#l_login').click(function(){
                if(check_login()){
                    var form = V('login','o');
                    form.attr('action',"goods/login")
                    form.submit();
                }else{
                    return false;
                }

            });
            V('l_user','o').focus(function(){C('l_user','邮箱/手机号','login_user','手机号需要绑定，才可以用来登录！');});
            V('l_user','o').keyup(function(){
                if(!$(this).val()){
                    $('#l_pwd').val('');
                    $('input[name="jizhu_pwd"]').attr('checked',false);
                }
            });
            V('l_user','o').blur(function(){

                if(!$(this).val()){
                    $(this).val('邮箱/手机号');
                }
                return false;
            });

            V('l_pwd','o').focus(function(){V('l_password_html','o').html('');});
            V('custEml','o').focus(function(){C('custEml','邮箱','re_user','请输入您注册的邮箱');});
            V('custEml','o').blur(function(){

                if(!$(this).val()){
                    $(this).val('邮箱');
                }
                return false;
            });
            V('custPwd','o').focus(function(){V('custPwd_html','o').html('');});
            V('register_comfirm_pwd','o').focus(function(){V('register_comfirm_html','o').html('');});
            V('custEml','o').blur(function(){
                var user_value = V('custEml','v');
                if(!mtl_checkemail(user_value)){
                    mtl_tip('re_user','您输入的邮箱格式不正确。',null,null,'hidden');
                    return false;
                }
                var post_arr =  new Array();
                post_arr["username"]  = user_value;
                url = 'http://www.mitaole.com/ajax/check_username.html';
                ajax_post(url,post_arr,check_user);
            });
            V('custPwd','o').blur(function(){
                if(V('custPwd','v') == ''){
                    mtl_tip('re_pwd','请设置密码！',null,null,'hidden');
                    return false;
                }else{

                    if(V('custPwd','v').length>16){
                        mtl_tip('re_pwd','设置的密码最长16位！',null,null,'hidden');
                        V('custPwd','o').val('');
                        return false;
                    }
                }

            });
            V('register_comfirm_pwd','o').keyup(function(){
                var comfirm_value = V('register_comfirm_pwd','v');
                var pwd           = V('custPwd','v');
                if(V('status','v') == 0){
                    mtl_tip('re_user','请输入您的邮箱',null,null,'hidden');
                    V('custEml','o').val('');
                    return false;
                }
                if( comfirm_value== ''){
                    mtl_tip('re_pwd_comfirm','请输入确认密码！',null,null,'hidden');
                    return false;
                }
                if(comfirm_value != pwd){
                    mtl_tip('re_pwd_comfirm','输入的确认密码不一致！',null,null,'hidden');
                    return false;
                }else{
                    mtl_tip('re_pwd_comfirm','信息填写成功！',null,null);
                    V('status','o').val(1);
                    return false;
                }
            });
        });
    </script>
</head>
<body class="wrapper_login" style="background-position-y: -300px;">
<div class="login_main">

    <div class="login_title">

        <a href="javascript:;" class="login_btn" style="width: 264px;">登录米淘乐</a><a href="javascript:;" class="register_btn" style="width: 125px;">注册</a>
        <div class="clear"></div>
    </div>
        <div>
            <p style="color:red;font-size:30px">${msg}</p>
        </div>
    <div class="register" style="display: none;">
        <form method="POST" id="reg" action="goods/register">

            <input type="hidden" value="0" id="status" name="status">
            <input type="hidden" value="5ce77258810d3863ca5ba7fe81965c9c" name="safe_code">
            <div class="c1">
                <span class="c1_span"><img src="./登录和注册_files/login_icon3.gif"></span>
                <input type="text" value="邮箱" class="input_txt" id="custEml" name="custEml">
                <div class="login_tip" id="re_user"><span></span></div>

                <div class="clear"></div>
            </div>
            <div class="c1"><span class="c1_span"><img src="./登录和注册_files/login_icon2.gif"></span>
                <label>
                    <samp id="custPwd_html">设置密码</samp>
                    <input type="password" maxlength="16" value="" class="input_txt" id="custPwd" name="custPwd">
                </label>
                <div class="login_tip" id="re_pwd"><span></span></div>

                <div class="clear"></div>
            </div>
            <div class="c1"><span class="c1_span"><img src="./登录和注册_files/login_icon2.gif"></span>
                <label><samp id="register_comfirm_html">确认密码</samp>
                    <input type="password" value="" class="input_txt" id="register_comfirm_pwd" name="register_comfirm_pwd">
                </label>
                <div class="clear"></div>
                <div class="login_tip" id="re_pwd_comfirm"><span></span></div>

            </div>
            <input type="submit" value="提交注册" class="input_btn2" id="mtl_submit_re">
            <input type="hidden" name="back" value="aW5kZXg=">
        </form>
        <%--<div class="c1">
            <input type="submit" value="提交注册" class="input_btn2" id="mtl_submit_re">
        </div>--%>
        <div class="fast_login">
            <span>快速注册</span><samp>|</samp>
            <a href="javascript:open_link_pop(&#39;https://api.weibo.com/oauth2/authorize?client_id=3875553626&amp;redirect_uri=http%3A%2F%2Fwww.mitaole.com%2Fapi%2Fsina_callback&amp;response_type=code&amp;state=a20eac122a8878a1e882397752255578&#39;);"><img src="./登录和注册_files/login_sina.png"></a>
            <a href="javascript:open_link_pop(&#39;http://www.mitaole.com/api/qq_url.html&#39;);"><img src="./登录和注册_files/login_QQ.png"></a>
            <a href="javascript:open_link_pop(&#39;http://www.mitaole.com/weixin_login/create_login_qrcode.html&#39;);"><img src="./登录和注册_files/login_wx.png"></a>
        </div>
    </div>
    <div class="login" style="display: block;">
        <form id="login" method="POST">
            <input type="hidden" value="5ce77258810d3863ca5ba7fe81965c9c" name="safe_code">
            <input type="hidden" value="form" name="from_form">
            <div class="c1"><span class="c1_span"><img src="./登录和注册_files/login_icon1.gif"></span>
                <input type="text" value="邮箱/手机号" class="input_txt" id="l_user" name="custEml">
                <div class="login_tip" id="login_user"><span>手机号需要绑定，才可以用来登录！</span></div>
                <div class="clear"></div>
            </div>
            <div class="c1"><span class="c1_span"><img src="./登录和注册_files/login_icon2.gif"></span><label><samp id="l_password_html">密码</samp><input type="password" value="" class="input_txt" id="l_pwd" name="custPwd"></label>
                <div class="clear"></div>
            </div>
            <div class="login_tip" id="login_pwd"><span></span></div>
            <div class="c1">
                <input type="hidden" name="back" value="aW5kZXg=">
                <input type="submit" value="提交登录" class="input_btn" id="l_login">
            </div>

            <div class="fast_login">
                <span>快速登录</span>
                <samp>|</samp>
                <a href="javascript:open_link_pop(&#39;https://api.weibo.com/oauth2/authorize?client_id=3875553626&amp;redirect_uri=http%3A%2F%2Fwww.mitaole.com%2Fapi%2Fsina_callback&amp;response_type=code&amp;state=a20eac122a8878a1e882397752255578&#39;);"><img src="./登录和注册_files/login_sina.png"></a>
                <a href="javascript:open_link_pop(&#39;http://www.mitaole.com/api/qq_url.html&#39;);"><img src="./登录和注册_files/login_QQ.png"></a>
                <a href="javascript:open_link_pop(&#39;http://www.mitaole.com/weixin_login/create_login_qrcode.html&#39;);"><img src="./登录和注册_files/login_wx.png"></a>
                <em><a href="http://www.mitaole.com/members/find_login_pwd.html">忘记密码</a></em>
                <em><input value="y" type="checkbox" name="jizhu_pwd"><a href="http://www.mitaole.com/members.html?b=aW5kZXg=###">记住密码|</a></em>
                <div class="clear"></div>
            </div>
        </form>
    </div>
</div>

<!--[if lte IE 6]>
<script src="http://www.mitaole.com/js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, b, a');
</script>
<![endif]-->

</body></html>
</head>
<body>

</body>
</html>
