<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../model/admin_top.jsp"%>
<body>
	<div class="row">
		<div class="col-xs-12">
			<h3 class="header smaller lighter blue">jQuery dataTables</h3>
			<div class="table-header">Results for Book</div>
			<div class="table-responsive">
				<table id="sample-table-2"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<td>编码</td>
							<td>名称</td>
							<td>作者</td>
							<td>出版社</td>
							<td>种类</td>
							<td>价格</td>
							<td>创建日期</td>
							<td>操作员ID</td>
							<td>位置</td>
							<td>状态</td>
							<td>备注</td>
							<!-- <th class="hidden-480">Clicks</th>

							<th><i class="icon-time bigger-110 hidden-480"></i> Update</th>
							<th class="hidden-480">Status</th> -->

							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${requestScope.list}" var="r">
							<tr class="ta">

								<td>${r.code}</td>
								<td>${r.name}</td>
								<td>${r.author}</td>
								<td>${r.pname}</td>
								<td>${r.bname}</td>
								<td>${r.price}</td>
								<td>${r.createdate}</td>
								<td>${r.oname}</td>
								<td>${r.location}</td>
								<td>${r.statusname}</td>
								<td>${r.comments}</td>
								<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									 <a class="green"
										href="book/edit?id=${r.id}"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="javascript:del(${r.id})"> <i class="icon-trash bigger-130"></i>
									</a>
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
		</div>
	</div>
	<%-- <table>
		
		<c:forEach items="${requestScope.list}" var="r">
			<tr class="ta">
				<td><input type="checkbox" class="check" myid="${r.id }"></input>
				</td>
				<td>${r.code}</td>
				<td>${r.name}</td>
				<td>${r.author}</td>
				<td>${r.pname}</td>
				<td>${r.bname}</td>
				<td>${r.price}</td>
				<td>${r.createdate}</td>
				<td>${r.oname}</td>
				<td>${r.location}</td>
				<td>${r.statusname}</td>
				<td>${r.comments}</td>
				<td><a href="book/edit?id=${r.id}">修改</a></td>
				<td><a href="javascript:del(${r.id})">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<form action="add" method="post">
		共${requestScope.where.rowcount}条记录 共${requestScope.where.pagecount }页
		第${requestScope.where.pageno}页<a
			href="init?pageno=${requestScope.where.prepage}">上一页</a><a
			href="init?pageno=${requestScope.where.nextpage}">下一页</a>
		<button type="button" onclick="openwin();">测试新增</button>
		<button type="submit">新增</button>
	</form>
	<button onclick="turntoupload()" >上传图片</button>
	
	<script type="text/javascript">
	function fun(){
		location.href="book/init";
	};
	
	function openwin(){
		showPage("这是一个弹窗","book/add",400,400,fun);
	};
	function del(id){
		showConfirm("确定删除",function(){
			location.href="book/del?id="+id;
		},null,"确定","NO");
	};
	</script>
	 --%>
	<div id="modal-table" class="modal " tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header no-padding">
					<div class="table-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<span class="white">&times;</span>
						</button>
						Results for Book
					</div>
				</div>

				<div class="modal-body no-padding">
					<table
						class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
						<thead>
							<tr>
								<th>Domain</th>
								<th>Price</th>
								<th>Clicks</th>

								<th><i class="icon-time bigger-110"></i> Update</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td><a href="#">ace.com</a></td>
								<td>$45</td>
								<td>3,330</td>
								<td>Feb 12</td>
							</tr>

							<tr>
								<td><a href="#">base.com</a></td>
								<td>$35</td>
								<td>2,595</td>
								<td>Feb 18</td>
							</tr>

							<tr>
								<td><a href="#">max.com</a></td>
								<td>$60</td>
								<td>4,400</td>
								<td>Mar 11</td>
							</tr>

							<tr>
								<td><a href="#">best.com</a></td>
								<td>$75</td>
								<td>6,500</td>
								<td>Apr 03</td>
							</tr>

							<tr>
								<td><a href="#">pro.com</a></td>
								<td>$55</td>
								<td>4,250</td>
								<td>Jan 21</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="modal-footer no-margin-top">
					<button class="btn btn-sm btn-danger pull-left"
						data-dismiss="modal">
						<i class="icon-remove"></i> Close
					</button>

					<ul class="pagination pull-right no-margin">
						<li class="prev disabled"><a href="#"> <i
								class="icon-double-angle-left"></i> </a></li>

						<li class="active"><a href="#">1</a></li>

						<li><a href="#">2</a></li>

						<li><a href="#">3</a></li>

						<li class="next"><a href="#"> <i
								class="icon-double-angle-right"></i> </a></li>
					</ul>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- PAGE CONTENT ENDS -->
		<div class="row">
		<div class="col-xs-12">
			<h3 class="header smaller lighter blue">jQuery dataTables</h3>
			<div class="table-header">Results for "Latest Registered
				Domains"</div>
			<div class="table-responsive">
				<table id="sample-table-2"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></th>
							<th>Domain</th>
							<th>Price</th>
							<th class="hidden-480">Clicks</th>

							<th><i class="icon-time bigger-110 hidden-480"></i> Update</th>
							<th class="hidden-480">Status</th>

							<th></th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">app.com</a></td>
							<td>$45</td>
							<td class="hidden-480">3,330</td>
							<td>Feb 12</td>

							<td class="hidden-480"><span
								class="label label-sm label-warning">Expiring</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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
<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">app.com</a></td>
							<td>$45</td>
							<td class="hidden-480">3,330</td>
							<td>Feb 12</td>

							<td class="hidden-480"><span
								class="label label-sm label-warning">Expiring</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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
						</tr><tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">app.com</a></td>
							<td>$45</td>
							<td class="hidden-480">3,330</td>
							<td>Feb 12</td>

							<td class="hidden-480"><span
								class="label label-sm label-warning">Expiring</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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
						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">app.com</a></td>
							<td>$45</td>
							<td class="hidden-480">3,330</td>
							<td>Feb 12</td>

							<td class="hidden-480"><span
								class="label label-sm label-warning">Expiring</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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
						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">base.com</a></td>
							<td>$35</td>
							<td class="hidden-480">2,595</td>
							<td>Feb 18</td>

							<td class="hidden-480"><span
								class="label label-sm label-success">Registered</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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

						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">max.com</a></td>
							<td>$60</td>
							<td class="hidden-480">4,400</td>
							<td>Mar 11</td>

							<td class="hidden-480"><span
								class="label label-sm label-warning">Expiring</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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

						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">best.com</a></td>
							<td>$75</td>
							<td class="hidden-480">6,500</td>
							<td>Apr 03</td>

							<td class="hidden-480"><span
								class="label label-sm label-inverse arrowed-in">Flagged</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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

						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">pro.com</a></td>
							<td>$55</td>
							<td class="hidden-480">4,250</td>
							<td>Jan 21</td>

							<td class="hidden-480"><span
								class="label label-sm label-success">Registered</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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




						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">sight.com</a></td>
							<td>$58</td>
							<td class="hidden-480">6,100</td>
							<td>Feb 19</td>

							<td class="hidden-480"><span
								class="label label-sm label-inverse arrowed-in">Flagged</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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

						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">right.com</a></td>
							<td>$50</td>
							<td class="hidden-480">4,400</td>
							<td>Apr 01</td>

							<td class="hidden-480"><span
								class="label label-sm label-warning">Expiring</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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

						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span> </label></td>

							<td><a href="#">once.com</a></td>
							<td>$20</td>
							<td class="hidden-480">1,400</td>
							<td>Apr 04</td>

							<td class="hidden-480"><span
								class="label label-sm label-info arrowed arrowed-righ">Sold</span>
							</td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i> </a> <a class="green"
										href="#"> <i class="icon-pencil bigger-130"></i> </a> <a
										class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
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
					</tbody>
				</table>
				
			</div>
		
		
		
		</div>
	</div>
	<%@include file="../model/tableScript.jsp"%>