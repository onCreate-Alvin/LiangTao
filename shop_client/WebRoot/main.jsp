<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8"/>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/trymaincontainer.css" /> </head>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/superslide.2.1.js"></script>


	<body>
			<style type="text/css">		
*{margin:0;padding:0;list-style:none;}
body{background:#fff;font:normal 12px/22px 宋体;width:100%;}
img{border:0;}
a{text-decoration:none;color:#333;}
a:hover{color:#1974A1;}
/* fullSlide */
.fullSlide{width:100%;position:relative;height:410px;background:#000;}
.fullSlide .bd{margin:0 auto;position:relative;z-index:0;overflow:hidden;}
.fullSlide .bd ul{width:100% !important;}
.fullSlide .bd li{width:100% !important;height:410px;overflow:hidden;text-align:center;}
.fullSlide .bd li a{display:block;height:415px;}
.fullSlide .hd{width:100%;position:absolute;z-index:1;bottom:0;left:0;height:30px;line-height:30px;}
.fullSlide .hd ul{text-align:center;}
.fullSlide .hd ul li{cursor:pointer;display:inline-block;*display:inline;zoom:1;width:42px;height:11px;margin:1px;overflow:hidden;background:#000;filter:alpha(opacity=50);opacity:0.5;line-height:999px;}
.fullSlide .hd ul .on{background:#f00;}
.fullSlide .prev,.fullSlide .next{display:block;position:absolute;z-index:1;top:50%;margin-top:-30px;left:15%;z-index:1;width:40px;height:60px;background:url(images/slider-arrow.png) -126px -137px #000 no-repeat;cursor:pointer;filter:alpha(opacity=50);opacity:0.5;display:none;}
.fullSlide .next{left:auto;right:15%;background-position:-6px -137px;}
</style>


		
		
		
		
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
					<div class="border">
						<div class="pic fl">
							<img src="img/121.png" />
						</div>
						<div class="select fl">
							<select name="">
								<a href="shopcar.htm"><option value="1">去购物车结算</option></a> 
								<option value="2"><a href="shopcar.jsp">清空购物车</a> </option>
							</select>
						</div>
						<div class="clear">

						</div>
						
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
						<!---->
							<div class="market"  >
			<div class="container">
				<div class="left fl relative">
					<!--上衣-->
					<ul>
						<li class=" line">
							<div class="item fl">
								<c:forEach items="${requestScope.fathertypes}" var="father">
								<div class="bigtext fl">
								<a href="products.htm?id=${father.ID}">${father.name}</a>	
								</div>
								</c:forEach>
								<div class="clear">

								</div>
							</div>
							<div class="item_contain fl ">
								
								<c:forEach items="${requestScope.fathertypes}" var="father">
									<div class="line1">

									<div class="partone fl">
										<a href="products.htm?id=${father.ID}"><i style="width: 400px"> ${father.name}</i> ></a>	
									</div>
									<div class="parttwo fl">
										<ul>
											<c:forEach items="${father.children}" var="children">
												<li> <a href="products.htm?id=${children.ID}"">${children.name}</a> </li>
											</c:forEach>
										
											<div class="clear">
											</div>
										</ul>
									</div>
									<div class="clear">
									</div>
								</div>
								</c:forEach>
							</div>
							<div class="clear">

							</div>
						</li>
						
										
					</ul>

				</div>

				<div class="right fr">
					<div class="vipcenter">
						<div class="pic">
							<img src="img/vip.png" />
						</div>
						<div class="text">
							主人好！欢迎来逛靓淘~
						</div>
						<div class="border">
							会员中心
						</div>
					</div>
					<div class="bag">
						<div class="text">
							<div class="big">
								包治百病
							</div>
							<div class="small">
								17新款汇
							</div>

						</div>
						<div class="pic">
							<img src="img/bag.png" />
						</div>
					</div>
				</div>
			</div>

			<div class="clear">

			</div>
		</div>
</div>
					<!---->
				</div>
				<div class="right fl">
					<div class="item fl">
						美妆商城
					</div>
					<div class="item fl">
						服装运动
					</div>
					<div class="item fl">
						手机数码
					</div>
					<div class="item fl">
						家装家纺
					</div>
					<div class="item fl">
						淘遍美食
					</div>
					<div class="item fl">
						国际轻奢
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="clear">

				</div>
				
				
				
				
				
			</div>
		

		<!--主要市场的详细内容 + 主页照片  +  会员中心 + 包治百病-->
			<!--轮播图-->
		<div class="fullSlide">
	
	<div class="bd">
		<ul>
			<li _src="url(images/tu1.png)" style="background:#E2025E center 0 no-repeat;"><a href="http://www.17sucai.com"></a></li>
			<li _src="url(images/tu2.png)" style="background:#DED5A1 center 0 no-repeat;"><a href="http://www.17sucai.com"></a></li>
			<li _src="url(images/tu3.png)" style="background:#B8CED1 center 0 no-repeat;"><a href="http://www.17sucai.com"></a></li>
			<li _src="url(images/tu9.png)" style="background:#98918E center 0 no-repeat;"><a href="http://www.17sucai.com"></a></li>
			<li _src="url(images/tu8.png)" style="background:#FEFF19 center 0 no-repeat;"><a href="http://www.17sucai.com"></a></li>
	
		</ul>
	
	
	</div>
	<div class="hd"><ul></ul></div>
	<span class="prev"></span>
	<span class="next"></span>
	
</div>	
	
	
	
	<!--//-->
	
		<!--推荐品牌导航栏  + 照片 + 品牌logo集合-->
		<div class="navigation">
			<div class="container">
				<div class="top black">

					<div class="item fl relative " id="tuijian">
						<div class="top_title">
							推荐品牌
						</div>
						<div class="bordert">
							<img src="img/43.png" />
						</div>
					</div>
					<div class="item fl relative">
						<div class="top_title">
							独家品牌
						</div>
						<div class="bordert">
							<img src="img/43.png" />
						</div>
					</div>
					<div class="item fl relative">
						<div class="top_title">
							欧美品牌
						</div>
						<div class="bordert">
							<img src="img/43.png" />
						</div>
					</div>
					<div class="item fl relative">
						<div class="top_title">
							国货品牌
						</div>
						<div class="bordert">
							<img src="img/43.png" />
						</div>
					</div>
					<div class="clear">

					</div>
				</div>

				<div class="left fl">
					<img src="img/41.png" />
				</div>
				<div class="right fr">
					<ul class="lista">
						<li class="li1">
							<div class="part fl relative">
								<div class="top_pic" id="wocaonima">

								</div>
								<div class="text relative">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="clear">

							</div>
						</li>
						<li class="li2">
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="clear">

							</div>
						</li>
						<li class="li3">
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="clear">

							</div>
						</li>
						<li class="li4">
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="part fl">
								<div class="top_pic">

								</div>
								<div class="text">
									美加净
								</div>
							</div>
							<div class="">

							</div>
						</li>
					</ul>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--格子专卖-->
		<div class="lattice">
			<div class="container">
				<div class="item fl marginright15 border relative">
					<div class="text">
						<div class="line1">
							限时快抢
						</div>
						<div class="line2 daojishi" id="daojishi1">
							倒计时
						</div>
					</div>
					<div class="pic2">
						<img src="img/19.png" />
					</div>
				</div>
				<div class="item fl marginright15 ">
					<div class="smallitem border relative">
						<div class="text">
							<div class="line1">
								一元抢好货
							</div>
							<div class="line2">
								整点拼手速
							</div>
						</div>
						<div class="pic2">
							<img src="img/20.png" />
						</div>
					</div>
					<div class="block">

					</div>
					<div class="smallitem border relative">
						<div class="text">
							<div class="line1">
								0.01抽好运
							</div>
							<div class="line2">
								一分钱幸运礼遇
							</div>
						</div>
						<div class="pic2">
							<img src="img/21.png" />
						</div>
					</div>
				</div>
				<div class="item fl marginright15 border relative">
					<div class="text">
						<div class="line1">
							团购特卖
						</div>
						<div class="line2">
							<div class="fl">
								风格大牌春季新品
							</div>
							<div class="redcolor fl">
								10点上新
							</div>
							<div class="clear">

							</div>
						</div>
					</div>
					<div class="pic1">
						<img src="img/22.png" />
					</div>
				</div>
				<div class="item fl marginright15 ">
					<div class="smallitem border relative">
						<div class="text">
							<div class="line1">
								品牌团
							</div>
							<div class="line2 daojishi" id="daojishi2">
								倒计时2
							</div>
						</div>
						<div class="pic2">
							<img src="img/23.png" />
						</div>
					</div>
					<div class="block">

					</div>
					<div class="smallitem border relative">
						<div class="text">
							<div class="line1">
								入库质检
							</div>
							<div class="line2 redcolor">
								精选好货 劣一赔三
							</div>
						</div>
						<div class="pic2">
							<img src="img/24.png" />
						</div>
					</div>
				</div>
				<div class="item fl border relative">
					<div class="text">
						<div class="line1">
							美妆团
						</div>
						<div class="line2">
							超值大牌 折扣全免
						</div>
					</div>
					<div class="pic1">
						<img src="img/25.png" />
					</div>
				</div>
				<div class="clear">

				</div>
			</div>
		</div>

		<!--五大妹妹-->
		<div class="fivegirls">
			<div class="container">
				<div class="liangtaosort">
					<div class="top">
						<div class="title  font-size-15">
							<div class="pic fl">
								<img src="img/31.png" />
							</div>

							<div class="text fl">
								红人穿搭
							</div>
							<div class="clear">
							</div>
						</div>
					</div>
					<div class="fivepic">
						<div class="item fl marginright relative">
							<img src="img/26.png" />
							<div class="tip">
								<a href="">小个子私服</a>
							</div>
						</div>
						<div class="item fl marginright relative">
							<img src="img/27.png" />
							<div class="tip">
								<a href="">连衣裙套装</a>
							</div>
						</div>
						<div class="item fl marginright relative">
							<img src="img/28.png" />
							<div class="tip">
								<a href="">周末约会装</a>
							</div>
						</div>
						<div class="item fl marginright relative">
							<img src="img/29.png" />
							<div class="tip">
								<a href="">学院卫衣装</a>
							</div>
						</div>
						<div class="item fr relative">
							<img src="img/30.png" />
							<div class="tip">
								<a href="">早春韩系装</a>
							</div>
						</div>
						<div class="clear">
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--广告位之销量第一-->
		<div class="youyawobaoel">
			<div class="container">
				<div class="wobaole">
					<img src="img/108.png" />
				</div>
			</div>
		</div>
		<!--靓淘分类-->
		<div class="liangtaosort">
			<div class="container">
				<div class="top">
					<div class="title fl font-size-15">
						<div class="pic fl">
							<img src="img/31.png" />
						</div>
						<div class="text fl">
							靓淘服装
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="sort fl">
						热门搜索：
						<span>卫衣</span>
						<span>风衣</span>
						<span>连衣裙</span>
						<span>阔腿裤</span>
						<span>小脚裤</span>
						<span>牛仔裤</span>
					</div>
					<div class="all fr">
						查看全部>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="left fl">
					<img src="img/53.png" />
					<div class="title font-size-13">
						大牌新品折扣>
					</div>
					<div class="background-bottom-red">
						<div class="big">
							牛仔裤潮流趋势
						</div>
						<div class="small">
							女装春夏新品五折
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="bigitem fl relative">
						<div class="text">
							<div class="line1">
								条纹连衣裙新品首发
							</div>
							<div class="line2">
								立即预约享好礼
							</div>
							<div class="line3 redcolor">
								夏季新品预约爆款
							</div>
							<div class="button">
								立即查看
							</div>
						</div>
						<div class="pic">
							<img src="img/63.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								雪纺当道
							</div>
							<div class="line2 redcolor">
								一看百变雪纺风采
							</div>
						</div>
						<div class="pic">
							<img src="img/55.png" />
						</div>
					</div>

					<div class="norightborder smallitem fl relative ">
						<div class="text">
							<div class="line1">
								帅气黑色连体裤
							</div>
							<div class="line2 redcolor">
								精致细节利落休闲
							</div>
						</div>
						<div class="pic">
							<img src="img/56.png" />
						</div>
					</div>
					<br />
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								春夏型牛仔衬衫
							</div>
							<div class="line2 redcolor">
								OL的完美新姿
							</div>
						</div>
						<div class="pic">
							<img src="img/57.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								早春时尚新条纹
							</div>
							<div class="line2 redcolor">
								春季新款条纹尖货
							</div>
						</div>
						<div class="pic">
							<img src="img/58.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								Amii工作装
							</div>
							<div class="line2 redcolor">
								百搭显瘦实穿时尚
							</div>
						</div>
						<div class="pic">
							<img src="img/59.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								初夏时尚T恤
							</div>
							<div class="line2 redcolor">
								新潮出众
							</div>
						</div>
						<div class="pic">
							<img src="img/61.png" />
						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>

		<!--靓淘分类2-->
		<div class="liangtaosort">
			<div class="container">
				<div class="top">
					<div class="title fl font-size-15">
						<div class="pic fl">
							<img src="img/31.png" />
						</div>
						<div class="text fl">
							靓淘数码
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="sort fl">
						热门搜索：
						<span><a href="#">手机</a></span>
						<span><a href="#">台式电脑</a></span>
						<span><a href="#">笔记本</a></span>
						<span><a href="#">平板电脑</a></span>
						<span><a href="#">手机配件</a></span>
						<span><a href="#">电脑配件</a></span>
					</div>
					<div class="all fr">
						<a href="#">查看全部></a>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="left fl">
					<img src="img/65.png" />
					<div class="title font-size-13">
						大牌新品折扣>
					</div>
					<div class="background-bottom-blue">
						<div class="big">
							笔记本平板焕新季
						</div>
						<div class="small">
							高能高颜爆款立减
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="bigitem fl relative">
						<div class="text">
							<div class="line1">
								最新爆款新品发布
							</div>
							<div class="line2">
								立即预约抢好礼
							</div>
							<div class="line3 bluecolor">
								智能闪光灯 疾速
							</div>
							<div class="button">
								立即查看
							</div>
						</div>
						<div class="pic">
							<img src="img/167.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								每天都是情人节
							</div>
							<div class="line2 bluecolor">
								送她所爱
							</div>
						</div>
						<div class="pic">
							<img src="img/66.png" />
						</div>
					</div>

					<div class="norightborder smallitem fl relative ">
						<div class="text">
							<div class="line1">
								享你所想
							</div>
							<div class="line2 bluecolor">
								安全便携存储
							</div>
						</div>
						<div class="pic">
							<img src="img/67.png" />
						</div>
					</div>
					<br />
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								为专业而生
							</div>
							<div class="line2 bluecolor">
								智能降噪无损音质
							</div>
						</div>
						<div class="pic">
							<img src="img/68.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								乐心充电宝
							</div>
							<div class="line2 bluecolor">
								送多重好礼
							</div>
						</div>
						<div class="pic">
							<img src="img/69.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								智享生活
							</div>
							<div class="line2 bluecolor">
								智慧清洁 想你所想
							</div>
						</div>
						<div class="pic">
							<img src="img/62.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								美丽先行者
							</div>
							<div class="line2 bluecolor">
								从头开始美
							</div>
						</div>
						<div class="pic">
							<img src="img/71.png" />
						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--广告位之你的优雅我包了-->
		<div class="youyawobaoel">
			<div class="container">
				<div class="wobaole">
					<img src="img/104.png" />
				</div>
			</div>
		</div>

		<!--靓淘分类3-->
		<div class="liangtaosort">
			<div class="container">
				<div class="top">
					<div class="title fl font-size-15">
						<div class="pic fl">
							<img src="img/31.png" />
						</div>
						<div class="text fl">
							靓淘家居
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="sort fl">
						热门搜索：
						<span><a href="#">居家饰品</a></span>
						<span><a href="#">大家居</a></span>
						<span><a href="#">四件套</a></span>
						<span><a href="#">常用药</a></span>
						<span><a href="#">家纺</a></span>
						<span><a href="#">小家具</a></span>
					</div>
					<div class="all fr">
						<a href="#">查看全部></a>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="left fl">
					<img src="img/72.png" />
					<div class="title font-size-13">
						大牌新品折扣>
					</div>
					<div class="background-bottom-green">
						<div class="big">
							好货收纳节
						</div>
						<div class="small">
							不止5折
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="bigitem fl relative">
						<div class="text">
							<div class="line1">
								健康多功能调节不锈钢椅子
							</div>
							<div class="line2">
								立即预约抢好礼 最高减200
							</div>
							<div class="line3 greencolor">
								春季家装正当时
							</div>
							<div class="button">
								立即查看
							</div>
						</div>
						<div class="pic">
							<img src="img/73.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								居家拖鞋尚新
							</div>
							<div class="line2 greencolor">
								越来越美
							</div>
						</div>
						<div class="pic">
							<img src="img/74.png" />
						</div>
					</div>

					<div class="norightborder smallitem fl relative ">
						<div class="text">
							<div class="line1">
								家纺家饰大牌
							</div>
							<div class="line2 greencolor">
								优雅品质新主张
							</div>
						</div>
						<div class="pic">
							<img src="img/75.png" />
						</div>
					</div>
					<br />
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								居家花艺
							</div>
							<div class="line2 greencolor">
								打造浪漫格调
							</div>
						</div>
						<div class="pic">
							<img src="img/76.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								美式座椅专场
							</div>
							<div class="line2 greencolor">
								享纯正美式生活
							</div>
						</div>
						<div class="pic">
							<img src="img/78.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								大容量一杯双盖
							</div>
							<div class="line2 greencolor">
								优质不锈钢配杯套
							</div>
						</div>
						<div class="pic">
							<img src="img/79.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								大牌安全水杯
							</div>
							<div class="line2 greencolor">
								健康生活每一天
							</div>
						</div>
						<div class="pic">
							<img src="img/80.png" />
						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--靓淘分类4-->
		<div class="liangtaosort">
			<div class="container">
				<div class="top">
					<div class="title fl font-size-15">
						<div class="pic fl">
							<img src="img/31.png" />
						</div>
						<div class="text fl">
							靓淘家电
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="sort fl">
						热门搜索：
						<span><a href="#">彩电</a></span>
						<span><a href="#">大家电</a></span>
						<span><a href="#">小家电</a></span>
						<span><a href="#">挂烫机</a></span>
						<span><a href="#">和面机</a></span>
						<span><a href="#">插座</a></span>
					</div>
					<div class="all fr">
						<a href="#">查看全部></a>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="left fl">
					<img src="img/81.png" />
					<div class="title font-size-13">
						大牌新品折扣>
					</div>
					<div class="background-bottom-purplecolor">
						<div class="big">
							家庭娱乐节
						</div>
						<div class="small">
							大牌精选 预约享特权
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="bigitem fl relative">
						<div class="text">
							<div class="line1">
								智能家电专场
							</div>
							<div class="line2">
								家装时尚百搭安全
							</div>
							<div class="line3 purplecolor">
								科技成熟生活之美
							</div>
							<div class="button">
								立即查看
							</div>
						</div>
						<div class="pic">
							<img src="img/82.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								衣物护理季
							</div>
							<div class="line2 purplecolor">
								华洋衣行，娇宠女王
							</div>
						</div>
						<div class="pic">
							<img src="img/83.png" />
						</div>
					</div>

					<div class="norightborder smallitem fl relative ">
						<div class="text">
							<div class="line1">
								超大容量冰箱
							</div>
							<div class="line2 purplecolor">
								居家必备冰箱
							</div>
						</div>
						<div class="pic">
							<img src="img/84.png" />
						</div>
					</div>
					<br />
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								中国红榨汁机
							</div>
							<div class="line2 purplecolor">
								有格调的小家电
							</div>
						</div>
						<div class="pic">
							<img src="img/85.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								面包机粉丝节
							</div>
							<div class="line2 purplecolor">
								预约直减
							</div>
						</div>
						<div class="pic">
							<img src="img/86.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								靓女定制季
							</div>
							<div class="line2 purplecolor">
								爆款优惠抢先占
							</div>
						</div>
						<div class="pic">
							<img src="img/87.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								家庭洗碗必备
							</div>
							<div class="line2 purplecolor">
								解放你的双手
							</div>
						</div>
						<div class="pic">
							<img src="img/88.png" />
						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--广告位之马上去抢-->
		<div class="youyawobaoel">
			<div class="container">
				<div class="wobaole">
					<img src="img/107.png" />
				</div>
			</div>
		</div>
		<!--靓淘分类5-->
		<div class="liangtaosort">
			<div class="container">
				<div class="top">
					<div class="title fl font-size-15">
						<div class="pic fl">
							<img src="img/31.png" />
						</div>
						<div class="text fl">
							靓淘运动
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="sort fl">
						热门搜索：
						<span><a href="#">皮肤衣</a></span>
						<span><a href="#">运动鞋</a></span>
						<span><a href="#">运动裤</a></span>
						<span><a href="#">瑜伽垫</a></span>
						<span><a href="#">运动套装</a></span>
						<span><a href="#">跑步机</a></span>
					</div>
					<div class="all fr">
						<a href="#">查看全部></a>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="left fl">
					<img src="img/89.png" />
					<div class="title font-size-13">
						大牌新品折扣>
					</div>
					<div class="background-bottom-blue2">
						<div class="big">
							开启野练新时代
						</div>
						<div class="small">
							春夏新品首发
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="bigitem fl relative">
						<div class="text">
							<div class="line1">
								春季减肥运动季
							</div>
							<div class="line2">
								舒适运动排汗衣
							</div>
							<div class="line3 blue2color">
								新季泳装造型指南
							</div>
							<div class="button">
								立即查看
							</div>
						</div>
						<div class="pic">
							<img src="img/90.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								2017年春夏新品
							</div>
							<div class="line2 blue2color">
								透气有弹性短袖
							</div>
						</div>
						<div class="pic">
							<img src="img/91.png" />
						</div>
					</div>

					<div class="norightborder smallitem fl relative ">
						<div class="text">
							<div class="line1">
								夏季运动新品
							</div>
							<div class="line2 blue2color">
								超强排汗网面
							</div>
						</div>
						<div class="pic">
							<img src="img/92.png" />
						</div>
					</div>
					<br />
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								特步网面百搭女鞋
							</div>
							<div class="line2 blue2color">
								特步时尚运动女鞋
							</div>
						</div>
						<div class="pic">
							<img src="img/93.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								出行必备登山包
							</div>
							<div class="line2 blue2color">
								时尚双肩包
							</div>
						</div>
						<div class="pic">
							<img src="img/94.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								特步女鞋春季新品
							</div>
							<div class="line2 blue2color">
								透气排汗
							</div>
						</div>
						<div class="pic">
							<img src="img/95.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								超轻超韧背包
							</div>
							<div class="line2 blue2color">
								运动新装备
							</div>
						</div>
						<div class="pic">
							<img src="img/96.png" />
						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>

		<!--靓淘分类6-->
		<div class="liangtaosort">
			<div class="container">
				<div class="top">
					<div class="title fl font-size-15">
						<div class="pic fl">
							<img src="img/31.png" />
						</div>
						<div class="text fl">
							靓淘母婴
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="sort fl">
						热门搜索：
						<span><a href="#">儿童</a></span>
						<span><a href="#">玩具</a></span>
						<span><a href="#">待产用品</a></span>
						<span><a href="#">宝宝用品</a></span>
						<span><a href="#">奶粉</a></span>
						<span><a href="#">亲子装</a></span>
					</div>
					<div class="all fr">
						<a href="#">查看全部></a>
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="left fl">
					<img src="img/97.png" />
					<div class="title font-size-13">
						大牌新品折扣>
					</div>
					<div class="background-bottom-orange">
						<div class="big">
							品质母婴好货
						</div>
						<div class="small">
							时尚潮童新衣
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="bigitem fl relative">
						<div class="text">
							<div class="line1">
								亲子装尚新季
							</div>
							<div class="line2">
								品牌套装专场特卖
							</div>
							<div class="line3  height17">

							</div>
							<div class="button">
								立即查看
							</div>
						</div>
						<div class="pic">
							<img src="img/666.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								九档调节热奶器
							</div>
							<div class="line2 orangecolor">
								热卖全球
							</div>
						</div>
						<div class="pic">
							<img src="img/100.png" />
						</div>
					</div>

					<div class="norightborder smallitem fl relative ">
						<div class="text">
							<div class="line1">
								小蓝羊鞋子尚新
							</div>
							<div class="line2 orangecolor">
								热销世界各地
							</div>
						</div>
						<div class="pic">
							<img src="img/101.png" />
						</div>
					</div>
					<br />
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								快乐学习
							</div>
							<div class="line2 orangecolor">
								儿童玩具收纳盒
							</div>
						</div>
						<div class="pic">
							<img src="img/102.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								英博伦童衣
							</div>
							<div class="line2 orangecolor">
								舒适保暖
							</div>
						</div>
						<div class="pic">
							<img src="img/103.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								超柔母婴纸张
							</div>
							<div class="line2 orangecolor">
								舒适健康首选
							</div>
						</div>
						<div class="pic">
							<img src="img/105.png" />
						</div>
					</div>
					<div class="smallitem fl relative">
						<div class="text">
							<div class="line1">
								靓淘儿童车
							</div>
							<div class="line2 orangecolor">
								打造时尚儿童车
							</div>
						</div>
						<div class="pic">
							<img src="img/106.png" />
						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>

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