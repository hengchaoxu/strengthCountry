<%--
  Created by IntelliJ IDEA.
  User: HE YU
  Date: 2023/11/10
  Time: 20:18
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
</head>
<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="page-header">
                    <h1>新闻主页</h1>
                </div>
                <div class="list list-group-item-text">
                    <ul>
                    <c:choose>
                        <c:when test="${not empty newsList}">
                            <c:forEach items="${newsList}" varStatus="index" var="news">
                                <li>
                                            <div class="text-left">
                                                ${news.news_title}
                                            </div>
                                    <div class="align-right">
                                    <button class="btn btn-xs btn-success " title="查看" onclick="checkNews('${news.news_id}')">
                                        查看
                                    </button>
                                </div>

                                                                                </li>
                                                                            </c:forEach>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <li class="text-center">
                                                                                <h1>还未发布新闻~</h1>
                                                                            </li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                    </ul>
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

</script>
</body>
</html>