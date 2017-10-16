<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<base href="../">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>


<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
	</head>
	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i>
									<span class="red">靓淘网</span>
									<span class="white">管理员登录</span>
								</h1>
								<h4 class="blue">&copy; liangtao.com</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												输入你的账号信息
											</h4>
											<div class="space-6"></div>

											<form action="operator/login" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名" name="account" value="${requestScope.account}"/>
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="pass" value="${requestScope.password}"/>
															<i class="icon-lock"></i>
														</span>
													</label>
													<label class="block clearfix">
													<span class="block input-icon input-icon-right" >
															<input class="col-sm-2" type="text" class="form-control" placeholder="验证码" name="code" style="width: 40%"/>
															<img  src="img/code.jpg" onclick="this.src='img/code.jpg?a='+(a++)" style="width: 30%;height: 100%">
															<script type="text/javascript">
															var a = 0;
															</script>
														</span>
													</label>
													
													<div class="space"></div>
													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" name="rememberpass" 
															<c:if test="${requestScope.rememberpass}"> checked="checked" </c:if>
															/>
															<span class="lbl"> 记住密码</span>
														</label>
														<label class="inline">
															<input type="checkbox" class="ace" name="autologin"
															<c:if test="${requestScope.autologin}"> checked="checked" </c:if>
															/>
															<span class="lbl"> 自动登录</span>
														</label>
														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i>
															登录
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<!-- <div class="social-or-login center">
												<span class="bigger-110">Or Login Using</span>
											</div> -->
										</div><!-- /widget-main -->
									</div><!-- /widget-body -->
								</div><!-- /login-box -->
						</div><!-- /position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="assets/js/google.jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			function show_box(id) {
			 jQuery('.widget-box.visible').removeClass('visible');
			 jQuery('#'+id).addClass('visible');
			}
		</script>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>