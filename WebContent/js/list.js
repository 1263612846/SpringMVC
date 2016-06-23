$(function(){
	
	$("a").mouseover(function(){
		$(this).css("background-color","pink");
	});
	
	$("a").mouseout(function(){
		$(this).css("background-color","");
	});
	
});