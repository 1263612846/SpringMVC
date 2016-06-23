<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./js/css.css" type="text/css">
<title>登录成功</title>
</head>
<body>
<p>登录成功！</p>
<p>您好！${name}，欢迎您的访问！</p>
<p><input type="button" onclick="window.location=('info.action?id=${id}')" value="查看个人信息">　
   <input type="button" onclick="window.location=('javascript:history.back(-1);')" value="返回"></p>
</body>
</html>