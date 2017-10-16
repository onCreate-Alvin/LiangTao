<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="../">
<meta charset="utf-8" />
<script src="js/jquery.min.js"></script>


<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/google.css"/>
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<script src="assets/js/ace-extra.min.js"></script>



<script src="js/basic.js"></script>
<script src="layerui/layer/layer.js"></script>
<script src="js/jquery.js"></script>
<script src="js/md5.js"></script>
<script type="text/javascript">
	function save(){
		var m = $(".f1").find(".must");
		for ( var i = 0; i < m.size(); i++) {
			if (m.get(i).value.length == 0){
				showMsg("数据录入不全，存在必须录入的数据");
				return;
			}
		}
		var data = $(".f1").serializeArray();
		var action = $(".f1").attr("action");
		$.ajax({type:"POST",url:action,dataType:"json",data:data,success:function(json){
		if(json.status>0){
			closePage();
		}else if(json.status==0){
			showMsg("密码错误或两次密码不一致");
		}else{
			showMsg("验证码输入错误");
			$("[name=code]").get(0).value="";
			$("img").click();
		}
		
	}});
		
	}
	function clear(){
		closePage();
	}
	
</script>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="assets/css/chosen.css" />
<link rel="stylesheet" href="assets/css/datepicker.css" />
<link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="assets/css/daterangepicker.css" />
<link rel="stylesheet" href="assets/css/colorpicker.css" />
<link rel="stylesheet" href="assets/css/google.css"/>
</head>
<body>
		<div class="main-container" id="main-container"><div class="col-xs-12 col-sm-12">
	<!-- 这里是权限表，带有多选选项，上传所选的id -->

		<form class="f1 form-horizontal" action="client/updatepass"
				method="post" role="form">
				<div class="form-group " style="display: none">
					<label class="col-sm-3 col-xs-3 control-label no-padding-right"
						for="form-field-1">ID</label>
					<div class="col-sm-9 col-xs-9 ">
						<input type="text" id="form-field-1" placeholder="Account"
							class="col-xs-9 col-sm-6 must" name="ID"  value="${requestScope.ID}"/>
					</div>
				</div>
				
				<div class="form-group ">
				<div class="col-sm-2 col-xs-2 "></div>
					<label class="col-sm-2 col-xs-2 control-label no-padding-right"
						for="form-field-1">旧密码：</label>
					<div class="col-sm-8 col-xs-8 ">
						<input type="text" id="form-field-1" placeholder="Account"
							class="col-xs-9 col-sm-6 must" name="oldpass" />
					</div>
				</div>
				<div class="form-group ">
				<div class="col-sm-2 col-xs-2 "></div>
					<label class="col-sm-2 col-xs-2 control-label no-padding-right"
						for="form-field-1">新密码：</label>
					<div class="col-sm-8 col-xs-8 ">
						<input type="text" id="form-field-1" placeholder="Account"
							class="col-xs-9 col-sm-6 must" name="newpass1"/>
					</div>
				</div>
				<div class="form-group ">
				<div class="col-sm-2 col-xs-2 "></div>
					<label class="col-sm-2 col-xs-2 control-label no-padding-right"
						for="form-field-1">确认密码：</label>
					<div class="col-sm-8 col-xs-8 ">
						<input type="text" id="form-field-1" placeholder="Account"
							class="col-xs-9 col-sm-6 must" name="newpass2" />
					</div>
				</div>
				<div class="form-group ">
				<div class="col-sm-2 col-xs-2 "></div>
					<label class="col-sm-2 col-xs-2 control-label no-padding-right"
						for="form-field-1">验证码：</label>
					<div class="col-sm-8 col-xs-8 ">
						<input type="text" id="form-field-1" placeholder="Account"
							class="col-xs-2 col-sm-2 must" name="code" />
							<img  src="img/code.jpg" onclick="this.src='img/code.jpg?a='+(a++)">
							<script type="text/javascript">
							var a=0;
							</script>
					</div>
				</div>
		</form>
			<div class="form-group">
		<div class="col-sm-3 col-xs-3 "></div>
		<div class="col-sm-4 col-xs-4 ">
		<button class="btn  btn-grey  radius-4" onclick="save();">
				<i class="icon-ok bigger-120"></i> 保存
			</button>
		</div>
		<div class="col-sm-4 col-xs-4 ">
		<button class="btn  btn-warning  radius-4" onclick="closePage();">
				<i class="icon-undo bigger-120"></i> 取消
			</button>
		</div>
		
		</div>
	</div>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
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
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->

	<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/chosen.jquery.min.js"></script>
	<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="assets/js/date-time/moment.min.js"></script>
	<script src="assets/js/date-time/daterangepicker.min.js"></script>
	<script src="assets/js/bootstrap-colorpicker.min.js"></script>
	<script src="assets/js/jquery.knob.min.js"></script>
	<script src="assets/js/jquery.autosize.min.js"></script>
	<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>
	<script src="assets/js/bootstrap-tag.min.js"></script>

	<!-- ace scripts -->

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->



	
	
	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div></div></div>
</body>
</html>

