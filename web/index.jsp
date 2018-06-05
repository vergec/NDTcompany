<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>找物流</title>
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<!--幻灯片-->
<link rel="stylesheet" type="text/css" href="plugins/banner/css/goodnav.css">
<script type="text/javascript" src="plugins/banner/js/jquery.litenav.js"></script>
<!--幻灯片-->
<!--滑动门-->
<script type="text/javascript">
$(function(){
	$(".tabBox .tabNav li").click(function(){
		$(this).siblings("li").removeClass("now");
		$(this).addClass("now");
		$(this).parents(".tabBox").find(".tabCont").css("display","none");
		var i=$(this).index();
		$(this).parents(".tabBox").find(".tabCont:eq("+i+")").css("display","block");
		//console.log(i);
	});
})
</script>
<!--滑动门-->
</head>

<body>
<!--头部-->
<div class="head_bg">
	<div class="head clearfix">
    	<div class="logo"><a href=""><img src="img/index/redlogo.png" alt=""/></a></div>
        <div class="menu">
        	<div class="head_top">
            	<a href="login.jsp">登录</a>
                <a href="register.jsp">注册</a>
                <a href="">设为首页</a>
                <a href="">加入收藏</a>
            </div>
            <ul class="clearfix">
            	<li class="now"><a href="">首页</a></li>
                <li><a href="">我的物流</a></li>
                <li class="news"><a href="">消息<span>12</span></a></li>
                <li><a href="">网站地图</a></li>
                <li><a href="">帮助与支持</a></li>
                <li><a href="about.html">关于哪都通</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部-->
<!--中间部分-->
<div class="main">
	<!--盒子1-->
    <div class="box_1 clearfix">
    	<div class="box_1_l">
        	<a href="login.jsp">网上下单<img src="img/index/icon2.png"/></a>
            <a href="register.jsp" class="a_2">承运商申请<img src="img/index/icon2.png"/></a>
        </div>
        <div class="banner">
        	<!-- 代码 开始 -->
            <div id="hotpic">
                <div id="NewsPic">
                    <a target="_blank" href="" style="visibility: visible; display: block;">
                        <img src="img/index/banner.jpg" class="Picture" alt="" /></a>
                    <a style="visibility: hidden; display: none;" target="_blank" href="">
                       <img src="img/index/banner1.jpg" class="Picture" alt="" /></a>
                    <a style="visibility: hidden; display: none;" target="_blank" href="">
                        <img src="img/index/banner2.jpg" class="Picture" alt="" /></a>
                    <div class="Nav">
                        <span class="Normal">3</span>
                        <span class="Normal">2</span>
                        <span class="Cur">1</span>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $('#hotpic').liteNav(5000);
            </script>
            <!-- 代码 结束 -->
        </div>
    </div>
    <!--盒子1-->
    <div class="space_hx">&nbsp;</div>
    <!--盒子2-->
    <!-- <div class="box_2"> -->
    	<!-- <div class="tabBox_t"> -->
            <!-- <div class="tabBox"> -->
              <!-- <ul class="tabNav"> -->
              	<!-- <li>综合</li> -->
                <!-- <li class="now">找物流</li> -->
                <!-- <li>网点查询</li> -->
                <!-- <li>货物追踪</li> -->
              <!-- </ul> -->
              <!-- <form action="" method="post"> -->
              <!-- <div class="tabCont"> -->
              	<!-- <div class="ctn"> -->
                <!-- <input name="" type="text" placeholder="请输入关键字"> -->
                <!-- <a href="">搜索</a> -->
                <!-- </div> -->
              <!-- </div> -->
              <!-- <div class="tabCont" style="display:block;"> -->
              	<!-- <div class="ctn"> -->
                <!-- <span>发货城市</span> -->
                <!-- <input name="" type="text" placeholder="请输入城市名（中文/拼音）"> -->
                <!-- <span>到达城市</span> -->
                <!-- <input name="" type="text" placeholder="请输入城市名（中文/拼音）"> -->
                <!-- <a href="">搜索比价</a> -->
                <!-- </div> -->
              <!-- </div> -->
              <!-- <div class="tabCont"> -->
              	<!-- <div class="ctn"> -->
                <!-- <span>网点查询</span> -->
                <!-- <input name="" type="text" placeholder="请输入网点名称"> -->
                <!-- <a href="">搜索</a> -->
                <!-- </div> -->
              <!-- </div> -->
              <!-- <div class="tabCont"> -->
              	<!-- <div class="ctn"> -->
                <!-- <span>订单号</span> -->
                <!-- <input name="" type="text" placeholder="请输入订单号"> -->
                <!-- <a href="">搜索</a> -->
                <!-- </div> -->
              <!-- </div> -->
            <!-- </div> -->
            <!-- </form> -->
        <!-- </div> -->
    <!-- </div> -->
    <!--盒子2-->
    <div class="space_hx">&nbsp;</div>
    <!--盒子3-->
    <div class="box_3 clearfix">
    	<div class="box_3_l">
        	<div class="box_head">
            	<span>订单信息</span>
                <a href=""><img src="img/index/more.png" /></a>
            </div>
            <ul>
            	<li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
                <li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
                <li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
                <li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
                <li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
                <li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
                <li>
                    <a href="">
                        <span>东莞</span>
                        <img src="img/index/icon15.png"/>
                        <span>重庆</span>
                    </a>
                    <em>2014-04-13</em>
                </li>
            </ul>
        </div>
        <div class="box_3_r">
        	<div class="box_head">
            	<span>物流公司信息</span>
                <a href=""><img src="img/index/more.png" /></a>
            </div>
            <!--开始-->
            <div class="box16 clearfix">
                <ul>
                    <li>
                        <span><a href="">2014清明节发货通知</a></span>
                        <em>2014-04-15</em>
                    </li>
                    <li>
                        <span><a href="">2014年外请合同车</a></span>
                        <em>2014-04-15</em>
                    </li>
                    <li>
                        <span><a href="">开展“打造和谐团队”主题培训</a></span>
                        <em>2014-04-15</em>
                    </li>
                    <li>
                        <span><a href="">召开2014年全网汽运工作会</a></span>
                        <em>2014-04-15</em>
                    </li>
                    <li>
                        <span><a href="">中国快递协会及各省（市）快递协会</a></span>
                        <em>2014-04-15</em>
                    </li>
                    <li>
                        <span><a href="">召开2014年全网汽运工作会</a></span>
                        <em>2014-04-15</em>
                    </li>
                    <li>
                        <span><a href="">开展“打造和谐团队”主题开展“打造和谐团队”主题</a></span>
                        <em>2014-04-15</em>
                    </li>
                </ul>
            </div>
            <!--结束-->
        </div>
    </div>
    <!--盒子3-->
    <div class="space_hx">&nbsp;</div>
</div>
<!--中间部分-->

<!--底部-->
<div class="foot_bg">
	<div class="foot">
    	<div class="foot_t">
        	<a href="">业务介绍</a>
            <a href="">联系我们</a>
        </div>
        <div class="copy">
        	Copyright&copy;&nbsp;1998-2018&nbsp; 哪都通物流有限责任公司.&nbsp;&nbsp;All&nbsp;&nbsp;rights&nbsp;&nbsp;reserved. &nbsp;&nbsp;粤ICP备666666
        </div>
    </div>	
</div>
<!--底部-->
</body>
</html>
