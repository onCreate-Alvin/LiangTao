<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta charset="UTF-8">
		<title></title>
		<link href="css/base.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="js/jquery.jqzoom.js"></script>
		<script type="text/javascript" src="js/base.js"></script>
		

		<link rel="stylesheet" type="text/css" href="css/tryfirst.css" />

		<link rel="stylesheet" type="text/css" href="css/detailscss.css" />
		<!--放大镜-->
	
	</head>

	<body>

		<!--欢迎来到靓淘商城-->
		<div class="container">
			<div class="welcome">
				<div class="left fl">
					欢迎来到靓淘商城！首页
				</div>
				<div class="right fr">
					<div class="item fl">
						欢迎， ${sessionScope.userlogininfo.nickname}
					</div>
					
					<div class="item fl">
						<div class="text">
							快速注册
						</div>
					</div>
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
								<option value="">去购物车结算</option>
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
		<!--+导航栏-->
		<div class="navigation">
			<div class="container">
				<div class="item fl">
					全部商品分类
				</div>
				<div class="item fl">
					商城首页
				</div>
				<div class="item fl">
					手机首页
				</div>
				<div class="item fl">
					新机首发
				</div>
				<div class="item fl">
					手机社区
				</div>
				<div class="item fl">
					企业采购
				</div>
				<div class="item fl">
					精选商铺
				</div>
				<div class="clear">

				</div>
			</div>
		</div>

		<div class="catalogue">
			<div class="container">
				<div class="left fl">
					<ul>
						<li>家电数码 > </li>
						<li>手机通讯 ></li>
						<li>手机 ></li>
						<li>
							<select name="">
								<option value="">华为（HUAWEI）</option>
							</select> > </li>
						<li>华为畅想6S </li>
						<div class="clear">

						</div>
					</ul>
				</div>
				<div class="right fr">
					<ul>
						<li>华为官方旗舰店</li>
						<li>
							<div class="fl">
								<img src="img/tou.png" />
							</div>
							<div class="fl">
								联系供应商
							</div>
							<div class="clear">

							</div>
						</li>
						<li>
							<div class="fl">
								<img src="img/shoucang2.png" />
							</div>
							<div class="fl">
								关注店铺
							</div>
							<div class="clear">

							</div>
						</li>
					</ul>
				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--商品详情-->
		<div class="goods">
			<div class="container">
				<!--放大镜-->
				<div class="left fl">
					<div class="right-extra" style="margin-top:10px;">
						<!--产品参数开始-->
						<div>
							<div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="img/bg1.png" src="img/sm1.png" style="width: 350px"/></span> </div>
							<!--缩图开始-->
							<div class="spec-scroll">
								<a class="prev">&lt;</a>
								<a class="next">&gt;</a>
								<div class="items">
									<ul>
										<c:forEach var="r" items="${requestScope.pics}">
										<li><img alt="饮品" bimg="${r.url}" src="${r.url}"  onmousemove="preview(this);"></li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!--缩图结束-->
						</div>
						<!--产品参数结束-->
						<div style="clear:both;height:10px;"></div>
					</div>
				</div>
				<!--商品详细介绍-->
				<div class="right fr">
					<ul>
						<li class="font_size16 blod">${requestScope.product.name}</li>
						<input type="hidden" class="productid" value="${requestScope.product.ID}"/>
						<li class="redcolor">晓龙芯片！金属机身！享看有享玩！付款后七天内发货</li>
						<li>
							<div class="activity">
								<div class="row">
									<div class="pic fl">
										<img src="img/117.png" />
									</div>
									<div class="text fl">
										全靓淘实物商品通用
									</div>
									<div class="guanquan fr">
										<div class="fl redcolor">
											去刮券
										</div>
										<div class="fl">
											<img src="img/120.png" />
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row">
									<div class="row_left fl">
										<div class="fl">
											促
										</div>
										<div class="fr">
											销
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="row_right fl">
										<span class="redcolor font_size16">¥${requestScope.product.disc}</span>
										<del class="font_size16">￥${requestScope.product.price}</del>
									</div>
									<div class="clear">

									</div>
								</div>
								<!--以旧换新-->
								<div class="row">
									<div class="row_left fl">
										<div class="fl">
											支
										</div>
										<div class="fr">
											持
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="row_right fl">
										<div class="fl">
											<img src="img/119.png" />
										</div>
										<div class="fl marginleft10">
											<img src="img/118.png" />
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="clear">

									</div>
								</div>
								<!--本店活动-->
								<div class="row">
									<div class="row_left fl">
										<div class="fl">
											本店活动
										</div>
										<div class="fr">

										</div>
										<div class="clear">

										</div>
									</div>
									<div class="row_right fl font_size16">
										满79元，包邮
									</div>
									<div class="clear">

									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										运
									</div>
									<div class="fr">
										费
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl font_size14">
									广东深圳 至
									<select name="">
										<option value="">青岛</option>
										<option value="">临沂</option>
									</select>
									<select name="">
										<option value="">市南区</option>
									</select>
									<select name="">
										<option value="">香港中路街道</option>
									</select>
									快递：0.00
								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<!--重量-->
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										重
									</div>
									<div class="fr">
										量
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl">
									0.33kg
								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<hr />
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										选择颜色
									</div>
									<div class="fr">

									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl font_size14">
									<div class="item fl">
										<div class="left_pic fl">
											<img src="img/127.png" />
										</div>
										<div class="text fl ">
											金色
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="item fl">
										<div class="left_pic fl">
											<img src="img/127.png" />
										</div>
										<div class="text fl ">
											金色
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="item fl">
										<div class="left_pic fl">
											<img src="img/127.png" />
										</div>
										<div class="text fl ">
											金色
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<!--选择版本-->

						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										选择版本
									</div>
									<div class="fr">

									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl font_size14">
									<div class="textitem fl">
										普通版
									</div>
									<div class="textitem fl">
										移动定制版
									</div>
									<div class="clear">

									</div>

								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<li>

							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										购买方式
									</div>
									<div class="fr">

									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl font_size14">
									<div class="textitem fl">
										官方标配
									</div>

									<div class="clear">

									</div>

								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										套
									</div>
									<div class="fr">
										餐
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl font_size14">
									<div class="textitem fl">
										优惠套餐1
									</div>
									<div class="textitem fl">
										优惠套餐2
									</div>
									<div class="textitem fl">
										优惠套餐3
									</div>
									<div class="textitem fl">
										优惠套餐4
									</div>
									<div class="textitem fl">
										优惠套餐5
									</div>
									<div class="clear">

									</div>

								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										增值保障
									</div>
									<div class="fr">

									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl">
									<div class="textitem fl">
										<div class="picpart fl">
											<img src="img/cu.png" />
										</div>
										<div class="textpart fl">
											碎屏保一年 ¥66
										</div>
										<div class="picpart fl">
											<img src="img/129.png" />
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="textitem fl">
										<div class="picpart fl">
											<img src="img/124.png" />
										</div>
										<div class="textpart fl">
											一年内换新 ¥86
										</div>
										<div class="picpart fl">
											<img src="img/129.png" />
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="textitem fl">
										<div class="picpart fl">
											<img src="img/125.png" />
										</div>
										<div class="textpart fl">
											碎屏保两年 ¥96
										</div>
										<div class="picpart fl">
											<img src="img/129.png" />
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="clear">

									</div>

								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<hr />
						<!--数量-->
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										数
									</div>
									<div class="fr">
										量
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl font_size16">
									<div class="add fl">
										<div class="zuo fl">
											11
										</div>
								
										<div class="you fl">
											<div class="bei">
												+
											</div>
											<div class="bei">
												-
											</div>
										</div>
										<div class="clear">

										</div>
									</div>
									<div class="addtocart fl">
										<input type="button" name="" id="" value="加入购物车" onclick="submit();" />
									
										
									</div>
									<div class="clear">

									</div>
								</div>
								<div class="clear">

								</div>
							</div>
						</li>

						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										本地活动
									</div>
									<div class="fr">

									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl ">
									·4G套餐低至18元》
								</div>
								<div class="clear">

								</div>
							</div>
						</li>
						<li>
							<div class="row">
								<div class="row_left fl">
									<div class="fl">
										温馨提示
									</div>
									<div class="fr">

									</div>
									<div class="clear">

									</div>
								</div>
								<div class="row_right fl ">
									·支持7天无理由退货
								</div>
								<div class="clear">

								</div>
							</div>
						</li>
					</ul>

				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--关于手机你可能再找-->
		<div class="aboutphone">
			<div class="container">
				<div class="left fl">
					<div class="top">
						关于手机，您可能在找
					</div>
					<div class="center">
						<ul>
							<li><span class="item">
						安卓（android）
					</span></li>
							<li><span class="item">
						5.0-4.6英寸
					</span></li>

							<li><span class="item">
						双卡双待
					</span></li>
					<li><span class="item">
						骁龙芯片
					</span></li>
					<li><span class="item">
						自拍神器
					</span></li>
					<li><span class="item">
						3GB
					</span></li>
					<li><span class="item">
						联通4G
					</span></li>
					<li><span class="item">
						电信4G
					</span></li>
					<li><span class="item">
						联通4G/联通4G/电信4G
					</span></li>
					<li><span class="item">
						移动8G
					</span></li>
					<li><span class="item">
						32GB
					</span></li>
					<li><span class="item">
						8核
					</span></li>
					<div class="clear">
						
					</div>

						</ul>
					</div>
				</div>
				<div class="right fl">
						<div class="line1">
							<ul>
								<li>
									<div class="leftpic fl">
											<img src="img/phone1.png"/>
									</div>
									<div class="right_text fl">
											 分辨率 ： 1280 X 720（HD）
									</div>
									<div class="clear">
										
									</div>
								</li>
								<li><div class="leftpic fl">
											<img src="img/shexiang.png"/>
									</div>
									<div class="right_text fl">
											<div class="">
												后置摄像头 ： 1300万像素
											</div>
											<div class="">
												后置摄像头 ： 1300万像素
											</div>
									</div>
									<div class="clear">
										
									</div></li>
								<li><div class="leftpic fl">
											<img src="img/cpu.png"/>
									</div>
									<div class="right_text fl">
											<div class="">
												核数 ： 八核
											</div>
											<div class="">
												频率 ： 最高1.4GHz
											</div>
									</div>
									<div class="clear">
										
									</div></li>
								<div class="clear">
									
								</div>
							</ul>
						</div>
				<div class="line2">
					<div class="text fl">
						品牌 ： 华为（HUAWEI）	
					</div>
					<div class="pic fl">
						<div class="fl">
							<img src="img/xin.png"/>
						</div>
						<div class="fl">
							关注
						</div>
						<div class="clear">
							
						</div>
					</div>
					<div class="clear">
						
					</div>
				</div>
				<div class="line3">
					<div class="textarea fl">
						<div class="">
							 商品名称 ： 华为畅想6S
						</div>
						<div class="">
							系统 ： 安卓（android）
						</div>
						<div class="">
							机身内存 ：32GB
						</div>
					</div>
					<div class="textarea fl">
						<div class="">
							 商品名称 ： 华为畅想6S
						</div>
						<div class="">
							系统 ： 安卓（android）
						</div>
						<div class="">
							机身内存 ：32GB
						</div>
					</div>
					<div class="textarea fl">
						<div class="">
							 商品名称 ： 华为畅想6S
						</div>
						<div class="">
							系统 ： 安卓（android）
						</div>
						<div class="">
							机身内存 ：32GB
						</div>
					</div>
					<div class="textarea fl">
						<div class="">
							 商品名称 ： 华为畅想6S
						</div>
						<div class="">
							系统 ： 安卓（android）
						</div>
						<div class="">
							机身内存 ：32GB
						</div>
					</div>	
					<div class="clear">
						
					</div>
				</div>
				<div class="line4">
					更多参数》
				</div>
				</div>
				<div class="clear">
					
				</div>
			</div>
		</div>
		<!--达人选购-->
		<div class="aboutphone">
			<div class="container">
				<div class="left fl">
					<div class="top">
						达人选购
					</div>
					<div class="center">
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						<div class="sort">
							<div class="pic_phone">
							<img src="img/138.png"/>
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1">
							荣耀 畅玩6S 32GB 全网通 4G
						</div>
						<div class="text1 redcolor">
							¥1299.00
						</div>
						</div>
						
					</div>
					<div class="null_" style="height: 13px;">
						
					</div>
					<div class="top">
						手机热销榜
					</div>
					<div class="fenlei">
						<div class="sameprice fl ">
							同价位
						</div>
						<div class="sameprice fl ">
							同品牌
						</div>
						<div class="sameprice fl ">
							总排行
						</div>
						<div class="clear">
							
						</div>
					</div>
					<div class="center">
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
						<div class="onep relative">
							<div class="fl">
								<img src="img/146.png"/>
							</div>
							<div class="fl">
								<div class="textline">
									华为荣耀6X
								</div>
								<div class="textline redcolor">
									￥1699.00
								</div>
							</div>
							<div class="clear">
								
							</div>
							<div class="paiming">
								<img src="img/yuan1.png"/>
							</div>
						</div>
					</div>
				</div>
				<div class="right fl">
					<div class="contentpic">
						<img src="img/QQ图片20170722213804.jpg"/>
					</div>
					<div class="contentpic">
						<img src="img/QQ图片20170722214229.png"/>
					</div>
					<div class="contentpic">
						<img src="img/QQ图片20170722214249.png"/>
					</div>
					<div class="contentpic">
						<img src="img/QQ图片20170722214254.jpg"/>
					</div>
					<div class="contentpic">
					<img src="img/QQ图片20170722214259.jpg"/>
					</div>
					<div class="contentpic">
						<img src="img/QQ图片20170722214306.jpg"/>
					</div>
					<div class="contentpic">
						<img src="img/QQ图片20170722214312.jpg"/>
					</div>
					<div class="">
						<img src="img/5售后.png"/>
					</div>

					
				<!--	
					
					
					
					-->
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
		<script type="text/javascript">
			$(".goods .right .row .item").click(function () {
				$(this).css("border-color","red");
				$(this).siblings().css("border-color","#686868");
			});
			$(".goods .right .row .textitem").click(function () {
				$(this).css("border-color","red");
				$(this).siblings().css("border-color","#686868");
			});
			
			 var sumcount=0;
			$(".goods .right .row .bei").click(function () {
				var index = $(this).index();
				var sum = $(this).parent().siblings(".zuo").text();
				if(index=="0"){
					sum = sum*1+1;
					$(this).parent().siblings(".zuo").text(sum);
					sumcount=sum;
				}
				if(index=="1"){
					if(sum==0)return;
					sum = sum*1-1;
					$(this).parent().siblings(".zuo").text(sum);
					sumcount=sum;
				}
			});
			function submit(){
				//这里往购物车中添加数据
				var id = $(".productid")[0].value;
				var count =this.sumcount;
				alert("我点击了加入购物车,数量"+count+"产品id;"+id);
				var data = {"product_id":id,"count":count};
				
				$.ajax({type:"POST",url:"shopcar/insert1",dataType:"json",data:data,success:function(json){
					if(json.status>0){
						location.href="shopcar/showcar";
					}else{
						
					}
				}});
				
			}
			$(".aboutphone .fenlei .sameprice").click(function () {
				$(this).css("background-color","red");
				$(this).siblings().css("background-color","#FFFFFF");
			})
			
		</script>
	</body>

</html>