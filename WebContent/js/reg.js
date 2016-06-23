$(function(){
	
	var username = $(".username");
	var password = $(".password");
	
	var f = $("font");
	
	username.focus(function(){
		f.html("");
	});
	
	username.blur(function(){
		
		if($.trim(username.val()) == ""){
			f.css("color","red");
			f.html("用户名不能为空！");
			return false;
		}else{
		
			$.ajax({
				url : "check.action",
				data : "username=" + username.val(),
				success : function(data){
					if(data == "exist"){
						f.css("color","red");
						f.html("用户名已被占用，请更换用户名！");
						return false;
					}else{
						f.css("color","green");
						f.html("恭喜您，用户名可用！");
						return false;
					}
				}
			});
			
		}	
	});
	
	$("#reg").click(function(){
		if($.trim(username.val()) == "") {
			alert("请输入用户名！");
			username.focus();
			return false;
		}else
		if ($.trim(password.val()) == "") {
			alert("请输入密码！");
			password.focus();
			return false;
		}else{
			
			$.ajax({
				
				url : "reg.action",
				data : "username=" + username.val() + "&password=" + password.val(),
				success : function(data){
					alert(data);
				}
				
			});
			
		}
	});
	
})