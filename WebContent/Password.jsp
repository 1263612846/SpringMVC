<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<script type="text/javascript" src="./js/jquery.js"></script>
<link rel="stylesheet" href="./js/css.css" type="text/css">
<script type="text/javascript">
$(function(){
	
	var id = ${id};
	
	var p1 = $("#1");
	var p2 = $("#2");
	
	$("button").click(function(){
		if($.trim(p1.val()) == "") {
			alert("请输入新密码！");
			p1.focus();
			return false;
		}
		if($.trim(p2.val()) == "") {
			alert("请输入密码确认！");
			p2.focus();
			return false;
		}
		if(p1.val() != p2.val()) {
			alert("新密码与密码确认不同！")
			p2.focus();
			return false;
		}else{
			
			$.ajax({
				url : "editPassword.action",
				data : "id=" + id + "&password=" + p1.val(),
				success : function(data){
					alert(data);
				}
			});
			
		}
		
	});
	
});
</script>
</head>
<body>
<p>新　密　码：<input id="1" type="password" name="password"></p>
<p>新密码确认：<input id="2" type="password"></p>
<p><button>确认修改</button>　
   <input type="button" onclick="window.location=('Index.jsp')" value="返回登录页面">　
   <input type="button" onclick="window.location=('javascript:history.back(-1);')" value="返回"></p>
</body>
</html>