<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/login.js"></script>
<script type="text/javascript" src="./js/reg.js"></script>
<link rel="stylesheet" href="./js/css.css" type="text/css">
<title>主页</title>
</head>
<body>
<form action="login.action" method="post">
<p>用户名：<input id="username" type="text" name="username"></p>
<p>密　码：<input id="password" type="password" name="password"></p>
<p><input id="login" type="submit" value="登录">　
   <input type="reset" value="重置"></p>
</form>
<br>
<p><input type="button" onclick="window.location=('list.action')" value="查看全部学生信息">　
   <input type="button" onclick="window.location=('JSONTest.jsp')" value="JSON"></p>
<br>
<p>用户名：<input class="username" type="text" name="username">　<font size="2.8px"></font></p>
<p>密　码：<input class="password" type="password" name="password"></p>
<p><button id="reg">注册</button></p>
</body>
</html>