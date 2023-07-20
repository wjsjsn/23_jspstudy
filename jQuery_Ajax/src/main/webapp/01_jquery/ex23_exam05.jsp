<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 줄 뉴스 - 자바스크립트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	var news = [
		"연합뉴스 걸핏하면 '고소·고발'…교사들, 학부모 악성민원에 멍든다",
		"해병대 '구명조끼 지급했어야 했다…현장 판단 조사 중'", 
		"일반열차 내일 운행재개…주택·도로 등 호우 피해 2천278건",
		"한미일 정상회의 내달 18일 美캠프데이비드 개최…안보협력 강화", 
		"與, '홍준표 징계' 무게…'엄중 분위기 반영한 결과 나올것'",
		"김은경 '민주, 계파간 소통하면 회생가능…개딸과도 소통해야'", 
		"'물 조심해라'…소방관-순직 해병 父子의 마지막 2분 통화",
		];
	var index = 0;
	setInterval(() => {
		$("#mydiv").text(news[index++]);
		if(index == news.length) index = 0;
	}, 2000);
});
</script>
</head>
<body>
	<div id="mydiv"></div>
	
</body>
</html>