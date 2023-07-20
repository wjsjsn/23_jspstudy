<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		background-color: lavender;
	}
	
	#movie {
		position: absolute;
	}
	
	#movie2 {
		position: absolute;
		left: 320px;
	}
	
	#close {
		padding: 5px;
		text-align: right;
	}
	
	#close2 {
		padding: 5px;
		text-align: right;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		$("#close").on("click", function() {
			$("#movie").css("display", "none");
		});
		
		$("#close2").on("click", function() {
			$("#movie2").css("display", "none");
		});
	});
</script>
</head>
<body>
	<div id="movie">
		<img alt="" src="../images/IMG_1221.png">
		<div>
		<span id="close" style="background-color: lightyellow">오늘은 그만 보기</span>
		<span id="close" style="background-color: lightyellow">닫기</span>
		</div>
	</div>
	<div id="movie2">
		<img alt="" src="../images/IMG_1238.png">
		<div>
		<span id="close2" style="background-color: snow">오늘은 그만 보기</span>
		<span id="close2" style="background-color: snow">닫기</span>
	</div>
	</div>
	<div>
		<h2>ICT 사진관</h2>
		<div>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
		</div>
	</div>
</body>
</html>