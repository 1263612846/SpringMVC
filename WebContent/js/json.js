$(function(){
	
	var username = $("#username");
	
	$("#1").click(function(){
		
		if($.trim(username.val()) == ""){
			alert("用户名不能为空！");
			username.focus();
		}else{
			
			$.ajax({
				url : "getInfo.action",
				data : "username=" + username.val(),
				success : function(data){
					var v = $.parseJSON(data);
					$("div").append(
						"<p>学号：" + v.num + "</p>" + 
						"<p>姓名：" + v.name + "</p>" + 
						"<p>年龄：" + v.age + "</p>" + 
						"<p>性别：" + v.sex + "</p>" + 
						"<p>学校：" + v.school + "</p>" + 
						"<p>专业：" + v.major + "</p>" + 
						"<p>用户名：" + v.username + "</p>" + 
						"<p>注册时间：" + v.regtime + "</p>"
					);
				}
			});
		
		}
		
	});
	
 	$("#2").click(function(){
		
		$.ajax({
			url : "getList.action",
			success : function(data){
				var json = $.parseJSON(data);
				$.each(json,function(i,v){
					$("table").append(
						"<tr>" + 
						"<td>" + v.num + "</td>" + 
						"<td>" + v.name + "</td>" + 
						"<td>" + v.age + "</td>" + 
						"<td>" + v.sex + "</td>" + 
						"<td>" + v.school + "</td>" + 
						"<td>" + v.major + "</td>" + 
						"<td>" + v.username + "</td>" + 
						"<td>" + v.regtime + "</td>" +
						"</tr>"
					);
				});
				$("table").show();
			}
		});
		
	});
	
});