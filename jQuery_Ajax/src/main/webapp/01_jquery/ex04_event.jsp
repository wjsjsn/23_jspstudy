<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// 마우스 이벤트 : click( .on(), .bind()), dbclick(), mouseover(), mouseout(), .hover(), .toggle()
// 키보드 이벤트 : keypress, keyup, keydown
// form 이벤트 : submit, change, focus
	$(document).ready(function(){
		// 클릭 이벤트
		$("#p1").on("click", function() {
			alert("클릭 성공");
		});
		
		$("#p2").bind("click", function() {
			alert("bind 클릭 성공");
		});
		
		// 마우스 이벤트
// 		$("#img").hover(function() {
// 			// 속성 변경 => attr
// 			$(this).attr("src", "../images/pic_bulbon.gif");
// 		})
		
// 		$("#img").mouseover(function() {
// 			$(this).attr("src", "../images/pic_bulbon.gif");
// 		})
		
// 		$("#img").mouseout(function() {
// 			$(this).attr("src", "../images/pic_bulboff.gif");
// 		})  

// 안됨(찾아보기)
//  $("#p3").toggle(function() {
// 	 $("#img").attr("src", "../images/pic_bulbon.gif")
// }, function() {
// 	$("#img").attr("src", "../images/pic_bulboff.gif")
// });
		
		// keyup : 글자를 입력하면
		// val() = value => 보통 input에서 사용
		$("#name").keyup(function() {
			var name = $(this).val();
			if(name.length >= 4)
			alert(name);
		});
		 
		// 체크박스 : change(), select(), radio
		$("#chk").change(function() {
// 			var str = $("#addr").val();
// 			$("#addr2").val(str);
			var str =  $("#addr").val();
			if($(this).is(":checked")){ // .is(":checked") => 체크가 된 상태인가?
				$("#addr2").val(str);
			}else{
				$("#addr2").val("");
			}
		});
		 
		 // 라디오
		 $("input[name = gender]").change(function() {
			var res = $(this).val();
		 $("#res").text(res);
		});
		 
		 $("#pwd2").keyup(function() {
			if($("#pwd").val() == $("#pwd2").val()){
				$("#s1").html("<b>암호가 맞습니다.</b>");
			}else{
				$("#s1").html("<b>암호가 틀렸습니다.</b>");
			}  야 민지님이 만워 ㄴ 주셧어
		});
	});
</script>
</head>
<body>
	<p><span id="p1">이벤트 처리</span></p>
	<p><span id="p2">이벤트 처리</span></p>
	<p><span id="p3">이벤트 처리</span></p>
	<p><img id="img" src="../images/pic_bulboff.gif"></p>
	<p><input type="text" name="name" id="name"></p>
	<hr>
	
	<p>주소 : <input type="text" name="addr" id="addr"></p>
	<p><input type="checkbox" id="chk"> 상동</p>
	<p>주소 : <input type="text" name="addr2" id="addr2"></p>
	<hr>
	
		<p>성별 : <input type="radio" name="gender"  value="여자">여자
		              <input type="radio" name="gender"  value="남자">남자		
		              <input type="radio" name="gender"  value="외국인">외국인		
		</p>
		<div id="res"></div>
		
	<p>비밀번호 : <input type="password" name="pwd" id="pwd"></p>
	<p>비밀번호 확인 : <input type="password" name="pwd2" id="pwd2"></p>
	<p><span id="s1"></span></p>
</body>
</html>