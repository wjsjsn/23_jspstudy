<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html 탐색 : parent()</title>
<style type="text/css">
	.ancestors *{
		display: block;
		border: 2px solid tomato;
		color: tomato;
		padding: 5px;
		margin: 15px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
// 문서 객체 모델(DOM, Document Object Model) : xml이나 html 문서에 접근하기 위한 일종의 인터페이스 
// 부모, 자식, 자손, 형제
// parent() 메서드는 선택한 요소의 직접적인 상위 요소를 반환 
// parents() 메서드는 선택한 요소의 루트 요소까지 모든 상위 요소를 반환
// parentsUntil() 메서드는 선택한 요소와 선택한 상위 요소 사이를 반환
	$(document).ready(function(){	
		$("span").css("color", "pink");
//		$("span").parent().css({"color": "lavender", "border" : "2px solid lavender"});
//		$("span").parents().css({"color": "skyblue", "border" : "2px solid skyblue"});
		$("span").parentsUntil("div").css({"color": "lavender", "border" : "2px solid lavender"});
	});
</script>
</head>
<body>
	<div class="ancestors">
	  <div style="width:500px;">div (great-grandparent)
	    <ul>ul (grandparent)
	      <li>li (direct parent)
	        <span>span</span>
	      </li>
	    </ul>
	  </div>
	
	  <div style="width:500px;">div (grandparent)
	    <p>p (direct parent)
	      <span>span</span>
	    </p> 
	  </div>
	</div>
</body>
</html>