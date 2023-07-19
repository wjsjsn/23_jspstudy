<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html 탐색 : children()</title>
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
		// children() : 선택한 요소의 마지막 요소 반환
		// find(요소) : 선택한 요소에서 요소까지 반환
	//	$("div").children().css({"color":"lavender", "border" : "5px solid lavender"});
		$("div").find("span").css({"color":"lavender", "border" : "5px solid lavender"});
	});
</script>
</head>
<body>
	<div class="myclass" style="width: 500px;">Mydiv
		<p>p(child)
			<span>span(grandchild)</span>
		</p>
		<p>p(child)
			<span>span(grandchild)</span>
		</p>
	</div>
</body>
</html>