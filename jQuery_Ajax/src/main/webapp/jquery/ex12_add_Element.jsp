<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요소 추가</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// append() : 요소의 끝에 내용 추가
// prepend() : 요소 시작 부분에 내용 추가
// before() : 요소 앞에 내용 삽입
// after() : 요소 뒤에 내용 삽입
	$(document).ready(function(){	
		$("#btn1").on("click", function() {
			$("p").append("<b>글자 뒤에 추가하기</b>");
		});
		
		$("#btn2").on("click", function() {
			$("ol").append("<li>리스트 뒤에 추가하기</li>");
		});
		
		$("#btn3").on("click", function() {
			$("p").prepend("<b>글자 앞에 추가하기</b>");
		});
		
		$("#btn4").on("click", function() {
			$("ol").prepend("<li>리스트 앞에 추가하기</li>");
		});
		
		$("#btn5").on("click", function() {
			$("p").before("<b>글자 앞에 추가하기</b>");
		});
		
		$("#btn6").on("click", function() {
			$("ol").before("<li>리스트 앞에 추가하기</li>");
		});
		
		$("#btn7").on("click", function() {
			$("p").after("<b>글자 뒤에 추가하기</b>");
		});
		
		$("#btn8").on("click", function() {
			$("ol").after("<li>리스트 뒤에 추가하기</li>");
		});
	});
</script>
</head>
<body>
	<p>한국 ICT 인재 개발원1</p>
	<p>한국 ICT 인재 개발원2</p>
	<p>한국 ICT 인재 개발원3</p>
	<ol>
		<li>HTML</li>
		<li>CSS</li>
		<li>JavaScript</li>
	</ol>
	<hr>
		<button id="btn1">append text</button>
		<button id="btn2">append list item</button>
		<button id="btn3">prepend text</button>
		<button id="btn4">prepend list item</button>
		<button id="btn5">before text</button>
		<button id="btn6">before list item</button>
		<button id="btn7">after text</button>
		<button id="btn8">after list item</button>
</body>
</html>