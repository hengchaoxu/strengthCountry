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
<body>
<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="page-header"><h1>儿童信息修改</h1></div> <!-- 将 "志愿者信息修改" 替换为 "儿童信息修改" -->
                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童密码 </label> <!-- 将 "志愿者密码" 替换为 "儿童密码" -->
                                <div class="col-sm-9">
                                    <input type="hidden" id="children_picture" value="${childrenList.children_picture }" />
                                    <input type="text" id="children_password" name="children_password" value="${childrenList.children_password}" placeholder="请填写儿童账号" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_password" 替换为 "children_password" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童邮箱 </label> <!-- 将 "志愿者邮箱" 替换为 "儿童邮箱" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_email" name="children_email" value="${childrenList.children_email}" placeholder="请填写儿童邮箱" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_email" 替换为 "children_email" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童姓名 </label> <!-- 将 "志愿者姓名" 替换为 "儿童姓名" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_name" name="children_name" value="${childrenList.children_name}" placeholder="请填写儿童姓名" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_name" 替换为 "children_name" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童性别 </label> <!-- 将 "志愿者性别" 替换为 "儿童性别" -->
                                <div class="col-sm-9">
                                    <input type="radio" name="children_gender" value="男" ${childrenList.children_gender eq "男" ? "checked" : ""} />男&nbsp;&nbsp; <!-- 将 "volunteer_gender" 替换为 "children_gender" -->
                                    <input type="radio" name="children_gender" value="女" ${childrenList.children_gender eq "女" ? "checked" : ""} />女
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童生日</label> <!-- 将 "志愿者生日" 替换为 "儿童生日" -->
                                <div class="col-sm-9">
                                    <div class="col-sm-9">
                                        <input type="date" id="children_birthday" name="children_birthday" value="${childrenList.children_birthday}" placeholder="请填写儿童的生日" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_birthday" 替换为 "children_birthday" -->
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童年龄</label> <!-- 将 "志愿者年龄" 替换为 "儿童年龄" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_age" name="children_age" value="${childrenList.children_age}" placeholder="请填写儿童的生日" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_age" 替换为 "children_age" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童地址</label> <!-- 将 "志愿者地址" 替换为 "儿童地址" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_address" name="children_address" value="${childrenList.children_address}" placeholder="请填写儿童的地址" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_address" 替换为 "children_address" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童学校</label> <!-- 将 "志愿者学校" 替换为 "儿童学校" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_school" name="children_school" value="${childrenList.children_school}" placeholder="请填写儿童的学校" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_school" 替换为 "children_school" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童个人描述</label> <!-- 重复的行，似乎有误，你可能需要检查并删除这一行 -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_description" name="children_description" value="${childrenList.children_description}" placeholder="请填写儿童的个人描述" class="col-xs-10 col-sm-5" row="4" />
                                </div>
                            </div>
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="button" id="btn_submit" onclick="editChildrenInfo('${childrenList.children_account}')">
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
    function editChildrenInfo(children_account) {

        let params = {
            children_account: children_account, // 将 "volunteer_account" 替换为 "children_account"
            children_password: $('#children_password').val(), // 将 "volunteer_password" 替换为 "children_password"
            children_email: $('#children_email').val(), // 将 "volunteer_email" 替换为 "children_email"
            children_name: $('#children_name').val(), // 将 "volunteer_name" 替换为 "children_name"
            children_gender: $('input[name="children_gender"]:checked').val(), // 将 "volunteer_gender" 替换为 "children_gender"
            children_birthday: $('#children_birthday').val(), // 将 "volunteer_birthday" 替换为 "children_birthday"
            children_age: $('#children_age').val(), // 将 "volunteer_age" 替换为 "children_age"
            children_description: $('#children_description').val(), // 将 "volunteer_description" 替换为 "children_description"
            children_address: $('#children_address').val(), // 将 "volunteer_address" 替换为 "children_address"
            children_school: $('#children_school').val(), // 将 "volunteer_school" 替换为 "children_school"
            children_picture: $('#children_picture').val()
        }
        // 正则表达式，用于检查children_account是否包含字母和数字
        const alphanumericRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
        // 正则表达式，用于检查children_email是否符合邮箱格式
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!alphanumericRegex.test(params.children_password)) {
            return alert('儿童密码必须包含至少一个字母和一个数字，且至少6位长度！'); // 将 "志愿者密码" 替换为 "儿童密码"
        }
        if (!emailRegex.test(params.children_email)) {
            return alert('请输入有效的邮箱地址！');
        }

        if (!params.children_password) return alert('儿童密码不能为空！') // 将 "志愿者密码" 替换为 "儿童密码"
        if (!params.children_email) return alert('儿童邮箱不能为空！') // 将 "志愿者邮箱" 替换为 "儿童邮箱"

        $.ajax({
            type : "post",
            url : "modifyChildrenInfo", // 将 "modifyVolunteerInfo" 替换为 "modifyChildrenInfo"
            contentType: 'application/json',
            data : JSON.stringify(params),
            dataType : 'json',
            success: function (data) {
                if (data.msg == 'success') {
                    alert("修改成功！");
                    window.location.href = "/admin/queryChildrenList"; // 将 "queryVolunteerList" 替换为 "queryChildrenList"
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
