<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addClass : 스타일을 지정된 클래스 추가(적용)</title>
<style type="text/css">
.tomato {
	background-color: tomato;
}

.snow {
	background-color: snow;
}

.mystyle {
	color: gray;
}

.mystyle2 {
	color: pink;
	font-size: 20px;
	font-weight: bold;
}

.mystyle3{
	background-color: lavender;
	color: gray;
	font-size: 20px;
	font-weight: bold;	
}

.mystyle4{
	background-color: gray;
	color: lavender;
}

.mystyle5{
	background-color: gray;
	color: lightyellow;
}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	function send_go() {
		alert("hi");
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		// style에서 만든 snow를 적용
		//	$("#k1").addClass("snow").addClass("mystyle");
		$("#k1").addClass("snow mystyle2");

		// 이벤트 처리
		// 	$("#k3").click(function () {
		// 		alert("Hello jQuery");
		// 	})
		$("#k3").on("click", function() {
		 	alert("Handler for 'click' called.");
		});
		
		// a 요소 전체 적용
		$("a").addClass("snow");
		
		// a 요소 중 첫번째 적용
		$("a:first").addClass("mystyle");
		
		// a 요소 중 마지막 적용
		$("a:last").addClass("mystyle2");
		
		// 요소[속성] : 해당 속성이 있는 요소
		$("a[href]").addClass("mystyle3");
		
		// 요소[속성 = '값'] : 해당 속성이 값과 일치하는 요소
		$("a[href = 'https://www.daum.net']").addClass("mystyle4");
		
		// 요소[속성 ^= '값'] : 값으로 시작하는 요소
		$("a[href ^= 'mailto:']").addClass("mystyle4");
		
		// 요소[속성 $= '값'] : 값으로 끝나는 요소
		$("a[href $= 'net']").addClass("mystyle5");
		
		// 요소[속성 *= '값'] : 값을 포함하는 요소
	});
</script>
</head>
<body>
	<div style="background-color: lightyellow;" onclick="send_go()">안녕하세요
		jQuery-1입니다.</div>
	<div class="tomato" onclick="send_go()">안녕하세요 jQuery-2입니다.</div>
	<div id="k1">안녕하세요 jQuery-3입니다.</div>
	<div id="k2">안녕하세요 jQuery-4입니다.</div>
	<div id="k3">안녕하세요 jQuery-5입니다.</div>
	<hr>
	<a href="https://www.naver.com">네이버</a>
	<a href="https://www.google.com">구글</a>
	<a href="https://www.daum.net">다음</a>
	<a href="mailto:pcl8205@naver.ocm">네이버 메일</a>
	<a href="mailto:pcl820567@gmail.ocm">구글 메일</a>
	<a href="mailto:pcl8205@daum.net">다음 메일</a>
</body>
</html>