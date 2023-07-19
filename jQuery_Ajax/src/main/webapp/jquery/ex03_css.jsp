<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$(선택자).css() : css를 바로 적용</title>
<style type="text/css">
	.pink{background-color: pink;}
	#box{
		background-color: lavender;
		width: 100px;
		padding: 10px;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
// 자바 스크립트로 스타일 적용하기
	document.getElementById("java").style.background="snow";
	
	// .addClass 사용
	$("#jsp").addClass("pink");
	
	// .css("속성", "값")
	// 자식
	$("body>ul>li").css("color", "gray");
	// 자손
	$("ul li").css("background", "snow");
	
	$("#box").on("click", function() {
		$("#box").css("width", "+=200").css("height", "+=200");
	});
});
</script>
</head>
<body>
	<ul>
		<li id="java">JAVA</li>
		<li>WEB</li>
		<ul>
			<li id="jsp">JSP</li>
			<ul>
				<li>EL</li>
				<li>JSTL</li>
			</ul>
				<li>SPRING</li>
		</ul>
	</ul>
	<hr>
	<div id="box">눌러주세요</div>
</body>
</html>