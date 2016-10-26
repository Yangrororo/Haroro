<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
	String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=soft";
	Connection conn=java.sql.DriverManager.getConnection(connectSQL, "sa", "");
	String sql = "insert into softstudent value (?,?,?,?)";
	PreparedStatement rs=conn.prepareStatement(sql);
	
	String number=request.getParameter("number");
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String major=request.getParameter("major");
	
	rs.setInt(1,Integer.parseInt(number));
	rs.setString(2,name);
	rs.setInt(3,Integer.parseInt(age));
	rs.setString(4,major);
	
	rs.executeUpdate();
	
	System.out.println(rs.toString());
	
	rs.close();
	conn.close();
%>
</body>
</html>
