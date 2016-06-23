<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./js/css.css" type="text/css">
<title>修改信息</title>
</head>
<body>
<form action="edit.action?id=${id}" method="post">
<p>学　号：<input type="text" name="num" value="${num}"></p>
<p>姓　名：<input type="text" name="name" value="${name}"></p>
<p>年　龄：<input type="text" name="age" value="${age}"></p>
<p>性　别：<input type="radio" name="sex" checked="checked" value="男" >男
		<input type="radio" name="sex" value="女" >女</p>
<p>学　校：<input type="text" name="school" value="${school}"></p>
<p>系　别：<input type="text" name="major" value="${major}"></p>
<p><input type="submit" value="更新信息">　
   <input type="reset" value="重置">　
   <input type="button" onclick="window.location=('javascript:history.back(-1);')" value="返回"></p>
</form>
</body>
</html>