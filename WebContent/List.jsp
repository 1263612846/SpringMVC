<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/list.js"></script>

<style>
body {
	text-align: center;
	margin-top: 30px;
}
a {
	text-decoration: none;
}
</style>

<title>学生信息</title>
</head>
<body>
<table align="center" width="80%" border="1">
<tr>
	<td>学号</td><td>姓名</td><td>年龄</td><td>性别</td><td>学校</td><td>系别</td><td>用户名</td><td>注册时间</td><td>操作</td>
</tr>
<c:forEach items="${list}" var="l">
<tr>
<td>${l.num}</td>
<td>${l.name}</td>
<td>${l.age}</td>
<td>${l.sex}</td>
<td>${l.school}</td>
<td>${l.major}</td>
<td>${l.username}</td>
<td>${l.regtime}</td>
<td>
	<a href="delete.action?id=${l.id}">删除</a>
</td>
</tr>
</c:forEach>
</table>
<p><input type="button" onclick="window.location=('Index.jsp')" value="返回登录页面"></p>
</body>
</html>