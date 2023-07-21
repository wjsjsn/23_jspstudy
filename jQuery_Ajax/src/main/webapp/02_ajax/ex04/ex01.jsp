<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		width: 600px;
		margin-top: 50px;
		border-collapse: collapse; 
	}
	
	table, th, td {
		border: 1px solid tomato;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		$("#btn").on("click", function() {
			// 클릭하면 계속 추가되는 현상을 방지하기 위해 초기화
			$("#out").empty();
			
			var table = "<table>";
			table += "<thead><tr><th>이름</th><th>가격</th></tr></thead>";
			table += "<tbody>";
			
			// .get() : jQuery에서 (xml, html, txt)를 가져오는 메서드
			// .getJSON() : jQuery에서 (json)를 가져오는 메서드
			$.get("data01.xml", function(data) {
			//	console.log(data);
			
			// 태그 찾는 방법 : js => getElementsByTagName("태그 이름");
			//             jQuery => find("태그 이름");
			
			
			// 반복문 : js => for문, forin문
			//        jQuery => each();
			
			// 받아온 data에서 product 태그 찾기
			// 여러 개이므로 반복문 실행
			$(data).find("product").each(function() {
				var name = $(this).find("name").text();
				var price = $(this).find("price").text();
					
					table += "<tr>";
					table += "<td>" + name +"</td>";
					table += "<td>" + price +"</td>";
					table += "</tr>";
				});
				table += "</tbody></table>";
				$("#out").append(table);
			});			
		});
	});
</script>
</head>
<body>
	<div id="btn">가져오기</div>
	<div id="out"></div>
</body>
</html>