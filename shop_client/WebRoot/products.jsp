<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8"/>
		<title></title>
	<!-- 	<link rel="stylesheet" type="text/css" href="css/reset.css" /> -->
		<link rel="stylesheet" type="text/css" href="css/trymaincontainer.css" /> </head>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/superslide.2.1.js"></script>


	<body>
			


		
		
		
		
		<!--欢迎来到靓淘商城-->
		<div class="container">
			<div class="welcome">
				<div class="left fl">
					欢迎来到靓淘商城！首页
				</div>
				<div class="right fr">
					<c:if test="${sessionScope.userlogininfo==null}">
					<div class="item fl">
						<div class="pic fl">
							<img src="img/zhanghu2.png" />
						</div>
						<div class="text fl">
							<a href="client/enterlogin.action">请登录</a>
						</div>
						<div class="clear">

						</div>

					</div>
					<div class="item fl">
						<div class="text">
							快速注册
						</div>
					</div>
					</c:if>
					
					<c:if test="${sessionScope.userlogininfo!=null}">
					<div class="item fl">
						欢迎,${sessionScope.userlogininfo.nickname}
					</div>
					<div class="item fl">
						<div class="text">
							<a href="client/logout.action">注销</a>
						</div>
					</div>
					</c:if>
					
					
					
					<div class="item fl">
						<div class="pic fl">
							<img src="img/xin.png" />
						</div>
						<div class="text fl">
							我的收藏
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="item fl">
						<div class="text">
							我的订单
						</div>
					</div>
					<div class="item fl">
						<div class="pic fl">
							<img src="img/phone.png" />
						</div>
						<div class="text fl">
							手机靓淘
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="item fl">
						<div class="text">
							我的积分
						</div>
					</div>
					<div class="item fl">
						<div class="text">
							我的评价
						</div>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<hr />

		<!--靓淘网logo + 搜索框  + 去购物车结算-->
		<div class="container">
			<div class="top">
				<div class="left fl">
					<img src="img/LOGO.png" />
				</div>
				<div class="center fl">
					<div class="row1">
						<form action="" method="post">
							<input type="search" value="" />
							<input type="submit" name="" id="" value="搜索" />
						</form>
					</div>
					<div class="row2">
						保湿 | 面膜 | 洗面奶 | 补水 | 香水 | 眼霜 | 口红 | 护肤套装 | BB霜
					</div>
				</div>
				<div class="right fr">
					<div class="border"><a href="shopcar.jsp">
						<div class="pic fl">
							<img src="img/121.png" />
						</div>
						<div class="select fl">
							<select name="">
								<option value=""> 去购物车结算</option>
							</select>
						</div>
						<div class="clear">

						</div>
						</a>
					</div>
				</div>
				<div class="clear">
				</div>
			</div>
		</div>

		<!--主要市场+导航栏-->
		<div class="mainmarket ">
			<div class="container">
				<div class="left fl relative">
					☰主要市场
				</div>
				<div class="clear">

				</div>
			</div>
					<!---->
				</div>
			</div>
		
<div class="fivegirls">
			<div class="container">
		<div class="fivepic">
						<c:forEach items="${pros}" var="r">
							<div class="item fl marginright relative">
							<img src="${r.pics}" width="200px" height="300px"/>
							<div class="tip">
								<a href="details.htm?id=${r.ID}">${r.name}</a>
							</div>
						</div>
						</c:forEach>
						<div class="clear">
						</div>
					</div>
</div></div>
		<!--页尾-->
		<div class="container">

			<div class="quality">
				<div class="item fl">
					<div class="pic fl">
						<img src="img/you.png" />
					</div>
					<div class="text fl">
						<div class="line1">
							品质保障
						</div>
						<div class="line2">
							品质护航 购物无忧
						</div>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="item fl">
					<div class="pic fl borderleft">
						<img src="img/7tian.png" />
					</div>
					<div class="text fl">
						<div class="line1">
							七天无理由退货
						</div>
						<div class="line2">
							为您提供售后无忧保障
						</div>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="item fl">
					<div class="pic fl borderleft">
						<img src="img/te.png" />
					</div>
					<div class="text fl">
						<div class="line1">
							特色服务体验
						</div>
						<div class="line2">
							为您呈现不一样的服务
						</div>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="item fl">
					<div class="pic fl borderleft">
						<img src="img/109.png" />
					</div>
					<div class="text fl">
						<div class="line1">
							帮助中心
						</div>
						<div class="line2">
							您的购物指南
						</div>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="clear">

				</div>
			</div>
			<div class="direction">
				<div class="item fl">
					<div class="title">
						购物指南
					</div>
					<div class="text">
						免费注册
					</div>
					<div class="text">
						开通支付宝
					</div>
					<div class="text">
						支付宝充值
					</div>
				</div>
				<div class="item fl">
					<div class="title">
						品质保障
					</div>
					<div class="text">
						发票保障
					</div>
					<div class="text">
						售后规划
					</div>
					<div class="text">
						缺货赔付
					</div>
				</div>
				<div class="item fl">
					<div class="title">
						支付方式
					</div>
					<div class="text">
						快捷支付
					</div>
					<div class="text">
						信用卡
					</div>
					<div class="text">
						活到付款
					</div>
				</div>
				<div class="item fl">
					<div class="title">
						商家服务
					</div>
					<div class="text">
						商家入驻
					</div>
					<div class="text">
						商家中心
					</div>
					<div class="text">
						物流服务
					</div>
				</div>
				<div class="item fl">
					<div class="title">
						手机靓淘
					</div>
					<div class="pic">
						<img src="img/saoma1.png" />
					</div>
				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--底部关于靓淘-->
		<div class="aboutus">
			<div class="container">
				<div class="text">
					<ul>
						<li>关于靓淘</li>
						<li>帮助中心</li>
						<li>开放平台</li>
						<li>诚聘精英</li>
						<li>联系我们</li>
						<li>网站合作</li>
						<li>法律声明及隐私政策</li>
						<li>知识产权</li>
						<li>廉政举报</li>
						<li>规则意见征集</li>
						<div class="clear">

						</div>
					</ul>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="text">
					<div class="line1">
						COPYRIGHT 2010-2017 北京创锐文化传媒有限公司 JUME.com 保留一切权利。客服热线：400-123-8888
					</div>
					<div class="line2">
						京公网安备 11010102001226|京ICP证111033号|食品流通许可证 SP1101051110165515(1-1) |营业执照
					</div>
				</div>

			</div>
		</div>
		
				<!--轮播图-->
		<script type="text/javascript">
$(".fullSlide").hover(function(){
    $(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
},
function(){
    $(this).find(".prev,.next").fadeOut()
});
$(".fullSlide").slide({
    titCell: ".hd ul",
    mainCell: ".bd ul",
    effect: "fold",
    autoPlay: true,
    autoPage: true,
    trigger: "click",
    startFun: function(i) {
        var curLi = jQuery(".fullSlide .bd li").eq(i);
        if ( !! curLi.attr("_src")) {
            curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
        }
    }
});
</script>
		
		<script type="text/javascript">
			function clock() {
				var now = new Date();
				var lastday = new Date(2017, 7, 22, 12, 0, 0, 0);
				var total = lastday - now;
				var s = parseInt(total / 1000 % 60);
				var min = parseInt(total / (1000 * 60) % 60);
				var h = parseInt(total / (1000 * 60 * 60) % 24);
				var d = parseInt(total / (1000 * 60 * 60 * 24));
				s = resettime(s);
				min = resettime(min);
				h = resettime(h);
				d = resettime(d);

				var oLine1 = document.querySelectorAll(".daojishi");
				oLine1[0].innerHTML = d + ":" + h + ":" + min + ":" + s;
				oLine1[1].innerHTML = d + ":" + h + ":" + min + ":" + s;
			}

			function resettime(date) {
				if(date < 10) date = "0" + date;
				return date;
			}
			setInterval(clock, 1000);
		</script>
		<script type="text/javascript">
			$(".market .left .line").hover(function() {
				$(this).find(".item_contain").show();
				$(this).siblings().find(".item_contain").fadeOut();
			}, function() {
				$(this).find(".item_contain").hide();
			})

			//结束首页

			//			alert($(".lista li").eq(1).text())
			//			alert($(".navigation .top .item").eq(0))

			$(".navigation .top .item").hover(function() {
				var index = $(this).index();
				$(this).find(".bordert").css("display", "block");
				$(this).siblings().find(".bordert").css("display", "none");
				$(".lista li").eq(index).css("display", "block");
				$(".lista li").eq(index).siblings().css("display", "none");

				if($(this).id == "wocaonima") {
					$(this).addClass("redborder");
				} else {
					$(this).removeClass("redborder")
				}
			})

		
		</script>

		<script type="text/javascript">
			//				$("#wocaonima").css("background-image","url(img/"+"2"+".png)");

			for(var i = 0; i < 18; i++) {
				$(".navigation .right .li1 .top_pic").eq(i).css("background-image", "url(img/logo/" + (i + 1) + ".png)");
			}
			for(var i = 0; i < 21; i++) {
				$(".navigation .right .li2 .top_pic").eq(i).css("background-image", "url(img/logo/" + (i + 3) + ".png)");
			}
			for(var i = 0; i < 24; i++) {
				$(".navigation .right .li3 .top_pic").eq(i).css("background-image", "url(img/logo/" + (i + 6) + ".png)");
			}
			for(var i = 0; i < 20; i++) {
				$(".navigation .right .li4 .top_pic").eq(i).css("background-image", "url(img/logo/" + (i + 2) + ".png)");
			}
			$("#wocaonima").css("display", "block");
		</script>
<!--分类里图片的动画效果-->
<script type="text/javascript">
	$bigpart = $(".liangtaosort .right .bigitem");
	$smallpart = $(".liangtaosort .right .smallitem");
	
	$bigpart.hover(function () {
		$(this).find("img").stop().animate({
			"margin-right":"15px",
		},"slow")
		
	},function () {
		$(this).find("img").stop().animate({
			"margin-right":"0px",
		},"slow")
	})
	$smallpart.hover(function () {
		$(this).find("img").stop().animate({
			"margin-right":"15px",
		},"slow")
		
	},function () {
		$(this).find("img").stop().animate({
			"margin-right":"0px",
		},"slow")
	})
	
</script>
	</body>

</html>