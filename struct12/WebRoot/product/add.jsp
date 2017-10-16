<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="../">
<meta charset="utf-8" />
<script src="js/jquery.min.js"></script>
<!-- basic styles -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="css/upload.css">
<!-- page specific plugin styles -->

<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="assets/css/jquery.gritter.css" />


<!-- ace styles -->

<link rel="stylesheet" href="assets/css/google.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<script src="js/jquery.js"></script>
<script src="js/jquery.min.js"></script>
<script src="assets/js/ace-extra.min.js"></script>
<script src="assets/js/ace-extra.min.js"></script>

<style>
.spinner-preview {
	width: 100px;
	height: 100px;
	text-align: center;
	margin-top: 60px;
}

.dropdown-preview {
	margin: 0 5px;
	display: inline-block;
}

.dropdown-preview>.dropdown-menu {
	display: block;
	position: static;
	margin-bottom: 5px;
}
</style>
<script src="assets/js/ace-extra.min.js"></script>



<script src="js/basic.js"></script>
<script src="layerui/layer/layer.js"></script>

<script type="text/javascript">
	function save() {
		var m = $(".f1").find(".must");
		for ( var i = 0; i < m.size(); i++) {
			if (m.get(i).value.length == 0) {
				showMsg("数据录入不全，存在必须录入的数据");
				return;
			}
		}
		var data = $(".f1").serializeArray();
		var action = $(".f1").attr("action");

		sendData(action, data, "已存在该商品");
	}
</script>
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<link rel="stylesheet" href="assets/css/chosen.css" />
<link rel="stylesheet" href="assets/css/datepicker.css" />
<link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="assets/css/daterangepicker.css" />
<link rel="stylesheet" href="assets/css/colorpicker.css" />
</head>
<body>
	<div class="col-xs-12 col-sm-12">
		<c:if test="${requestScope.uplist==null}">
			<div class="tabbable">
				<ul class="nav nav-tabs padding-12 tab-color-blue background-blue"
					id="myTab4">
					<li class="active"><a data-toggle="tab" href="#home4">商品信息</a>
					</li>

					<li class=""><a data-toggle="tab" href="#profile4">商品图片</a></li>

					<li class=""><a data-toggle="tab" href="#dropdown14">商品详情</a>
					</li>
				</ul>
				<div class="tab-content">
					<div id="home4" class="tab-pane in active">

						<form class="f1 form-horizontal" action="product/insert1" method="post">
							<div class="form-group ">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right" for="form-field-1">名称</label>
								<div class="col-sm-9 col-xs-9 ">
									<input type="text" id="form-field-1" placeholder="名称" class="col-xs-9 col-sm-6 must" name="name" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right"
									for="form-field-1">原价</label>
								<div class="col-sm-2 col-xs-2 ">
									<input type="text" id="form-field-1" placeholder="原价"
										class="col-xs-12 col-sm-12 must" name="price" />
								</div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right"
									for="form-field-1">折扣</label>
								<div class="col-sm-2 col-xs-2 ">
									<input type="text" id="form-field-1" placeholder="折扣"
										class="col-xs-12 col-sm-12 must" name="disc" />
								</div>
							</div>
							<div class="form-group ">
								<div class="col-sm-2 col-xs-2 "></div>
									<label class="col-sm-1 col-xs-1 control-label no-padding-right" for="form-field-1">
										类型
									</label>
									<div class="col-sm-9 col-xs-9 ">
											
											<select  class="col-xs-4 col-sm-4" name="productType" class="must">
												<c:forEach items="${requestScope.typelist}" var="r3">
													<option value="${r3.ID}">${r3.name}</option>
												</c:forEach>
											</select>
									</div>
							</div>
						</form>
					</div>

					<div id="profile4" class="tab-pane ">
						<form class="f1 form-horizontal" action="client/insert1"
							method="post">
						
							<div class="form-group ">
								
								<!-- 上传图片 -->
								<div class="col-sm-12 col-xs-12 ">
									<div class="picshow" selector="[name=file]" idsselector="[name=pics]" >
										
									</div>
									<input type="hidden" name ="pics" id="pics" value=""/>
								</div>
							</div>
						</form>
					</div>

					<div id="dropdown14" class="tab-pane">
						<form class="f1 form-horizontal" action="client/insert1"
							method="post" >
							<div class="form-group ">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right"
									for="form-field-1">商品详情</label>
								<div class="col-sm-9 col-xs-9 ">
									<textarea rows="3" cols="30" class="col-xs-9 col-sm-6 must"
										name="info">
									</textarea>
								</div>
							</div>
						</form>
					</div>
				</div></div>
		</c:if>
<c:if test="${requestScope.uplist!=null}">
			<div class="tabbable">
				<ul class="nav nav-tabs padding-12 tab-color-blue background-blue"
					id="myTab4">
					<li class="active"><a data-toggle="tab" href="#home4">商品信息</a>
					</li>

					<li class=""><a data-toggle="tab" href="#profile4">商品图片</a></li>

					<li class=""><a data-toggle="tab" href="#dropdown14">商品详情</a>
					</li>
				</ul>
				<div class="tab-content">
					<div id="home4" class="tab-pane in active">

						<form class="f1 form-horizontal" action="product/update1" method="post">
							<div class="form-group "style="display: none">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right" for="form-field-1">oho</label>
								<div class="col-sm-9 col-xs-9 ">
									<input type="text" id="form-field-1" placeholder="ID" class="col-xs-9 col-sm-6 must" name="ID" value="${requestScope.uplist.ID}" />
								</div>
							</div>
							
							
							<div class="form-group ">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right" for="form-field-1">名称</label>
								<div class="col-sm-9 col-xs-9 ">
									<input type="text" id="form-field-1" placeholder="名称" class="col-xs-9 col-sm-6 must" name="name"  value="${requestScope.uplist.name}"/>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right"
									for="form-field-1">原价</label>
								<div class="col-sm-2 col-xs-2 ">
									<input type="text" id="form-field-1" placeholder="原价"
										class="col-xs-12 col-sm-12 must" name="price"  value="${requestScope.uplist.price}"/>
								</div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right"
									for="form-field-1">折扣</label>
								<div class="col-sm-2 col-xs-2 ">
									<input type="text" id="form-field-1" placeholder="折扣"
										class="col-xs-12 col-sm-12 must" name="disc" value="${requestScope.uplist.disc}"/>
								</div>
							</div>
							<div class="form-group ">
								<div class="col-sm-2 col-xs-2 "></div>
									<label class="col-sm-1 col-xs-1 control-label no-padding-right" for="form-field-1">
										类型
									</label>
									<div class="col-sm-9 col-xs-9 ">
											
											<select  class="col-xs-4 col-sm-4" name="productType" class="must">
												<c:forEach items="${requestScope.typelist}" var="r3">
													<option value="${r3.ID}" 
													<c:if test="${requestScope.uplist.productType==r3.ID}">
													selected="selected"
													</c:if>
													>${r3.name}</option>
												</c:forEach>
											</select>
									</div>
							</div>
						</form>
					</div>

					<div id="profile4" class="tab-pane ">
						<form class="f1 form-horizontal" action="client/update1"
							method="post">
							<div class="form-group ">
								<!-- 上传图片 -->
								<div class="col-sm-12 col-xs-12 ">
									<div class="picshow" selector="[name=file]" idsselector="[name=pics]" >
										
									</div>
									<input type="hidden" name ="pics" id="pics" value="${requestScope.uplist.pics}"/>
								</div>
							</div>
						</form>
					</div>

					<div id="dropdown14" class="tab-pane">
						<form class="f1 form-horizontal" action="client/insert1"
							method="post" >
							<div class="form-group ">
								<div class="col-sm-2 col-xs-2 "></div>
								<label class="col-sm-1 col-xs-1 control-label no-padding-right"
									for="form-field-1">商品详情</label>
								<div class="col-sm-9 col-xs-9 ">
									<textarea rows="3" cols="30" class="col-xs-9 col-sm-6 must"
										name="info">
									</textarea>
								</div>
							</div>
						</form>
					</div>
				</div></div>
		</c:if>


		

	<div class=" hr18"></div>
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

	<!-- page specific plugin scripts -->

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
	<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
	<script src="assets/js/jquery.gritter.min.js"></script>
	<script src="assets/js/spin.min.js"></script>


	<!-- ace scripts -->

	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		jQuery(function($) {
			$('#id-disable-check').on('click', function() {
				var inp = $('#form-input-readonly').get(0);
				if (inp.hasAttribute('disabled')) {
					inp.setAttribute('readonly', 'true');
					inp.removeAttribute('disabled');
					inp.value = "This text field is readonly!";
				} else {
					inp.setAttribute('disabled', 'disabled');
					inp.removeAttribute('readonly');
					inp.value = "This text field is disabled!";
				}
			});

			$(".chosen-select").chosen();
			$('#chosen-multiple-style').on('click', function(e) {
				var target = $(e.target).find('input[type=radio]');
				var which = parseInt(target.val());
				if (which == 2)
					$('#form-field-select-4').addClass('tag-input-style');
				else
					$('#form-field-select-4').removeClass('tag-input-style');
			});

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			$('textarea[class*=autosize]').autosize({
				append : "\n"
			});
			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			$.mask.definitions['~'] = '[+-]';
			$('.input-mask-date').mask('99/99/9999');
			$('.input-mask-phone').mask('(999) 999-9999');
			$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
			$(".input-mask-product").mask("a*-999-a999", {
				placeholder : " ",
				completed : function() {
					alert("You typed the following: " + this.val());
				}
			});

			$("#input-size-slider").css('width', '200px').slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 8,
						step : 1,
						slide : function(event, ui) {
							var sizing = [ '', 'input-sm', 'input-lg',
									'input-mini', 'input-small',
									'input-medium', 'input-large',
									'input-xlarge', 'input-xxlarge' ];
							var val = parseInt(ui.value);
							$('#form-field-4').attr('class', sizing[val]).val(
									'.' + sizing[val]);
						}
					});

			$("#input-span-slider").slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 12,
						step : 1,
						slide : function(event, ui) {
							var val = parseInt(ui.value);
							$('#form-field-5').attr('class', 'col-xs-' + val)
									.val('.col-xs-' + val);
						}
					});

			$("#slider-range")
					.css('height', '200px')
					.slider(
							{
								orientation : "vertical",
								range : true,
								min : 0,
								max : 100,
								values : [ 17, 67 ],
								slide : function(event, ui) {
									var val = ui.values[$(ui.handle).index() - 1]
											+ "";

									if (!ui.handle.firstChild) {
										$(ui.handle)
												.append(
														"<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
									}
									$(ui.handle.firstChild).show().children()
											.eq(1).text(val);
								}
							}).find('a').on('blur', function() {
						$(this.firstChild).hide();
					});

			$("#slider-range-max").slider({
				range : "max",
				min : 1,
				max : 10,
				value : 2
			});

			$("#eq > span").css({
				width : '90%',
				'float' : 'left',
				margin : '15px'
			}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt($(this).text(), 10);
				$(this).empty().slider({
					value : value,
					range : "min",
					animate : true

				});
			});

			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file : 'No File ...',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});

			$('#id-input-file-3').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'icon-cloud-upload',
				droppable : true,
				thumbnail : 'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
					//Check an example below
					//or examples/file-upload.html
					return true;
				}*/
				/**,before_remove : function() {
					return true;
				}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}

			}).on('change', function() {
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});

			//dynamically change allowed formats by changing before_change callback function
			$('#id-file-format')
					.removeAttr('checked')
					.on(
							'change',
							function() {
								var before_change
								var btn_choose
								var no_icon
								if (this.checked) {
									btn_choose = "Drop images here or click to choose";
									no_icon = "icon-picture";
									before_change = function(files, dropped) {
										var allowed_files = [];
										for ( var i = 0; i < files.length; i++) {
											var file = files[i];
											if (typeof file === "string") {
												//IE8 and browsers that don't support File Object
												if (!(/\.(jpe?g|png|gif|bmp)$/i)
														.test(file))
													return false;
											} else {
												var type = $.trim(file.type);
												if ((type.length > 0 && !(/^image\/(jpe?g|png|gif|bmp)$/i)
														.test(type))
														|| (type.length == 0 && !(/\.(jpe?g|png|gif|bmp)$/i)
																.test(file.name))//for android's default browser which gives an empty string for file.type
												)
													continue;//not an image so don't keep this file
											}

											allowed_files.push(file);
										}
										if (allowed_files.length == 0)
											return false;

										return allowed_files;
									}
								} else {
									btn_choose = "Drop files here or click to choose";
									no_icon = "icon-cloud-upload";
									before_change = function(files, dropped) {
										return files;
									}
								}
								var file_input = $('#id-input-file-3');
								file_input.ace_file_input('update_settings', {
									'before_change' : before_change,
									'btn_choose' : btn_choose,
									'no_icon' : no_icon
								})
								file_input.ace_file_input('reset_input');
							});

			$('#spinner1').ace_spinner({
				value : 0,
				min : 0,
				max : 200,
				step : 10,
				btn_up_class : 'btn-info',
				btn_down_class : 'btn-info'
			}).on('change', function() {
				//alert(this.value)
			});
			$('#spinner2').ace_spinner({
				value : 0,
				min : 0,
				max : 10000,
				step : 100,
				touch_spinner : true,
				icon_up : 'icon-caret-up',
				icon_down : 'icon-caret-down'
			});
			$('#spinner3').ace_spinner({
				value : 0,
				min : -100,
				max : 100,
				step : 10,
				on_sides : true,
				icon_up : 'icon-plus smaller-75',
				icon_down : 'icon-minus smaller-75',
				btn_up_class : 'btn-success',
				btn_down_class : 'btn-danger'
			});

			$('.date-picker').datepicker({
				autoclose : true
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});
			$('input[name=date-range-picker]').daterangepicker().prev().on(
					ace.click_event, function() {
						$(this).next().focus();
					});

			$('#timepicker1').timepicker({
				minuteStep : 1,
				showSeconds : true,
				showMeridian : false
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			$('#colorpicker1').colorpicker();
			$('#simple-colorpicker-1').ace_colorpicker();

			$(".knob").knob();

			//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
			var tag_input = $('#form-field-tags');
			if (!(/msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()))) {
				tag_input.tag({
					placeholder : tag_input.attr('placeholder'),
					//enable typeahead by specifying the source array
					source : ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead
				});
			} else {
				//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
				tag_input.after(
						'<textarea id="' + tag_input.attr('id') + '" name="'
								+ tag_input.attr('name') + '" rows="3">'
								+ tag_input.val() + '</textarea>').remove();
				//$('#form-field-tags').autosize({append: "\n"});
			}

			/////////
			$('#modal-form input[type=file]').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'icon-cloud-upload',
				droppable : true,
				thumbnail : 'large'
			})
			$('#modal-form').on('shown.bs.modal', function() {
				$(this).find('.chosen-container').each(function() {
					$(this).find('a:first-child').css('width', '210px');
					$(this).find('.chosen-drop').css('width', '210px');
					$(this).find('.chosen-search input').css('width', '200px');
				});
			})
		});
	</script>

	<script type="text/javascript">
		jQuery(function($) {
			/**
			$('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			  console.log(e.target.getAttribute("href"));
			})
			 */

			$('#accordion-style').on('click', function(ev) {
				var target = $('input', ev.target);
				var which = parseInt(target.val());
				if (which == 2)
					$('#accordion').addClass('accordion-style2');
				else
					$('#accordion').removeClass('accordion-style2');
			});

			var oldie = /msie\s*(8|7|6)/
					.test(navigator.userAgent.toLowerCase());
			$('.easy-pie-chart.percentage').each(function() {
				$(this).easyPieChart({
					barColor : $(this).data('color'),
					trackColor : '#EEEEEE',
					scaleColor : false,
					lineCap : 'butt',
					lineWidth : 8,
					animate : oldie ? false : 1000,
					size : 75
				}).css('color', $(this).data('color'));
			});

			$('[data-rel=tooltip]').tooltip();
			$('[data-rel=popover]').popover({
				html : true
			});

			$('#gritter-regular')
					.on(
							ace.click_event,
							function() {
								$.gritter
										.add({
											title : 'This is a regular notice!',
											text : 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="blue">magnis dis parturient</a> montes, nascetur ridiculus mus.',
											image : $path_assets
													+ '/avatars/avatar1.png',
											sticky : false,
											time : '',
											class_name : (!$('#gritter-light')
													.get(0).checked ? 'gritter-light'
													: '')
										});

								return false;
							});

			$('#gritter-sticky')
					.on(
							ace.click_event,
							function() {
								var unique_id = $.gritter
										.add({
											title : 'This is a sticky notice!',
											text : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="red">magnis dis parturient</a> montes, nascetur ridiculus mus.',
											image : $path_assets
													+ '/avatars/avatar.png',
											sticky : true,
											time : '',
											class_name : 'gritter-info'
													+ (!$('#gritter-light')
															.get(0).checked ? ' gritter-light'
															: '')
										});

								return false;
							});

			$('#gritter-without-image')
					.on(
							ace.click_event,
							function() {
								$.gritter
										.add({
											// (string | mandatory) the heading of the notification
											title : 'This is a notice without an image!',
											// (string | mandatory) the text inside the notification
											text : 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="orange">magnis dis parturient</a> montes, nascetur ridiculus mus.',
											class_name : 'gritter-success'
													+ (!$('#gritter-light')
															.get(0).checked ? ' gritter-light'
															: '')
										});

								return false;
							});

			$('#gritter-max3')
					.on(
							ace.click_event,
							function() {
								$.gritter
										.add({
											title : 'This is a notice with a max of 3 on screen at one time!',
											text : 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="green">magnis dis parturient</a> montes, nascetur ridiculus mus.',
											image : $path_assets
													+ '/avatars/avatar3.png',
											sticky : false,
											before_open : function() {
												if ($('.gritter-item-wrapper').length >= 3) {
													return false;
												}
											},
											class_name : 'gritter-warning'
													+ (!$('#gritter-light')
															.get(0).checked ? ' gritter-light'
															: '')
										});

								return false;
							});

			$('#gritter-center')
					.on(
							ace.click_event,
							function() {
								$.gritter
										.add({
											title : 'This is a centered notification',
											text : 'Just add a "gritter-center" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
											class_name : 'gritter-info gritter-center'
													+ (!$('#gritter-light')
															.get(0).checked ? ' gritter-light'
															: '')
										});

								return false;
							});

			$('#gritter-error')
					.on(
							ace.click_event,
							function() {
								$.gritter
										.add({
											title : 'This is a warning notification',
											text : 'Just add a "gritter-light" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
											class_name : 'gritter-error'
													+ (!$('#gritter-light')
															.get(0).checked ? ' gritter-light'
															: '')
										});

								return false;
							});

			$("#gritter-remove").on(ace.click_event, function() {
				$.gritter.removeAll();
				return false;
			});

			///////

			$("#bootbox-regular").on(ace.click_event, function() {
				bootbox.prompt("What is your name?", function(result) {
					if (result === null) {
						//Example.show("Prompt dismissed");
					} else {
						//Example.show("Hi <b>"+result+"</b>");
					}
				});
			});

			$("#bootbox-confirm").on(ace.click_event, function() {
				bootbox.confirm("Are you sure?", function(result) {
					if (result) {
						//
					}
				});
			});

			$("#bootbox-options")
					.on(
							ace.click_event,
							function() {
								bootbox
										.dialog({
											message : "<span class='bigger-110'>I am a custom dialog with smaller buttons</span>",
											buttons : {
												"success" : {
													"label" : "<i class='icon-ok'></i> Success!",
													"className" : "btn-sm btn-success",
													"callback" : function() {
														//Example.show("great success");
													}
												},
												"danger" : {
													"label" : "Danger!",
													"className" : "btn-sm btn-danger",
													"callback" : function() {
														//Example.show("uh oh, look out!");
													}
												},
												"click" : {
													"label" : "Click ME!",
													"className" : "btn-sm btn-primary",
													"callback" : function() {
														//Example.show("Primary button");
													}
												},
												"button" : {
													"label" : "Just a button...",
													"className" : "btn-sm"
												}
											}
										});
							});

			$('#spinner-opts small').css({
				display : 'inline-block',
				width : '60px'
			})

			var slide_styles = [ '', 'green', 'red', 'purple', 'orange', 'dark' ];
			var ii = 0;
			$("#spinner-opts input[type=text]").each(
					function() {
						var $this = $(this);
						$this.hide().after('<span />');
						$this.next().addClass('ui-slider-small').addClass(
								"inline ui-slider-"
										+ slide_styles[ii++
												% slide_styles.length]).css({
							'width' : '125px'
						}).slider({
							value : parseInt($this.val()),
							range : "min",
							animate : true,
							min : parseInt($this.data('min')),
							max : parseInt($this.data('max')),
							step : parseFloat($this.data('step')),
							slide : function(event, ui) {
								$this.attr('value', ui.value);
								spinner_update();
							}
						});
					});

			$.fn.spin = function(opts) {
				this.each(function() {
					var $this = $(this), data = $this.data();

					if (data.spinner) {
						data.spinner.stop();
						delete data.spinner;
					}
					if (opts !== false) {
						data.spinner = new Spinner($.extend({
							color : $this.css('color')
						}, opts)).spin(this);
					}
				});
				return this;
			};

			function spinner_update() {
				var opts = {};
				$('#spinner-opts input[type=text]').each(function() {
					opts[this.name] = parseFloat(this.value);
				});
				$('#spinner-preview').spin(opts);
			}

			$('#id-pills-stacked').removeAttr('checked').on('click',
					function() {
						$('.nav-pills').toggleClass('nav-stacked');
					});

		});
	</script>

<script type="text/javascript" src="js/picshow.js"></script>	
	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>

