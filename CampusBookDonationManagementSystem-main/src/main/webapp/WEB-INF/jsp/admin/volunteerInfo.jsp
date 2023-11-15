<%--
  Created by IntelliJ IDEA.
  User: 86139
  Date: 2023/11/9
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>物资捐赠管理系统</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/components/font-awesome/css/font-awesome.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-fonts.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    </head>
    <body class="no-skin">
    <div class="main-container ace-save-state" id="main-container">
        <div class="main-content">
            <div class="main-content-inner">
                <div class="page-content">
                    <div class="page-header"><h1>个人信息-信息查看</h1></div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="hr dotted"></div>
                            <div>
                                <div id="user-profile-1" class="user-profile row">
                                    <div class="col-xs-12 col-sm-3 center">
                                        <div>
                                            <div class="space-12"></div>
                                            <span class="profile-picture">
													<img id="avatar" width="100px" height="100px" class="editable img-responsive" alt="志愿者头像" src="${pageContext.request.contextPath}/assets/avatars/${volunteerList.volunteer_picture}" />
												</span>
                                            <div class="width-60 label label-info label-xlg ">
                                                <div class="inline position-relative">
                                                    <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                                                        <i class="ace-icon fa fa-circle light-green"></i> &nbsp;
                                                        <span class="white">${volunteerList.volunteer_account}</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="space-6"></div>
                                        <div class="hr hr16 dotted"></div>
                                    </div>
                                    <div class="col-xs-12 col-sm-9">
                                        <div class="space-12"></div>
                                        <div class="profile-user-info profile-user-info-striped">
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 账号 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_account">${volunteerList.volunteer_account}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 密码 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_password">${volunteerList.volunteer_password }</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 邮箱 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_email">${volunteerList.volunteer_email}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 姓名 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_name">${volunteerList.volunteer_name}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 性别 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_gender">${volunteerList.volunteer_gender}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 年龄 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_age">${volunteerList.volunteer_age}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 出生日期 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_birthday">${volunteerList.volunteer_birthday}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 地址 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_address">${volunteerList.volunteer_address}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 学校 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_school">${volunteerList.volunteer_school}</span>
                                                </div>
                                            </div>
                                            <div class="profile-info-row">
                                                <div class="profile-info-name"> 个人描述 </div>
                                                <div class="profile-info-value">
                                                    <span class="editable" id="volunteer_description">${volunteerList.volunteer_description}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /section:pages/profile.info -->
                                        <div class="space-20"></div>
                                        <div class="hr hr2 hr-double"></div>
                                        <div class="space-6"></div>
                                        <div class="center">
                                        </div>
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