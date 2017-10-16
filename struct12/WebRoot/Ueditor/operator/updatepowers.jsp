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
<link rel="stylesheet" href="assets/css/google.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<script src="assets/js/ace-extra.min.js"></script>

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/google.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<script src="assets/js/ace-extra.min.js"></script>

<script src="js/jquery.min.js"></script>
<script src="js/basic.js"></script>
<script src="layerui/layer/layer.js"></script>
<script src="js/jquery.js"></script>

<script src="assets/js/google.jquery.min.js"></script>
<script type="text/javascript">
	window.jQuery
			|| document.write("<script src='assets/js/jquery-2.0.3.min.js'>"
					+ "<"+"/script>");
</script>
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
				+ "<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<script src="js/basic.js"></script>
<script src="layerui/layer/layer.js"></script>
<script src="js/jquery.js"></script>
<script type="text/javascript">
	function save() {
		var data = $(".f1").serializeArray();
		var action = $(".f1").attr("action");
		$.ajax({type:"POST",url:action,dataType:"json",data:data,success:function(json){
		if(json.status>0){
			closePage();
		}else{
			showMsg("更改失败");
		}
	}});
	}
	function clear() {
		closePage();
	}
</script>
<script src="assets/js/ace-extra.min.js"></script>

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="assets/css/chosen.css" />
<link rel="stylesheet" href="assets/css/datepicker.css" />
<link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="assets/css/daterangepicker.css" />
<link rel="stylesheet" href="assets/css/colorpicker.css" />
<link rel="stylesheet" href="assets/css/google.css" />
</head>
<body>

	<!-- 这里是权限表，带有多选选项，上传所选的id -->
	<div class="widget-box">
		<div class="hr"></div>

		<div class="widget-body">
			<div class="widget-main padding-8">
				<div id="tree1" class="tree tree-selectable">
					<div class="tree-folder" style="display:none;">
						<div class="tree-folder-header">
							<i class="icon-plus"></i>
							<div class="tree-folder-name"></div>
						</div>
						<div class="tree-folder-content"></div>
						<div class="tree-loader" style="display: none;"></div>
					</div>
					<div class="tree-item" style="display:none;">
						<i class="icon-remove"></i>
						<div class="tree-item-name"></div>
					</div>
					
					</div>
				</div>
			</div>
			<form action="operator/updatepowers" method="post" class="f1">
				<input type="hidden" name="ID" value="${requestScope.ID}"/>
				<input type="hidden" name="newpowers" class="ids" />
			</form>
			
		
		</div>
		<div class="form-group">
		<div class="col-sm-3 col-xs-3 "></div>
		<div class="col-sm-4 col-xs-4 ">
		<button class="btn  btn-grey  radius-4" onclick="save();">
				<i class="icon-ok bigger-120"></i> 保存
		</button>
		</div>
		<div class="col-sm-4 col-xs-4 ">
		<button class="btn  btn-grey  radius-4" onclick="closePage();">
				<i class="icon-undo bigger-120"></i> 取消
			</button>
		</div>
		</div>
<script type="text/javascript">


</script>


	<script src="assets/js/google.jquery.min.js"></script>
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>
	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>



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
	<script src="assets/js/fuelux/data/fuelux.tree-sampledata.js"></script>
	<script src="assets/js/fuelux/fuelux.tree.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$('#tree1').ace_tree(
							{
								dataSource : treeDataSource,
								multiSelect : true,
								loadingHTML : '<div class="tree-loading"><i class="icon-refresh icon-spin blue"></i></div>',
								'open-icon' : 'icon-minus',
								'close-icon' : 'icon-plus',
								'selectable' : true,
								'selected-icon' : 'icon-ok',
								'unselected-icon' : 'icon-remove'
							});
			/**
			$('#tree1').on('loaded', function (evt, data) {
			});

			$('#tree1').on('opened', function (evt, data) {
			});

			$('#tree1').on('closed', function (evt, data) {
			});
 */
			
			$('#tree1').on('selected', function (evt, data) {
				var str = JSON.stringify(data);  
				var ids ="";
				for(var i=0;i<data.info.length;i++){
					ids =data.info[i].id+","+ids;
				}
				$(".ids").attr("value",ids);
			});
			
			
		});
	</script>
<!-- <script type="text/javascript">
 $('#tree1').find(".tree-folder-header").each(function(){  
    if($(this).parent().css("display")=="block"){   
        $(this).trigger("click");  
    }  
});  

</script> -->

</body>
</html>

