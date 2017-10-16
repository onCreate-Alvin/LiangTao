<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="../">
<meta charset="utf-8" />
<title>控制台</title>
<%@include file="../model/admin_top.jsp" %>
<script src="js/jquery.min.js"></script>
<script src="js/basic.js"></script>
<script src="layerui/layer/layer.js"></script>
<script src="js/jquery.js"></script>
</head>
<script type="text/javascript">
	function turnto(url) {
		$(".myframe").attr("src",url);
	}
</script>
<body>
	<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							ACE后台管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/avatar.png" alt="p" height="45px">
								<span class="user-info">
									<small>欢迎,</small>
									${sessionScope.logininfo.name}
								</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="javascript:updatepass()">
										<i class="icon-cog"></i>
										修改密码
									</a>
									<script type="text/javascript">
										function updatepass(){
											showPage("修改密码","operator/pass",600,290,fun);
										}
										function fun(){
											showConfirmMsg("修改成功，请重新登录",fun1,"确定");
											}
										function fun1(){
											closePage();
											location.href="operator/enterlogin";
										}
									</script>
								</li>


								<li class="divider"></li>

								<li>
									<a href="operator/logout">
										<i class="icon-off"></i>
										退出登录
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>
	
	
	
	<div class="main-container" id="main-container"> 
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span> </a>
			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-danger">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>

						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<ul class="nav nav-list">
					<li class="active"><a href="#">
							<i class="icon-dashboard"></i> <span class="menu-text">
								控制台 </span> 
								 </a></li>
					<c:forEach items="${requestScope.navfatherlist}" var="r">
						<c:if test="${r.children.size()==0}">
							<li><a href="javascript:turnto('${r.url}')"> <i class="icon-text-width"></i>
							<span class="menu-text"> ${r.name}</span> </a></li>
						</c:if>
						
						<c:if test="${r.children.size()!=0}">
							<li><a href="#" class="dropdown-toggle"> <i
							class="icon-desktop"></i> <span class="menu-text">${r.name}</span>
							<b class="arrow icon-angle-down"></b> </a>
								<ul class="submenu">
									<c:forEach var="child" items="${r.children}">
										<li><a href="javascript:turnto('${child.url}')"> <i
											class="icon-double-angle-right"></i> ${child.name} </a></li>
									</c:forEach>
								</ul>
						</li>
						</c:if>
					</c:forEach>
					
					
					
					<!-- <li><a href="javascript:turnto('operator/init')"> <i class="icon-text-width"></i>
							<span class="menu-text"> 管理员操作 </span> </a></li>
					
					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-desktop"></i> <span class="menu-text">商品管理 </span>
							<b class="arrow icon-angle-down"></b> </a>
						<ul class="submenu">
							<li><a href="javascript:turnto('product/init')"> <i
									class="icon-double-angle-right"></i> 商品 </a></li>
							
							<li><a href="javascript:turnto('productType/init')"> <i
									class="icon-double-angle-right"></i> 商品类别管理 </a></li>
									
							<li><a href="#" class="dropdown-toggle"> <i
									class="icon-double-angle-right"></i> 三级菜单 <b
									class="arrow icon-angle-down"></b> </a>

								<ul class="submenu">
									<li><a href="#"> <i class="icon-leaf"></i> 第一级 </a></li>

									<li><a href="#" class="dropdown-toggle"> <i
											class="icon-pencil"></i> 第四级 <b class="arrow icon-angle-down"></b>
									</a>

										<ul class="submenu">
											<li><a href="#"> <i class="icon-plus"></i> 添加产品 </a></li>

											<li><a href="#"> <i class="icon-eye-open"></i> 查看商品
											</a></li>
										</ul></li>
								</ul></li>
						</ul></li>

					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-list"></i> <span class="menu-text">用户管理 </span> <b
							class="arrow icon-angle-down"></b> </a>

						<ul class="submenu">
							<li><a href="javascript:turnto('client/init')"> <i
									class="icon-double-angle-right"></i> 用户 </a></li>

							<li><a href="jqgrid.html"> <i
									class="icon-double-angle-right"></i> jqGrid plugin </a></li>
						</ul></li>

					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-edit"></i> <span class="menu-text">订单管理 </span> <b
							class="arrow icon-angle-down"></b> </a>

						<ul class="submenu">
							<li><a href="javascript:turnto('order/init')"> <i
									class="icon-double-angle-right"></i> 订单 </a></li>

							
						</ul></li>
					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-edit"></i> <span class="menu-text">购物车管理</span> <b
							class="arrow icon-angle-down"></b> </a>

						<ul class="submenu">
							<li><a href="javascript:turnto('shopcar/init')"> <i
									class="icon-double-angle-right"></i> 购物车 </a></li>
						</ul></li>

					<li><a href="widgets.html"> <i class="icon-list-alt"></i>
							<span class="menu-text"> 库存管理</span> </a></li> -->

					

				
					
				</ul>
				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<!-- 导航栏结束 -->
			
			<!-- 显示内容 -->
			<div class="main-content">
				
				<iframe onload="load(this);" src="index.jsp" width="100%" height="500px" class="myframe" style="border: 0px"></iframe>
			</div>
<script type="text/javascript">
function load(e){
	var ds = e.contentDocument.URL;
	if(ds.indexOf("login.jsp")>0||ds.indexOf("enterlogin")>0){
	location.href="operator/enterlogin";
	}
}
</script>


<%@include file="../model/admin_bottom.jsp"%>