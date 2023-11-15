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
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	</head>
	<body class="no-skin">
		<div class="main-container ace-save-state" id="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						<div class="page-header">
							<h1>用户捐赠成功的物资：</h1>
<%--							<input  id="key" name="key" placeholder="请输入原密码"  />--%>

<%--							<button class="btn btn-info" type="button" id="btn_submit" onclick="find()">--%>
<%--								<i class="ace-icon fa fa-check bigger-110"></i>--%>
<%--								提交信息--%>
<%--							</button>--%>
							<form action="donation_historyFind">
								<input type="text" name="key" placeholder="关键字">
								<button type="submit" >查询</button>
							</form>
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
													<th>捐赠人</th>
													<th>捐赠者地区</th>
													<th>捐赠日期</th>
													<th>捐赠成功日期</th>
													<th>捐赠数量</th>
													<th>捐赠单价</th>
													<th>捐赠总价</th>
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
																<td>${book.b_date }</td>
																<td>${book.b_quantity }</td>
																<td>${book.b_value }</td>
																<td>${book.b_allValue }</td>
															</tr>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
															<td colspan="6"><h1>还未有用户成功捐赠过物资</h1></td>
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
<%--		<script type="text/javascript">--%>
<%--			function find() {--%>
<%--				var key = $('#key').val();--%>

<%--				$.ajax({--%>
<%--					type : "post",--%>
<%--					url : "donation_historyFind",--%>
<%--					data : {"key":key},--%>
<%--					dataType : 'json',--%>
<%--					success : function(data){--%>
<%--						if (data.msg == 'success') {--%>
<%--							alert("您已成功修改密码，请用新密码重新登录系统！");--%>

<%--						} else {--%>
<%--							alert("原密码输入不正确！");--%>
<%--						}--%>
<%--					},--%>
<%--					error : function() {--%>
<%--						alert('密码修改失败！');--%>
<%--					}--%>
<%--				});--%>
<%--			}--%>
<%--		</script>--%>
	</body>
</html>