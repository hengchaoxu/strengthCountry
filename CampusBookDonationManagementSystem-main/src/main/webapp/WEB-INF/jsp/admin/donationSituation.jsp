<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2023/11/6
  Time: 28
  To change this template use File | Settings | File Templates.
--%>
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
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>


<script type="text/javascript">
    // 显示包含所有儿童信息的模态窗口
    function showChildrenInfo() {
        // 从服务器端获取bookList数据，需要从服务器端模板渲染
        var assignmentList = ${assignmentListJson};
        var tableHtml = assignmentList.map(function(assignment,index) {
            return '<tr>' +
                '<td>' + assignment.b_name + '</td>' +
                '<td>' + assignment.quantity + '</td>' +
                '<td>' + assignment.a_date + '</td>'
        }).join('');
        document.getElementById('childrenModalTableBody').innerHTML = tableHtml;
        $('#booksInfoModal').modal('show');
    }

</script>


<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="page-header">
                    <h1>选择儿童，查看该儿童受捐助情况：</h1>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="simple-table" class="table  table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>儿童名称</th>
                                        <th>儿童年龄</th>
                                        <th>儿童性别</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${not empty childrenList }">
                                            <c:forEach items="${childrenList }" varStatus="index" var="children">
                                                <tr>
                                                    <td><img src="${pageContext.request.contextPath}/assets/avatars/${children.children_picture }" width="120"></td>
                                                    <td>${children.children_name }</td>
                                                    <td>${children.children_age }</td>
                                                    <td>${children.children_gender }</td>
                                                    <td>
                                                        <div class="hidden-sm hidden-xs btn-group">
                                                            <button class="btn btn-xs btn-success" title="查询" onclick="showChildrenInfo()">
                                                                <i class="ace-icon fa fa-check bigger-120"></i>查询捐助信息
                                                            </button>
                                                            <!-- <button class="btn btn-xs btn-danger" title="取消捐赠">
                                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                            </button> -->
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="7"><h1>还未有受捐赠孩子！</h1></td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="hr hr-18 dotted hr-double"></div>
                    </div>


                    <!-- Books Info Modal -->
                    <div class="modal fade" id="booksInfoModal" tabindex="-1" role="dialog" aria-labelledby="booksModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="booksModalLabel">请选择需要分配的儿童</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>物资</th>
                                            <th>数量</th>
                                            <th>分配日期</th>
                                        </tr>
                                        </thead>
                                        <tbody id="childrenModalTableBody">
                                        <!-- Book details will be inserted here -->
                                        </tbody>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>




                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>