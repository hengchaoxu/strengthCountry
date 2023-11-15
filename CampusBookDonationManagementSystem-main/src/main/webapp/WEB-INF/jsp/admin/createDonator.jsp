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
        <div class="page-header"><h1>创建捐赠者-信息填写</h1></div>
        <div class="row">
          <div class="col-xs-12">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者账号 </label>
                <div class="col-sm-9">
                  <input type="text" id="donator_account" name="donator_account" placeholder="请填写捐赠者账号" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者密码 </label>
                <div class="col-sm-9">
                  <input type="text" id="donator_password" name="donator_password" placeholder="请填写捐赠者密码" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者邮箱</label>
                <div class="col-sm-9">
                  <input type="text" id="donator_email" name="donator_email" placeholder="请填写捐赠者邮箱" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者姓名</label>
                <div class="col-sm-9">
                  <input type="text" id="donator_name" name="donator_name" placeholder="请填写捐赠者姓名" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者性别</label>
                <div class="col-sm-9">
                  <input type="radio" name="donator_gender" value="男"  />男&nbsp;&nbsp;
                  <input type="radio" name="donator_gender" value="女"  />女
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者生日</label>
                <div class="col-sm-9">
                  <div class="col-sm-9">
                    <input type="date" id="donator_birthday" name="donator_birthday" placeholder="请填写捐赠者的生日" class="col-xs-10 col-sm-5" />
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者年龄</label>
                <div class="col-sm-9">
                  <input type="text" id="donator_age" name="donator_age" placeholder="请填写捐赠者的生日" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者地址</label>
                <div class="col-sm-9">
                  <input type="text" id="donator_address" name="donator_address" placeholder="请填写捐赠者的地址" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者学校</label>
                <div class="col-sm-9">
                  <input type="text" id="donator_school" name="donator_school" placeholder="请填写捐赠者的学校" class="col-xs-10 col-sm-5" />
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 捐赠者个人描述</label>
                <div class="col-sm-9">
                  <input type="text" id="donator_description" name="donator_description" placeholder="请填写捐赠者的个人描述" class="col-xs-10 col-sm-5" row="4"/>
                </div>
              </div>
              <div class="clearfix form-actions">
                <div class="col-md-offset-3 col-md-9">
                  <button class="btn btn-info" type="button" id="btn_submit" onclick="create_donator('')">
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
<script type="text/javascript">
  function create_donator() {
    let params = {
      donator_account: $('#donator_account').val(),
      donator_password: $('#donator_password').val(),
      donator_email: $('#donator_email').val(),
      donator_name: $('#donator_name').val(),
      donator_gender: $('input[name="donator_gender"]:checked').val(),
      donator_birthday: $('#donator_birthday').val(),
      donator_age: $('#donator_age').val(),
      donator_description: $('#donator_description').val(),
      donator_address: $('#donator_address').val(),
      donator_school: $('#donator_school').val(),
    }
    // 正则表达式，用于检查donator_account是否包含字母和数字
    const alphanumericRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
    // 正则表达式，用于检查donator_email是否符合邮箱格式
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (!alphanumericRegex.test(params.donator_password)) {
      return alert('捐赠者密码必须包含至少一个字母和一个数字，且至少6位长度！');
    }
    if (!emailRegex.test(params.donator_email)) {
      return alert('请输入有效的邮箱地址！');
    }

    if (!params.donator_account) return alert('捐赠者账户不能为空！')
    if (!params.donator_password) return alert('捐赠者密码不能为空！')
    if (!params.donator_email) return alert('捐赠者邮箱不能为空！')

    $.ajax({
      type : "post",
      url : "addDonatorInfo",
      contentType: 'application/json',
      data : JSON.stringify(params),
      dataType : 'json',
      success: function (data) {
        if (data.msg == 'success') {
          alert("新增成功！");
          window.location.href = "/admin/queryDonatorList";
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
