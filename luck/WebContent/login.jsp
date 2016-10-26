<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<style>
	body{font-size:16px;}
</style>
<script type="text/javascript">
	function mycheck(){
		//判断用户名是否为空
		if(form1.userName.valus==""){
			alert("用户名不能为空，请输入用户名！");
			form1.userName.focus();
			return;
		}
		//判断密码是否为空
		if(form1.password.value==""){
			alert("密码不能为空，请输入密码！");
			form1.password.focus();
			return;
		}
		//判断验证码是否为空
		if(form1.validationCode.value==""){
			alert("验证码不能为空，请输入验证码！");
			form1.validationCode.focus();
			return;
		}
		//判断验证码是否正确
		if(form1.validationCode.value!=form1.validationCode.value){
			alert("请输入正确的验证码！！");
			form1.validationCode.focus();
			return;
		}
		form1.submit1();
	}
</script>
</head>
<body bgcolor="pink">
	<form action="loginCheck.jsp" name="form1" method="post">
		用户名:<input type="text" name="userName" size="16">
		<br>
		密&nbsp;&nbsp;&nbsp;&nbsp;码:
		<input type="password" name="password" size="18">
		<br>
		验证码:<input type="text" name="validationCode" onKeyDown="if(event.
		keyCode==13){form1.submit.focus();}" size="6">
		<%
			int intmethod1=(int) ((((Math.random())*11))-1);
			int intmethod2=(int) ((((Math.random())*11))-1);
			int intmethod3=(int) ((((Math.random())*11))-1);
			int intmethod4=(int) ((((Math.random())*11))-1);
			//将得到的随机数进行链接
			String intsum=intmethod1+""+intmethod2+intmethod3+intmethod4;	
		%>
		<!--设置隐藏域，验证比较时使用-->\
		<input type="hidden" name="validationCode1" value="<%=intsum%>">
		<!-- 将图片名称与得到的随机数相同的图片显示在页面上 -->
		<img src="../image/<%=intmethod1 %>.gif">
		<img src="../image/<%=intmethod2 %>.gif">
		<img src="../image/<%=intmethod3 %>.gif">
		<img src="../image/<%=intmethod4 %>.gif">
	<br>
	<input type="submit" name="submit1" value="登录" onClick="mycheck()">
	&nbsp;
	<input type="reset" value="重置">
	</form>

</body>
</html>