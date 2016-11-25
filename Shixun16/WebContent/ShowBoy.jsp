<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>男朋友展示页面</title>
<jsp:useBean id="myBoyFriend" class="com.BoyFriend" scope="session"/>
<jsp:setProperty property="*"name="myBoyFriend"/>
</head>
<body>
<p>男朋友的颜值：<jsp:getProperty property="myBoyFriend" name="yanzhi"/>分</p>
<p>男朋友的体重：<jsp:getProperty property="myBoyFriend" name="tizhong"/>kg</p>
<p>男朋友的身高：<jsp:getProperty property="myBoyFriend" name="shengao"/>cm</p>
<p>男朋友的怒值：<jsp:getProperty property="myBoyFriend" name="nuzhi"/></p>
<p>男朋友的爱值：<jsp:getProperty property="myBoyFriend" name="ai"/></p>
<p><a href="status.jsp">爱情考验，开始测试！！！</a></p>

</body>
</html>