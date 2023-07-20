<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {
	margin: 0px;
	padding: 0px;
	}
	
	img {
		border: none;
		vertical-align: top;
	}
	
	li img {
		width: 200px;
	}
	
	ul li {
		list-style: none;
		float: left;
		width: 200px;
	}
	
	h2{
		text-align: center;
	}
	
	#banner_wrap{
		width: 600px;
		padding: 20px;
		margin: 0 auto;
		border: 1px solid gray;
	}
	
	#frame {
		width: 600px;
		overflow: hidden;
		position: relative;
		margin: 10px auto;
	}
	
	#banner {
		width: 500000000px;
	}
	
	#img {
		text-align: center;
	}
</style>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		var list = $("#banner");
		var show_num = 3; // 화면에 노출되는 그림의 수
		var num = 0; // 이전, 다음 버튼 클릭하면 증감되는 변수
		var total = $("li").length; // li의 개수(5)
		var li_width = $("li:first").width(); // 200px
		
		// li 태그 중 index 값이 3보다 작아지면 li 태그를 복사해 붙여넣기
		// gt, eq, lt
		var copyObj = $("li:lt(" + show_num + ")").clone();
		list.append(copyObj);
		
		$(".next").on("click", function() {
			if(num == total){
				num = 0;
				list.css("margin-left", num);
			}
			num ++;
			list.stop().animate({marginLeft : -li_width * num + "px"}, 400);
			return false;
		});
		
		$(".prev").on("click", function() {
			if(num == 0){
				num = total;
				list.css("margin-left", -li_width * num + "px");
			}
			num --;
			list.stop().animate({marginLeft : -li_width * num + "px"}, 400);
			return false;
		});
	});
</script>
</head>
<body>
	<h2>롤링 슬라이드 배너 만들기</h2>
	<br><br><br><br><br>
	<div id="banner_wrap">
		<div id="frame">
			<ul id="banner">
				<li><a href="#"><img alt="" src="../images/IMG_1238.png"></a></li>
				<li><a href="#"><img alt="" src="../images/IMG_1221.png"></a></li>
				<li><a href="#"><img alt="" src="../images/제목 없음.png"></a></li>
				<li><a href="#"><img alt="" src="../images/pic_bulboff.gif"></a></li>
				<li><a href="#"><img alt="" src="../images/pic_bulbon.gif"></a></li>
			</ul>
		</div>
		<p id="img">	
			<a href="#" class="prev"><img alt="" src="../images/prev_btn.png"></a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" class="next"><img alt="" src="../images/next_btn.png"></a>
		</p>
	</div>
</body>
</html>