$(function(){
	
	var username = $("#username");
	var password = $("#password");
	
	$("input#login").click(function(){
		if($.trim(username.val()) == "") {
			alert("请输入用户名！");
			username.focus();
			return false;
		}
		if($.trim(password.val()) == "") {
			alert("请输入密码！");
			password.focus();
			return false;
		}
	});
	
});