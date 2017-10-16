<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/firsttest.css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/basic.js"></script>
		<script src="layerui/layer/layer.js"></script>
		<script src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript">
							var sum=0;
							function all(){
								var allorder=$(".part .line2"); //所有的行
								$(".money").text("0");
								for(var i =0;i<allorder.size();i++ ){
									var price=parseFloat($(allorder[i]).find(".realprice").text());//商品单个实际价格
									var count=parseFloat($(allorder[i]).find(".count").text());//商品的数量
									var sum = price*count;
									var count=parseFloat($(allorder[i]).find(".count").text());//商品的数量
									$(allorder[i]).find(".sum").text(sum);
									var allsum = parseFloat($(".money").text());
									if($(allorder[i]).find("[type=checkbox]")[0].checked){
										$(".money").text(allsum+sum);
									}
								}
							}
							function numd(o){
								if($(o).next().text()=="1")return;
								$(o).next().text($(o).next().text()-1);
								all();
							}
							function nums(o){
								$(o).prev().text($(o).prev().text()*1+1);
								all();
							}
							function checkboxclick(o){
								all();
							}
							function pay(){
							//client_id product_id count amount disc  data status lastoperator_id
								var allorder=$(".part .line2"); //所有的行
								for(var i =0;i<allorder.size();i++ ){
								if($(allorder[i]).find("[type=checkbox]")[0].checked){
									var price=parseFloat($(allorder[i]).find(".realprice").text());//商品单个实际价格
									var count=parseFloat($(allorder[i]).find(".count").text());//商品的数量
									var product_id=parseFloat($(allorder[i]).find(".product_id").text());//商品的数量
									var disc=parseFloat($(allorder[i]).find(".disc").text());//商品的数量
									var sum = price*count;
									var data = {"count":count,"amount":sum,"product_id":product_id,"disc":disc};
									//发ajax请求
									$.ajax({type:"POST",url:"order.htm",dataType:"json",data:data,success:function(json){
									if(json.status>0){
										
									}else{
										
									}
									}});
								}}
								var allsum = parseFloat($(".money").text());
								showConfirmMsg("已自动支付"+allsum+"元,感谢使用靓淘网",fun,"确定");
							}
							var fun=function(){
									location.href="main.htm";
							}
							</script>
	</head>
	<body>
		<!--第一行-->
		<div class="row1">
			<div class="container">
				<div class="row1_welcome fl">
					欢迎来到靓淘商城！<a href="main.htm">首页</a>
				</div>
				<div class="row1_user fr">
					<ul>
						<li>
							<div class="item fl">
						欢迎， ${sessionScope.userlogininfo.nickname}
							</div>
							<!--<img src="img/zhanghu2.png" />请登录--></li>
						<li>
							<div class="pic fl">
								<img src="img/xin.png" />
							</div>
							<div class="text fl">
								我的收藏
							</div>
							<div class="clear">
								
							</div>
							<!--<img src="img/xin.png" />我的收藏--></li>
						<li>我的订单</li>
						<li>
							<div class="pic fl">
								<img src="img/phone.png" />
							</div>
							<div class="text fl">
								手机靓淘
							</div>
							<div class="clear">
								
							</div>
							<!--<img src="img/phone.png" />手机靓淘--></li>
						<li>我的积分</li>
						<li>我的评价</li>
						<div class="clear">

						</div>
					</ul>
				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<hr />
		<!--logo-->
		<div class="row2">
			<div class="container">
				<div class="row2_logo fl">
					<div class="fl">
						<img src="img/LOGO.png" />
					</div>
					<div class="fr wocao">
						购物车
					</div>
					<div class="clear">
						
					</div>
				</div>
				<div class="row2_search fr">
					<form action="" method="post">
						<input type="search" name="" id="" value="" />
						<input type="submit" name="" id="" value="搜索" />
					</form>
				</div>
				<div class="clear">

				</div>
			</div>
		</div>
		<!--加入购物车内容-->

		<div class="carttop">
			<div class="container">
				<div class="top">
					
				
				<div class="topleft fl">
					<div class="item fl redcolor borderbottom">
						全部商品
					</div>
					<div class="item fl">
						降价商品
					</div>
					<div class="item fl">
						库存紧张
					</div>
					<div class="clear">

					</div>
				</div>
				<div class="topright fr">
					<div class="text fl">
						配送至：
					</div>
					<div class="address fl">
						<select>
							<option value="">山东省 青岛市 市南区</option>
						</select>
					</div>
					<div class="clear">

					</div>
				</div>

				<div class="clear">

				</div>
				</div>
				<!--全选-->
				<div class="select">
					<div class="left fl">
						<div class="itemleft fl">
							<form action="" method="post">
								<input type="checkbox" value="" />
								<label for="">全选</label>
							</form>
						</div>
						<div class="itemleft fl">
							<div class="item">
								商品
							</div>
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="right fr">
						<div class="rightitem item fl">
							单价
						</div>
						<div class="rightitem item fl">
							数量
						</div>
						<div class="rightitem item fl">
							小计
						</div>
						<div class="rightitem item fl">
							操作
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="clear">

					</div>
				</div>
			</div>
		</div>
		<!--insert-->
		<div class="insert">
			<div class="container">
				<div class="context">
					<div class="fl">
						<form action="" method="post">
							<input type="checkbox" value="" />
						</form>
					</div>

					<div class="selfcontext1 fl">
						<img src="img/156.png" />
					</div>
					<div class="selfcontext2 fl">
						<img src="img/157.png" />
					</div>
					<div class="clear">

					</div>
				</div>
			</div>

		</div>
		<!--part-->

		<div class="container">
			
			
			
			
			<c:forEach items="${requestScope.products}" var="r">
			
			<div class="part">
				<div class="line1 ">
					<div class="left fl">
						<img src="img/158.png" />
					</div>
					<div class="right fl">
						活动商品购满¥105.00，即可加价换购商品一件>
					</div>
					<div class="left fl">
						<img src="img/158.png" />
					</div>
					<div class="right fl">
						去凑单>
					</div>

					<div class="clear">

					</div>
				</div>
				<div class="line2">
					<div class="item1 fl">
						<form action="" method="post">

							<input type="checkbox" onclick="checkboxclick(this);"/>
						</form>
					</div>
					<div class="item2 fl">
						<div class="item2_left fl">
							<img src="${r.pics}" alt=""  width="82px" height="82px"/>
						</div>
						<div class="item2_right fl weiruanyahei">
							<div class="title">
								${r.name}
							</div>
							<div class="product_id" style="display: none">${r.ID}</div>
							<div class="disc" style="display: none">${r.disc}</div>
							<div class="back">
								<div class="pic fl">
									<img src="img/160.png" />
								</div>
								<div class="text fl">
									支持七天无理由退货
								</div>
								<div class="clear">

								</div>
							</div>
							<div class="back">
								<div class="pic fl">
									<img src="img/161.png" />
								</div>
								<div class="text fl black">
									选包装
								</div>
								<div class="clear">

								</div>
							</div>

						</div>
						<div class="clear">

						</div>
					</div>
					<div class="item3 fl">
						<div class="delprice">
							<del>${r.price}</del>
						</div>
						<div class="realprice">
							${r.disc*r.price}
						</div>
					</div>
					
					
					<div class="item3 fl">
						<div class="add"> 
							<div class="out fl beibei1" onclick="numd(this);">
								-
							</div>
							<div class="border fl count">
								${r.count}
							</div>
							<div class="out fl beibei1" onclick="nums(this);">
								+
							</div>
							<div class="clear">

							</div>
							
						</div>
					</div>
					
					<!-- 某商品小计 -->
					<div class="item3 fl">
						<div class="price red sum">
							${r.price*r.count*r.disc}
						</div>
					</div>
					<div class="item6 fl">
						<div class="del">
							<img src="img/166.png" />
						</div>
					</div>
					<div class="clear">

					</div>
				</div>
			</div>
			
			</c:forEach>
			
			
			
			
			
			
				
			<div class="blackdiv">

			</div>
			<!--全选-->
			<div class="lenth fl">
				<div class="select">

					<div class="left fl">
						<div class="itemleft fl">
							<form action="" method="post">
								<input type="checkbox" value="" />
								<label for="">全选</label>
							</form>
						</div>

						<div class="clear">

						</div>
					</div>
					<div class="right fr">
						<div class="sum  fl">
							总金额（已免运费）：
						</div>
						<div class="money fl">
							￥0
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="clear">

					</div>
				</div>
			</div>
			<div class="paybtn fr">
				<input type="submit" value="立即结算" onclick="pay();"/>
			</div>
			<div class="clear">

			</div>
			<div class="blackdiv">

			</div>
		</div>

		<!--品质保障-->
		<div class="bottom">
			<div class="container">
				<div class="top fl">
					<div class=" quality fl">
						<img src="img/you.png" />
					</div>
					<div class="qualitytext fl">
						<div class=" fl">
							品质保障
						</div>
						<div class="text2 fl">
							品质护航，购物无忧
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<!--七天无理由退货-->
				<div class="top fl">
					<div class=" quality fl">
						<img src="img/7tian.png" />
					</div>
					<div class="qualitytext fl">
						<div class=" fl">
							七天无理由退换货
						</div>
						<div class="text2 fl">
							为您提供售后无忧保障
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<!--特色服务体验-->
				<div class="top fl">
					<div class=" quality fl">
						<img src="img/te.png" />
					</div>
					<div class="qualitytext fl">
						<div class=" fl">
							特色服务体验
						</div>
						<div class="text2 fl">
							为您呈现不一样的服务
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<!--帮助中心-->
				<div class="top fl">
					<div class=" quality fl">
						<img src="img/109.png" />
					</div>
					<div class="qualitytext fl">
						<div class=" fl">
							帮助中心
						</div>
						<br />
						<div class="text2 fl">
							您的购物指南
						</div>
						<div class="clear">

						</div>
					</div>
					<div class="clear">

					</div>

				</div>
				<div class="last fl">
					<div class="item">
						<div class="bigtext">
							购物指南
						</div>
						<div class="smalltext">
							免费注册
						</div>
						<div class="smalltext">
							开通支付宝
						</div>
						<div class="smalltext">
							支付宝充值
						</div>
					</div>

				</div>
				<div class="last fl">
					<div class="item">
						<div class="bigtext">
							品质保障
						</div>
						<div class="smalltext">
							发票保障
						</div>
						<div class="smalltext">
							售后规划
						</div>
						<div class="smalltext">
							缺货赔付
						</div>
					</div>
				</div>
				<div class="last fl">
					<div class="item">
						<div class="bigtext">
							支付方式
						</div>
						<div class="smalltext">
							快捷支付
						</div>
						<div class="smalltext">
							信用卡
						</div>
						<div class="smalltext">
							货到付款
						</div>
					</div>
				</div>
				<div class="last fl">
					<div class="item">
						<div class="bigtext">
							商家服务
						</div>
						<div class="smalltext">
							商家入驻
						</div>
						<div class="smalltext">
							商家中心
						</div>
						<div class="smalltext">
							物流服务
						</div>
					</div>
				</div>
				<div class="last fl">
					<div class="item">
						<div class="bigtext">
							手机靓淘
						</div>
						<div class="soama">
							<img src="img/saoma1.png" />

						</div>
					</div>
				</div>
				<div class="clear">

				</div>
			</div>

		</div>
		<!--页尾-->
		<div class="pagebottom1">
			<div class="container">
				<div class="pagebottom_top">
					<ul>
						<li>关于靓淘</li>
						<li>帮助中心</li>
						<li>开放平台</li>
						<li>诚聘精英</li>
						<li>联系我们</li>
						<li>网站合作</li>
						<li>法律声明及隐私政策</li>
						<li>知识产权 </li>
						<li>廉政举报</li>
						<li>规则意见征集</li>
						<div class="clear">

						</div>
					</ul>
				</div>
			</div>
		</div>
		<div class="pagebottom2">
			<div class="container">
				<div class="pagebottom2_content">
					<div class="text fl">
						COPYRIGHT 2010-2017 北京创锐文化传媒有限公司 JUMEI.COM 保留一切权利。 客服热线：400-123-8888

					</div>
					<div class="text fl">
						京公网安备 11010102001226|京ICP证111033号|食品流通许可证 SP1101051110165515（1-1） |营业许可
						</ul>
						<div class="clear">

						</div>
					</div>
				</div>
			</div>
	</body>

</html>