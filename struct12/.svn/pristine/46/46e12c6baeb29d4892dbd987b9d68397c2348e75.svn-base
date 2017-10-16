<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html lang="en">
<head>
<base href="../">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/google.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<script src="js/jquery.js"></script>
<script src="js/basic.js"></script>
<script src="layerui/layer/layer.js"></script>
<script type="text/javascript">
	var total;
	function resettime(date) {
		if (date < 10)
			date = "0" + date;
		return date;
	}
	function clock() {
		total--;
		total = resettime(total);
		if (total > 0) {
			var oLine1 = document.querySelectorAll(".daojishi");
			oLine1[0].innerHTML = "" + total + "s 后重发";
		} else {
			var oLine1 = document.querySelectorAll(".daojishi");
			oLine1[0].innerHTML = "重新发送";
			$(".sendbutton").addClass("btn-danger");
			clearInterval(flag);
		}
	}
	var flag;
	function runclock(){
		$.ajax({type:"POST",url:"client/createcode.action",dataType:"json",data:null,success:function(json){
		if(json.status>0){
		}else{
			showMsg("请求失败，尝试重新发送");
		}
		}});
		clearInterval(flag);
		$(".sendbutton").removeClass("btn-danger");
		this.total = 5;
		flag = setInterval(clock, 1000);
		
	}
	function retrieve() {
		var data = $(".f1").serializeArray();
		var action = $(".f1").attr("action");
		$.ajax({type:"POST",url:action,dataType:"json",data:data,success:function(json){
		if(json.status>0){
			showMsg("重置成功");
		}else if(json.status==0){
						showMsg("验证码错误或两次密码不一致");
			  }else{
			showMsg("该用户未注册");
			}
		}});
	}
	function register() {
		//0代表已经注册，1代表注册完成，2代表未接受协议，-1表示两次密码不一致；
		var data = $(".f2").serializeArray();
		var action = $(".f2").attr("action");
		$.ajax({type:"POST",url:action,dataType:"json",data:data,success:function(json){
		if(json.status==0){
			showMsg("该用户已被注册");
		}else if(json.status==1){
			showConfirmMsg("注册完成",function(){location.href="client/enterlogin.action"},"确定");
			  }else if(json.status==2){
			showMsg("请接受用户协议");
			}else{
				showMsg("两次密码不一致");
			}
		}});
	}
</script>

</head>
<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">靓淘网</span> <span
									class="white">用户登陆</span>
							</h1>
							<h4 class="blue">&copy; liangtao.com</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i> 输入你的账号信息
										</h4>
										<div class="space-6"></div>

										<form action="client/login.action" method="post">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="用户名"
														name="tel" value="${requestScope.account}" /> <i
														class="icon-user"></i> </span> </label> <label class="block clearfix">
													<span class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="密码"
														name="pass" value="${requestScope.password}" /> <i
														class="icon-lock"></i> </span> </label> <label class="block clearfix">
													<span class="block input-icon input-icon-right"> <input
														class="col-sm-2" type="text" class="form-control"
														placeholder="验证码" name="code" style="width: 40%" /> <img
														src="img/code.jpg"
														onclick="this.src='img/code.jpg?a='+(a++)"
														style="width: 30%;height: 100%"> <script
															type="text/javascript">
															var a = 0;
														</script> </span> </label>

												<div class="space"></div>
												<div class="clearfix">
													<label class="inline"> <input type="checkbox"
														class="ace" name="rememberpass"
														<c:if test="${requestScope.rememberpass}"> checked="checked" </c:if> />
														<span class="lbl"> 记住密码</span> </label> <label class="inline">
														<input type="checkbox" class="ace" name="autologin"
														<c:if test="${requestScope.autologin}"> checked="checked" </c:if> />
														<span class="lbl">自动登录</span> </label>
													<button type="submit"
														class="width-35 pull-right btn btn-sm btn-primary">
														<i class="icon-key"></i> 登录
													</button>
												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>
										<!-- <div class="social-or-login center">
												<span class="bigger-110">Or Login Using</span>
											</div> -->
									</div>
									<!-- /widget-main -->


									<div class="toolbar clearfix">
										<div>
											<a href="#" onclick="show_box('forgot-box'); return false;"
												class="forgot-password-link"> <i class="icon-arrow-left"></i>
												忘记密码 </a>
										</div>

										<div>
											<a href="#" onclick="show_box('signup-box'); return false;"
												class="user-signup-link"> 注册新用户 <i
												class="icon-arrow-right"></i> </a>
										</div>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /login-box -->

							<div id="forgot-box" class="forgot-box widget-box no-border ">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<i class="icon-key"></i> 找回密码
										</h4>

										<div class="space-6"></div>


										<form action="client/retrieve.action" method="post" class="f1">
											<fieldset>
												<label class="block clearfix">
													 <span class="block input-icon input-icon-right"> 
														 <input type="email" class="form-control pull-left"
															placeholder="手机号" style="width: 65%" name="tel"/>

														<button type="button"
															class="width-28 pull-right btn btn-sm btn-danger sendbutton"
															onclick="runclock();">
															<i class="daojishi">发送验证码</i>
														</button> 
													</span> 
												</label> 
												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="新密码" name = "newpass1" />
															<i class="icon-lock"></i>
														</span>
												</label>

												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="确认新密码" name="newpass2" />
															<i class="icon-retweet"></i>
														</span>
												</label>
												<label class="block clearfix"> <span
															class="block input-icon input-icon-right"> <input
																type="text" class="form-control pull-left"
															placeholder="验证码" name="code" style="width: 40%" /> 
															
															<button type="button" class="width-55 pull-right btn btn-sm btn-danger" onclick="retrieve();">
															重置密码
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
														</span> 
												
												
												
												</label>
														
											</fieldset>
										</form>
									</div>
									<!-- /widget-main -->

									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> 登录 <i
											class="icon-arrow-right"></i> </a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /forgot-box -->




							<div id="signup-box" class="signup-box widget-box no-border ">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header green lighter bigger">
											<i class="icon-group blue"></i> 注册新用户
										</h4>

										<div class="space-6"></div>


										<form class="f2" action="client/insert1.action">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="number" class="form-control" placeholder="手机号" name="tel" /> <i
														class="icon-key"></i> </span> </label> 
												<label class="block clearfix">
													<span class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="昵称" name="nickname"/> <i
														class="icon-user"></i> </span> </label> 
												<label class="block clearfix">
													<span class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="密码" name="pass" />
														<i class="icon-lock"></i> </span> </label> 
												<label class="block clearfix">
													<span class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="确认密码" name="retweet"/>
														<i class="icon-retweet"></i> </span> </label> 
														<label class="block clearfix">
													<span class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="邮箱" name="email"/>
														<i class=" icon-envelope"></i> </span> </label> 
												<label class="block">
													<input type="checkbox" class="ace" name= "isaccept"/> <span class="lbl">
														我接受 <a href="javascript:userdata();">用户协议</a> </span> </label>
														<script type="text/javascript">
														function userdata(){
															showPage("靓淘网用户协议","../main.jsp",500,500,null,false);
														}
														</script>
														
												<div class="space-12"></div>
												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="icon-refresh"></i> 重置
													</button>

													<button type="button" onclick="register();"
														class="width-65 pull-right btn btn-sm btn-success">
														注册 <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>

									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> <i class="icon-arrow-left"></i>
											回到登录 </a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /signup-box -->







						</div>
						<!-- /position-relative -->
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script src="assets/js/google.jquery.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		function show_box(id) {
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#' + id).addClass('visible');
		}
	</script>
	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>