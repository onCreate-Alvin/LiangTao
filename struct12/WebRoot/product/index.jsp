<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="../">
<meta charset="utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/google.css"/>
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
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
<script type="text/javascript">
	function fun(){
		location.href="product/init";
	};
	function openwin(){
		showPage("新增商品","product/add",600,320,fun);
	};
	function edit(id){
		showPage("修改","product/edit?ID="+id,600,340,fun);
	};
	function del(id){
		showConfirm("确定删除",function(){
			location.href="product/del?id="+id;
		},null,"确定","NO");
	};
	function clickaddnew(){
		$("[name=addnew]").click();
	}
	</script>
</head>
<body>
<div class="main-container" id="main-container">
<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">商品管理</li>
					</ul>
					<!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="icon-search nav-search-icon"></i> </span>
						</form>
					</div>
					<!-- #nav-search -->
				</div>
<div class="col-xs-12 col-sm-12">
	<div class="row">
			<div class="col-xs-12">
							<div class="ui-pg-div radius-4">
							<button type="button"  class="btn btn-info btn-sm radius-4" onclick="openwin();" name="addnew" ><span class="ui-icon icon-plus-sign white "></span> 增加商品</button>
							</div>
				<div class="table-responsive">
				
				<table id="sample-table-2" class="table table-striped table-bordered table-hover ">
					<thead>
							<th>商品名称</th>
							 <th>商品图片</th>
							<th>原价(¥)</th>
							<th>折扣优惠</th>
							<th>商品类型</th>
							<th>销售数量</th>
						    <th class="hidden-480">商品详情</th> 
							<th>操作员</th>
							<th>操作</th>
					</thead>
					<tbody>
						<c:forEach items="${requestScope.list}" var="r">
							<tr>
								<td>${r.name}</td>
								<td>
								<c:if test="${r.pics!=null}"><img alt="" src="${r.pics}" style="width: 75px" height="75px"></c:if>
								<c:if test="${r.pics==null}">无图片信息</c:if>
								</td>
								<td>${r.price}</td>
								<td>${r.disc}</td>
								<td>${r.typename}</td>
								<td>${r.salecount}</td>
								<td class="hidden-480">${r.info}</td>
								<td>${r.oname}</td>
								<td >
								<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons no-padding-right "  >
									 <a class="green" href="javascript:edit(${r.ID})"> <i class="icon-pencil bigger-130"></i>修改信息</a> 
								</div>

								<div class="visible-xs visible-sm hidden-md hidden-lg">
									<div class="inline position-relative">
										<button class="btn btn-minier btn-yellow dropdown-toggle"
											data-toggle="dropdown">
											<i class="icon-caret-down icon-only bigger-120"></i>
										</button>

										<ul
											class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
											<li><a href="#" class="tooltip-info" data-rel="tooltip"
												title="View"> <span class="blue"> <i
														class="icon-zoom-in bigger-120"></i> </span> </a></li>

											<li><a href="#" class="tooltip-success"
												data-rel="tooltip" title="Edit"> <span class="green">
														<i class="icon-edit bigger-120"></i> </span> </a></li>

											<li><a href="#" class="tooltip-error" data-rel="tooltip"
												title="Delete"> <span class="red"> <i
														class="icon-trash bigger-120"></i> </span> </a></li>
										</ul>
									</div>
								</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				</div>
			</div></div>
		</div>
	</div>
	<script type="text/javascript">
			jQuery(function($) {
				var oTable1 = $('#sample-table-2').dataTable( {
				"aoColumns": [
			      { "bSortable": false },{ "bSortable": false },
			      null,null,  null,null,  { "bSortable": false }, {"bSortable": false }, 
				  { "bSortable": false }
				] } );
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
				});
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
					var off2 = $source.offset();
					var w2 = $source.width();
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
		</script>
	</body>
</html>