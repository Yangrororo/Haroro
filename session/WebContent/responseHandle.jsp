<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>数据处理页面</title>
</head>
<body>
	<%
		String address=request.getParameter("link");
		if(address!=null)
		{
			if(address.equals("qhdxcbs"))
				response.sendRedirect("http://www.tup.tsinghua.edu.cn/");
			else
				response.sendRedirect("http://www.edu.cn/");
		}
	%>
</body>
</html>