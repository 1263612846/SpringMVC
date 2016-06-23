<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./js/css.css" type="text/css">
<title>信息</title>
</head>
<body>
<p>用户名：${username}</p>
<p>密　码：${password}</p>
<br>
<p>学　号：${num}</p>
<p>姓　名：${name}</p>
<p>年　龄：${age}</p>
<p>性　别：${sex}</p>
<p>学　校：${school}</p>
<p>系　别：${major}</p>
<br>
<p><input type="button" onclick="window.location=('viewEdit.action?id=${id}')" value="修改个人信息">　
   <input type="button" onclick="window.location=('viewEditPassword.action?id=${id}')" value="修改密码"></p>
<p><input type="button" onclick="window.location=('Index.jsp')" value="返回登录界面">　
   <input type="button" onclick="window.location=('javascript:history.back(-1);')" value="返回"></p>
</body>
</html>