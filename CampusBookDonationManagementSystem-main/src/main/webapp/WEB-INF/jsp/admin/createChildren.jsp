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
                <div class="page-header"><h1>创建儿童-信息填写</h1></div> <!-- 将 "志愿者" 替换为 "儿童" -->
                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童账号 </label> <!-- 将 "志愿者账号" 替换为 "儿童账号" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_account" name="children_account" placeholder="请填写儿童账号" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童密码 </label> <!-- 将 "志愿者密码" 替换为 "儿童密码" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_password" name="children_password" placeholder="请填写儿童密码" class="col-xs-10 col-sm-5" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童邮箱</label> <!-- 将 "志愿者邮箱" 替换为 "儿童邮箱" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_email" name="children_email" placeholder="请填写儿童邮箱" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_email" 替换为 "children_email" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童姓名</label> <!-- 将 "志愿者姓名" 替换为 "儿童姓名" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_name" name="children_name" placeholder="请填写儿童姓名" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_name" 替换为 "children_name" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童性别</label> <!-- 将 "志愿者性别" 替换为 "儿童性别" -->
                                <div class="col-sm-9">
                                    <input type="radio" name="children_gender" value="男" />男&nbsp;&nbsp; <!-- 将 "volunteer_gender" 替换为 "children_gender" -->
                                    <input type="radio" name="children_gender" value="女" />女
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童生日</label> <!-- 将 "志愿者生日" 替换为 "儿童生日" -->
                                <div class="col-sm-9">
                                    <div class="col-sm-9">
                                        <input type="date" id="children_birthday" name="children_birthday" placeholder="请填写儿童的生日" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_birthday" 替换为 "children_birthday" -->
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童年龄</label> <!-- 将 "志愿者年龄" 替换为 "儿童年龄" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_age" name="children_age" placeholder="请填写儿童的生日" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_age" 替换为 "children_age" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童地址</label> <!-- 将 "志愿者地址" 替换为 "儿童地址" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_address" name="children_address" placeholder="请填写儿童的地址" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_address" 替换为 "children_address" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童学校</label> <!-- 将 "志愿者学校" 替换为 "儿童学校" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_school" name="children_school" placeholder="请填写儿童的学校" class="col-xs-10 col-sm-5" /> <!-- 将 "volunteer_school" 替换为 "children_school" -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 儿童个人描述</label> <!-- 将 "志愿者个人描述" 替换为 "儿童个人描述" -->
                                <div class="col-sm-9">
                                    <input type="text" id="children_description" name="children_description" placeholder="请填写儿童的个人描述" class="col-xs-10 col-sm-5" row="4" /> <!-- 将 "volunteer_description" 替换为 "children_description" -->
                                </div>
                            </div>

                            <!-- 其他表单项的替换类似，依次替换即可 -->
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="button" id="btn_submit" onclick="create_children('')">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        提交信息
                                    </button> &nbsp; &nbsp; &nbsp;
                                    <button class="btn" type="reset">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        取消
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
</body>
<script type="text/javascript">
    function create_children() { // 将 "create_volunteer" 替换为 "create_children"
        let params = {
            children_account: $('#children_account').val(), // 将 "volunteer_account" 替换为 "children_account"
            children_password: $('#children_password').val(), // 将 "volunteer_password" 替换为 "children_password"
            children_email: $('#children_email').val(), // 将 "volunteer_email" 替换为 "children_email"
            children_name: $('#children_name').val(), // 将 "volunteer_name" 替换为 "children_name"
            children_gender: $('input[name="children_gender"]:checked').val(), // 将 "volunteer_gender" 替换为 "children_gender"
            children_birthday: $('#children_birthday').val(), // 将 "volunteer_birthday" 替换为 "children_birthday"
            children_age: $('#children_age').val(), // 将 "volunteer_age" 替换为 "children_age"
            children_description: $('#children_description').val(), // 将 "volunteer_description" 替换为 "children_description"
            children_address: $('#children_address').val(), // 将 "volunteer_address" 替换为 "children_address"
            children_school: $('#children_school').val(), // 将 "volunteer_school" 替换为 "children_school"
        }
        // 正则表达式，用于检查manager_account是否包含字母和数字
        const alphanumericRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
        // 正则表达式，用于检查manager_email是否符合邮箱格式
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!alphanumericRegex.test(params.children_password)) { // 将 "volunteer_password" 替换为 "children_password"
            return alert('儿童密码必须包含至少一个字母和一个数字，且至少6位长度！'); // 将 "志愿者密码" 替换为 "儿童密码"
        }
        if (!emailRegex.test(params.children_email)) { // 将 "volunteer_email" 替换为 "children_email"
            return alert('请输入有效的邮箱地址！'); // 将 "志愿者邮箱" 替换为 "儿童邮箱"
        }

        if (!params.children_account) return alert('儿童账户不能为空！') // 将 "volunteer_account" 替换为 "children_account"
        if (!params.children_password) return alert('儿童密码不能为空！') // 将 "volunteer_password" 替换为 "children_password"
        if (!params.children_email) return alert('儿童邮箱不能为空！') // 将 "volunteer_email" 替换为 "children_email"

        $.ajax({
            type : "post",
            url : "addChildrenInfo", // 将 "addVolunteerInfo" 替换为 "addChildInfo"
            contentType: 'application/json',
            data : JSON.stringify(params),
            dataType : 'json',
            success: function (data) {
                if (data.msg == 'success') {
                    alert("新增成功！");
                    window.location.href = "/admin/queryChildrenList"; // 将 "queryVolunteerList" 替换为 "queryChildrenList"
                } else {
                    alert("新增失败，该用户已存在");
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
