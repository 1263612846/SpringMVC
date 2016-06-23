<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
body {
	text-align: center;
	margin-top: 30px;
}
</style>

<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/json.js"></script>
<title>JSON</title>
</head>
<body>
<p><input type="button" onclick="window.location=('Index.jsp')" value="INDEX"></p>
<p><b>请输入用户名</b></p>
<p><input id="username" type="text" name="username"></p>
<p><button id="1">查询</button>　<button id="2">查询列表</button></p>
<div></div>
<table align="center" width="80%" border="1" style="display:none">
<tr><td>学号</td><td>姓名</td><td>年龄</td><td>性别</td><td>学校</td><td>系别</td><td>用户名</td><td>注册时间</td></tr>
</table>
</body>
</html>