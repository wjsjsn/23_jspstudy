<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html 탐색 : children(), find()</title>
<style type="text/css">
	.myclass *{
		display: block;
		border: 1px solid pink;
		padding: 5px;
		margin: 10px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		// children(selector) : 어떤 요소의 자식 요소를 선택
		// find(selector) : 어떤 요소의 하위 요소 중 특정 요소를 찾을 때 사용
		
		// div 자식 요소 중 p 요소 선택(여러 개일때는 복수 가능)
	//	$("div").children("p").css({"color":"lavender", "border" : "5px solid lavender"});
		
		$("div").children(".p1").css({"background":"snow"});
// 		$("div").children(".p2").css({"color":"lavender", "border" : "5px solid lavender"});

 		$("div").find(".p1").css({"color":"lavender", "border" : "5px solid lavender"});
	});
</script>
</head>
<body>
	<div class="myclass" style="width: 500px;">Mydiv
		<p class="p1">p(child)
			<span>span(grandchild)</span>
		</p>
		<p class="p2">p(child)
			<span>span(grandchild)</span>
		</p>
	</div>
</body>
</html>