<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	
	var text = $("input");
	
	$("#1").click(function(){
		
		$.ajax({
			type : "GET",
			url : "get.action",
			data : "text=" + text.val(),
			success : function(data){
				alert(data);
			}
		});
		
	});
	
	$("#2").click(function(){
		
		$.ajax({
			type : "POST",
			url : "post.action",
			data : "text=" + text.val(),
			success : function(data){
				alert(data);
			}
		});
		
	});
	
});
</script>

<!-- css -->
<style>
body {
	text-align: center;
	margin-top: 30px;
}
</style>

<title>TestRESTful</title>
</head>
<body>
<p><b>点击不同的按钮</b><br><b>发送不同的请求</b></p>
<p><input type="text" name="text"></p>
<p><button id="1">GET</button>　<button id="2">POST</button>
</body>
</html>