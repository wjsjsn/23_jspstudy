<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chain</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// 동일한 요소에 여러 jQuery 명령을 차례대로 실행할 수 있는 연결 기술
// .end() : chain을 종료시키는 명령어
	$(document).ready(function(){	
		$("#btn").on("click", function() {
			$("#p1").css("color", "tomato")
			.hide(600)
			.show(600, function() {
			$(this).css("background", "snow")
			})
//			.end()
			.css("background", "lavender")
		});
	});
</script>
</head>
<body>
	<p id="p1">눌러주시면 해당 내용은 사라짐</p>
	<button id="btn">눌러주세요</button>
</body>
</html>