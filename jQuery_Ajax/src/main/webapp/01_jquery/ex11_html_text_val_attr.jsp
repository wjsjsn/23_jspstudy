<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>text, html, val, attr</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// text() : 텍스트 내용 설정 및 반환
// html() : html에 적용된 내용 설정 및 반환
// val() : input type의 value 설정 및 반환
// attr() : 태그 속성 설정 및 반환
// append() : html에 적용된 내용을 추가
	$(document).ready(function(){	
		$("#btn1").on("click", function() {
			$("#p1").text("<h2>Hello jQuery</h2>");
		});
		
		$("#btn2").on("click", function() {
			$("#p1").html("<h2>Hello jQuery</h2>");
		});
		
		$("#btn3").on("click", function() {
			$("#p1").append("<h2 style='color:tomato'>Hello jQuery</h2>");
		});
		
		$("#btn4").on("click", function() {
//			$("#id").text("<h2>Hello jQuery</h2>");
			$("#id").val("Hello jQuery");
		});
		
		$("#btn5").on("click", function() {
			$("#w3").text("Naver").attr("href", "https://www.naver.com");
		});
	});
</script>
</head>
<body>
	<p id="p1">여기는 P태그 내용입니다.</p>
	<p><input type="text" id="id"></p>
	<p><a href="https://www.w3schools.com" id="w3">W3Schools.com</a></p>
	<hr>
	<button id="btn1">눌러주세요</button>
	<button id="btn2">눌러주세요</button>
	<button id="btn3">눌러주세요</button>
	<button id="btn4">눌러주세요</button>
	<button id="btn5">눌러주세요</button>
</body>
</html>