<%--
  Created by IntelliJ IDEA.
  User: HE YU
  Date: 2023/11/10
  Time: 23:18
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
                    <h1>新闻正文</h1>
                </div>
                <div class="infobox-content">
                    <div class="article">
                        <form>
                            <h1 class="align-center">${news.news_title}</h1>
                            <p class="align-center">
                                <span>作者：${news.news_author}</span>
                                <span style="margin-left: 10px">栏目：${news.news_column}</span>
                                <span style="margin-left: 10px">关键字：${news.news_keyword}</span>
                                <span style="margin-left: 10px">修改时间：${news.news_updated_time}</span>
                            </p>
                            <div class="news-content">
                                <p class="p_text_indent_2" style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; text-indent: 2em; text-align: justify; font-family: 微软雅黑, &quot;microsoft yahei&quot;; font-size: 16px; color: rgb(51, 51, 51); white-space: normal; line-height: 1.7em !important;">
                                    ${news.news_content}
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

</script>
</body>
</html>
