<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>物资捐赠管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/components/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	</head>
	<body class="no-skin">
		<div class="main-container ace-save-state" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="page-header">
							<h1>以下物资审核未通过：</h1>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th>序号</th>
													<th>物资名称</th>
													<th>捐赠者</th>
													<th>捐赠者地区</th>
													<th>捐赠日期</th>
													<th>捐赠数量</th>
													<th>捐赠单价</th>
													<th>捐赠总价</th>
													<th>审核日期</th>
													<!-- <th>操作</th> -->
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${not empty bookList }">
														<c:forEach items="${bookList }" varStatus="index" var="book">
															<tr>
																<td>
																	${index.count }
																	<input type="hidden" name="b_id" value="${book.b_id }" />
																</td>
																<td>${book.b_name }</td>
																<td>${book.b_author }</td>
																<td>${book.b_publish }</td>
																<td>${book.b_pdate }</td>
																<td>${book.b_quantity }</td>
																<td>${book.b_value }</td>
																<td>${book.b_allValue }</td>
																<td>${book.b_checkdate }</td>
																<%-- <td>
																	<div class="hidden-sm hidden-xs btn-group">
																		<button class="btn btn-xs btn-danger" title="删除" onclick="adminDelCheck2('${book.b_id}')" >
																			<i class="ace-icon fa fa-trash-o bigger-120"></i>
																		</button>
																	</div>
																</td> --%>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="6"><h1>还没有审核未通过的物资！</h1></td>
														</tr>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
								</div>
								<div class="hr hr-18 dotted hr-double"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function adminDelCheck2(b_id) {
				if (confirm('确定要删除该物资信息吗？')) {
					$.ajax({
						type : "post",
						url : "adminDelCheck2",
						data : {"b_id":b_id},
						dataType : 'json',
						success : function(data){ 
							if (data.msg == 'success') {
								alert("删除成功！");
								window.location.href="toBookCheck_2";
							} else {
								alert("删除失败!");
							}
						},
						error : function() {
							alert('操作错误！');
						}
					});
				}
			}
		</script>
	</body>
</html>