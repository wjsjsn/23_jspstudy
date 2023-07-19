<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- jQuery 라이브러리 다운로드 후 js 폴더 만들고 넣기 --%>
<!-- <script type="text/javascript" src="../js/jquery-3.7.0.js"></script> -->

<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script type="text/javascript">
	document.write("Hi")
</script>
<script type="text/javascript">
$(document).ready(function(){
//	document.write("Hello, jQuery");
	$("#k").text("<h2>jQuery 넣기<h2>"); 
	$(".k2").html("jQuery 넣기"); 
});
</script>
</head>
<body>
	<%--
	- 실행 순서 : head => body => jQuery
	
	-  기본 문법
		$(document).ready(function(){
			기본 구문 :  $(selector).action()
		});
		
		또는
		
		$(function(){
			기본 구문 :  $(selector).action()	
		});
		
		** selector : 
			                 $(this).action : 현재 요소
			                 $("p").action : p 요소(Element, 태그)
			                 $(".test").action : class가 test인 요소
			                 $("#test").action : id가 test인 요소
							 등등
	 --%>
	 
	 <h2>Hello</h2>
	 <h2 id="k"></h2>
	 <h2 class="k2"></h2>
</body>
</html>