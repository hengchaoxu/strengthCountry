<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>物资捐赠管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <script src="${pageContext.request.contextPath}/assets/js/ace-extra.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
</head>
<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="page-header"><h1>志愿者信息修改</h1></div>
                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者密码 </label>
                                <div class="col-sm-9">
                                    <input type="hidden" id="volunteer_picture" value="${volunteerList.volunteer_picture }" />
                                    <input type="text" id="volunteer_password" name="volunteer_password" value="${volunteerList.volunteer_password }" placeholder="请填写志愿者账号" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者邮箱 </label>
                                <div class="col-sm-9">
                                    <input type="text" id="volunteer_email" name="volunteer_email" value="${volunteerList.volunteer_email }" placeholder="请填写志愿者邮箱" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者姓名 </label>
                                <div class="col-sm-9">
                                    <input type="text" id="volunteer_name" name="volunteer_name" value="${volunteerList.volunteer_name }" placeholder="请填写志愿者姓名" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者性别 </label>
                                <div class="col-sm-9">
                                    <input type="radio" name="volunteer_gender" value="男" ${volunteerList.volunteer_gender eq "男" ? "checked" : "" } />男&nbsp;&nbsp;
                                    <input type="radio" name="volunteer_gender" value="女" ${volunteerList.volunteer_gender eq "女" ? "checked" : "" } />女
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者生日</label>
                                <div class="col-sm-9">
                                    <div class="col-sm-9">
                                        <input type="date" id="volunteer_birthday" name="volunteer_birthday" value="${volunteerList.volunteer_birthday }" placeholder="请填写志愿者的生日" class="col-xs-10 col-sm-5" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者年龄</label>
                                <div class="col-sm-9">
                                    <input type="text" id="volunteer_age" name="volunteer_age" value="${volunteerList.volunteer_age }" placeholder="请填写志愿者的生日" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者地址</label>
                                <div class="col-sm-9">
                                    <input type="text" id="volunteer_address" name="volunteer_address" value="${volunteerList.volunteer_address }" placeholder="请填写志愿者的地址" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者学校</label>
                                <div class="col-sm-9">
                                    <input type="text" id="volunteer_school" name="volunteer_school" value="${volunteerList.volunteer_school }" placeholder="请填写志愿者的学校" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 志愿者个人描述</label>
                                <div class="col-sm-9">
                                    <input type="text" id="volunteer_description" name="volunteer_description" value="${volunteerList.volunteer_description }" placeholder="请填写志愿者的个人描述" class="col-xs-10 col-sm-5" row="4" />
                                </div>
                            </div>
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="button" id="btn_submit" onclick="editVolunteerInfo('${volunteerList.volunteer_account}')">
                                        <i class="ace-icon fa fa-check bigger-110"></i>保存修改
                                    </button> &nbsp; &nbsp; &nbsp;
                                    <button class="btn" type="reset" onclick="returnCheck0()">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>返回
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function editVolunteerInfo(volunteer_account) {

        let params = {
            volunteer_account: volunteer_account,
            volunteer_password: $('#volunteer_password').val(),
            volunteer_email: $('#volunteer_email').val(),
            volunteer_name: $('#volunteer_name').val(),
            volunteer_gender: $('input[name="volunteer_gender"]:checked').val(),
            volunteer_birthday: $('#volunteer_birthday').val(),
            volunteer_age: $('#volunteer_age').val(),
            volunteer_description: $('#volunteer_description').val(),
            volunteer_address: $('#volunteer_address').val(),
            volunteer_school: $('#volunteer_school').val(),
            volunteer_picture: $('#volunteer_picture').val(),
        }
        // 正则表达式，用于检查manager_account是否包含字母和数字
        const alphanumericRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
        // 正则表达式，用于检查manager_email是否符合邮箱格式
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!alphanumericRegex.test(params.volunteer_password)) {
            return alert('志愿者密码必须包含至少一个字母和一个数字，且至少6位长度！');
        }
        /*if (!emailRegex.test(params.volunteer_email)) {
            return alert('请输入有效的邮箱地址！');
        }*/

        if (!params.volunteer_password) return alert('志愿者密码不能为空！')
        if (!params.volunteer_email) return alert('志愿者邮箱不能为空！')

        $.ajax({
            type : "post",
            url : "modifyVolunteerInfo",
            contentType: 'application/json',
            data : JSON.stringify(params),
            dataType : 'json',
            success: function (data) {
                if (data.msg == 'success') {
                    alert("修改成功！");
                    window.location.href = "/admin/queryVolunteerList";
                } else {
                    alert("修改失败！");
                }
            },
            error: function () {
                console.log(data.msg);
                alert('操作错误！');
            }
        });

    }
</script>
</body>
</html>
