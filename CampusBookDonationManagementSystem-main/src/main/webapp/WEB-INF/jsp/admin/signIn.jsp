<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>物资捐赠管理系统</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	</head>
	<body class="login_bj">
		<br />
		<br />
		<div class="zhuce_body">
			<br />
			<br />
			<br />
			<br />
			<h1 style="text-align: center;font-size: 40px;font-family: '华文行楷';color: floralwhite;">物资捐赠管理系统</h1>
			<div class="zhuce_kong login_kuang">
				<div class="zc">
					<div class="bj_bai">
						<h3>注册</h3>
						<span style="color: red">${msg }</span>
						<div class="form-group">
							<input name="u_account" id="u_account" type="text" class="kuang_txt" placeholder="请输入账号">
							<input name="u_pwd" id="u_pwd" type="password" class="kuang_txt" placeholder="请输入密码"><br />
							<!-- <a href="#">忘记密码？</a> -->
							<input name="u_role" type="radio" value="0" />管理员&nbsp;
							<input name="u_role" type="radio" value="1" checked="checked" />普通用户
							<br /><br />
							<input name="注册" type="submit" class="btn_zhuce" value="注册" onclick="SignIn()">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script type="text/javascript">


			function SignIn() {
			var u_account = $('#u_account').val();
			var u_pwd = $('#u_pwd').val();
			var u_role = $('input[name="u_role"]:checked').val();

				// 正则表达式，用于检查manager_account是否包含字母和数字
				const alphanumericRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$/;
				if (!alphanumericRegex.test(u_pwd)) {
					return alert('志愿者密码必须包含至少一个字母和一个数字，且至少6位长度！');
				}

				if (u_account == null || u_account == '') {
			       alert('请填写账户');
			        return false;
		        }

			     if (u_pwd == null || u_pwd == '') {
			         alert('请填写密码');
			          return false;
		         }
				if (u_role == null || u_role == '') {
					alert('请选择角色');
					return false;
				}

			$.ajax({
			type : "post",
			url : "addUserInfo",
			data : {"u_account":u_account,"u_pwd":u_pwd,"u_role":u_role},
			dataType : 'json',
			success : function(data){
			if (data.msg == 'success') {
			alert("注册成功！");
			window.location.href="toLoginIndex";
		} else {
			alert("注册失败,该用户已存在！");
		}
		},
			error : function() {
			alert('注册失败！');
		}
		});
		}
	</script>
</html>