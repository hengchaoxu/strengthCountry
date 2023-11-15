<%--
  Created by IntelliJ IDEA.
  User: 86139
  Date: 2023/11/8
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>志愿者列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components//css/volunteer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/static/bootstrap-3.4.1/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/assets/static/jquery-3.5.1/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/static/bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.onpage-help.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/docs/sunburst.css" />
</head>

<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="page-header">
                    <h1>志愿者列表</h1>
                </div>

                <form action="findVolunteer">
                    <input type="text" id="key" name="key" placeholder="志愿者账号">
                    <button type="submit" >查询</button>
                </form>

                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="simple-table" class="table  table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>照片</th>
                                        <th>志愿者账号</th>
                                        <th>志愿者密码</th>
                                        <th>志愿者姓名</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${not empty volunteerList }">
                                            <c:forEach items="${volunteerList }" varStatus="index" var="volunteer">
                                                <tr>
                                                    <td>
                                                            ${index.count }
                                                        <input type="hidden" name="volunteer_account" value="${volunteer.volunteer_account }" />
                                                    </td>
                                                    <td>
                                                        <img src="${pageContext.request.contextPath}/assets/avatars/${volunteer.volunteer_picture}" width="120" />
                                                    </td>
                                                    <td>${volunteer.volunteer_account }</td>
                                                    <td>${volunteer.volunteer_password }</td>
                                                    <td>${volunteer.volunteer_name }</td>

                                                    <td>
                                                        <div class="hidden-sm hidden-xs btn-group">
                                                            <button class="btn btn-xs btn-info" title="查看志愿者信息" onclick="showVolunteerInfo('${volunteer.volunteer_account}')">
                                                                <i class="ace-icon fa fa-check bigger-120"></i>查看志愿者信息
                                                            </button>
                                                            <button class="btn btn-xs btn-info" title="修改志愿者信息" onclick="toModifyVolunteer('${volunteer.volunteer_account}')">
                                                                <i class="ace-icon fa fa-check bigger-120"></i>修改志愿者信息
                                                            </button>
                                                            <button class="btn btn-xs btn-danger" title="删除志愿者" onclick="delVolunteerInfo('${volunteer.volunteer_account}')" >
                                                                <i class="ace-icon fa fa-times bigger-120"></i>删除志愿者
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="7"><h1>还未有志愿者！</h1></td>
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
                           function showVolunteerInfo(volunteer_account) {
                               $("#sidebar ul li").removeAttr('class');
                               $('#side6-1').attr('class','active');

                                window.location.href = "showVolunteerInfo?volunteer_account=" + volunteer_account;
                           }
                           function toModifyVolunteer(volunteer_account) {
                               window.location.href="toModifyVolunteer?volunteer_account=" + volunteer_account;
                           }
                           function delVolunteerInfo(volunteer_account) {
                               if (confirm('确定要删除该志愿者吗？')) {
                                   $.ajax({
                                       url: 'deleteVolunteerByAccount',
                                       type: "POST",
                                       data: {"volunteer_account": volunteer_account},
                                       dataType: "json",
                                       success: function (data) {
                                           if (data.msg == 'success') {
                                               alert("删除成功！");
                                               window.location.href = "/admin/queryVolunteerList";
                                           } else {
                                               alert("删除失败!");
                                           }
                                       },
                                       error: function () {
                                           console.log(data.msg);
                                           alert('操作错误！');
                                       }
                                   });
                               }
                           }
                           function find() {
                               // 构建要发送的数据对象
                               var key = $('#key').val();
                               // 发送数据到服务器，您需要根据实际情况修改URL和数据处理方式
                               $.ajax({
                                   type: 'post',
                                   url: 'findVolunteer', // 这里填写您的服务器端接收数据的URL
                                   data: {"key":key}, // 将对象转换为JSON字符串
                                   dataType : 'json' // 设置发送数据的格式为 JSON
                               });
                           }
                    </script>
</body>
</html>