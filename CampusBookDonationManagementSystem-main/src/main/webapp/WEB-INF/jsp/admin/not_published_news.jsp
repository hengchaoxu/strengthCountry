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
                    <h1>未发布新闻：</h1>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="simple-table" class="table  table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>新闻序号</th>
                                        <th>新闻标题</th>
                                        <th>新闻栏目</th>
                                        <th>新闻关键字</th>
                                        <th>新闻内容</th>
                                        <th>新闻作者</th>
                                        <th>修改时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${not empty notPublishedNewsList }">
                                            <c:forEach items="${notPublishedNewsList}" varStatus="index" var="news">
                                                <tr>
                                                    <td>${news.news_id}</td>
                                                    <td>${news.news_title}</td>
                                                    <td>${news.news_column}</td>
                                                    <td>${news.news_keyword}</td>
                                                    <td>${news.news_content}</td>
                                                    <td>${news.news_author}</td>
                                                    <td>${news.news_updated_time }</td>
                                                    <td>
                                                        <div class="hidden-sm hidden-xs btn-group">

                                                            <button class="btn btn-xs btn-info" title="发布" onclick="adminPublishNews('${news.news_id}')">
                                                                <i class="ace-icon fa fa-check bigger-120"></i>发布
                                                            </button>
                                                            <button class="btn btn-xs btn-success" title="查看" onclick="checkNews('${news.news_id}')">
                                                            <i class="ace-icon fa fa-check bigger-120"></i>查看
                                                            </button>
<%--                                                            <button class="btn btn-xs btn-info" title="修改" onclick="toEditNews('${news.news_id}')">--%>
<%--                                                                <i class="ace-icon fa fa-check bigger-120"></i>修改--%>
<%--                                                            </button>--%>
                                                            <button class="btn btn-xs btn-danger" title="删除" onclick="adminDelNews('${news.news_id}')" >
                                                                <i class="ace-icon fa fa-times bigger-120"></i>删除
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="6"><h1>还没有未发布新闻~</h1></td>
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
    // 查看新闻
    function checkNews(news_id) {
        window.location.href="readNews?news_id=" + news_id;
    }

    // // 编辑新闻
    // function toEditNews(news_id) {
    //     window.location.href="toEditNews?news_id=" + news_id;
    // }

    // 管理员 发布新闻
    function adminPublishNews(news_id) {
        if (confirm('确定要发布该新闻吗？')) {
            $.ajax({
                type : "post",
                url : "publishNews",
                data : {"news_id":news_id},
                dataType : 'json',
                success : function(data){
                    if (data.msg === 'success') {
                        alert("新闻已发布！");
                        window.location.href="NotPublishedNewsList";
                    } else {
                        alert("新闻发布失败!");
                    }
                },
                error : function() {
                    alert('操作错误！');
                }
            });
        }
    }

    // 从数据库中删除新闻
    function adminDelNews(news_id) {
        if (confirm('确定删除该新闻吗？')) {
            $.ajax({
                type : "post",
                url : "deleteNews",
                data : {"news_id":news_id},
                dataType : 'json',
                success : function(data){
                    if (data.msg === 'success') {
                        alert("操作成功！");
                        window.location.href="NotPublishedNewsList";
                    } else {
                        alert("操作失败!");
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