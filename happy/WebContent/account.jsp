<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session对象应用实例3——结账</title>
</head>
<body>
	<%
		String gn=request.getParameter("goodsName");
		session.setAttribute("goods",gn);
		String 客户=(String)session.getAttribute("customer");
		String 姓名=(String)session.getAttribute("name");
		String 商品=(String)session.getAttribute("goods");
	%>
	<h3>结账信息：</h3>
	<hr>
	<%=客户 %>的姓名是：<%=姓名 %>
	<br>
	你购买的商品是：<%=商品 %>

</body>
</html>