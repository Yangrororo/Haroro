<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>系统主页面</title>
</head>
<body bgcolor="pink">
	<%
		//获取保存在session中的用户名
		String name=(String) session.getAttribute("userName");
	%>
	您好！<%=name %>,欢迎您访问！<br>
	<a href="exit.jsp">[退出系统]</a>

</body>
</html>