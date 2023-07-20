<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html 탐색 : siblings(), next(), prev()</title>
<style type="text/css">
	.s1 *{
		display: block;
		border: 2px solid darkgray;
		color: darkgray;
		padding: 5px;
		margin: 15px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// siblings([selector]) : 부모 태그가 같은 형제 요소 => 하나일 경우 자신을 제외, 
//                                                                          두 개 이상일 경우 제외되지 x
// prev([selector]) : 이전 형제 요소
// next([selector]) : 다음 형제 요소
	$(document).ready(function(){	
//		$("h2").siblings().css({"color" : "pink", "border" : "2px solid pink"});	
//      h2 요소의 형제 요소 중 p 태그만 추출
		$("h2").siblings("p").css({"color" : "pink", "border" : "2px solid pink"});	
		
		$("h2").prev().css({"color" : "lightblue", "border" : "2px solid lightblue"});
		$("h2").next().css({"color" : "lavender", "border" : "2px solid lavender"});
	});
</script>
</head>
<body class="s1">
	<div>
		<p>p</p>
		<span>span</span>
		<h2>h2</h2>
		<h3>h3</h3>
		<p>p</p>
	</div>
</body>
</html>