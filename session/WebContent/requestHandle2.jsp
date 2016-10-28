<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试成绩</title>
</head>
<body>
	<%
		int examResults=0;//测试成绩
		String str1=request.getParameter("1");//获取单选按钮
		String str2=request.getParameter("2");
		String str3=request.getParameter("3");
		String str4=request.getParameter("4");
		if(str1==null)
			str1="";
		if(str2==null)
			str2="";
		if(str3==null)
			str3="";
		if(str4==null)
			str4="";
		if(str1.equals("B"))
			examResults++;
		if(str2.equals("A"))
			examResults++;
		if(str3.equals("D"))
			examResults++;
		if(str4.equals("C"))
			examResults++;
	%>
	<h3>您本次测试成绩是：</h3>
	<%=examResults/4*100 %>分
</body>
</html>