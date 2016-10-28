<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理登录页面的数据</title>
</head>
<body bgcolor="pink">
	<%
		//设置请求的编码，用于解决中文乱码问题
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("userName");
		String password=request.getParameter("password");
		if(request.getParameter("validationCode1").equals(request.getParameter("validationCode"))){
			if(name.equals("lixiang")&&(password.equals("666666"))){
				//把用户名保存到session中
				session.setAttribute("userName",name);
				response.sendRedirect("main.jsp");	
			}else{
				response.sendRedirect("login.jsp");
			}
		}else{
			response.sendRedirect("login.jsp");
		}
		
	%>

</body>
</html>