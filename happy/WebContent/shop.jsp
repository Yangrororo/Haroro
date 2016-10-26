<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session对象应用实例3——购物</title>
</head>
<body>
	<%
		String na=request.getParameter("loginName");
		session.setAttribute("name",na);
	%>
	<h3>请输入想购买的商品：</h3>
	<hr>
	<form action="account.jsp" method="get">
	要购买的商品：<input type="text" name="goodsName">
	<input type="submit" value="购物">
	</form>

</body>
</html>