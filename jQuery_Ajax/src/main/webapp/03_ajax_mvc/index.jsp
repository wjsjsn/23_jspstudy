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
		border: 1px solid gray;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		$("#btn1").on("click", function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController",
				method : "get",
				dataType : "xml",
				success : function(data) {
					var tbody = "";
					
					$(data).find("member").each(function() {
						var idx = $(this).find("idx").text();
						var m_id = $(this).find("m_id").text();
						var m_pw = $(this).find("m_pw").text();
						var m_addr = $(this).find("m_addr").text();
						var m_reg = $(this).find("m_reg").text();
						tbody += "<tr>";
						tbody += "<td>" + idx + "</td><td>" + m_id + "</td><td>" + m_pw + "</td><td>" + m_addr + "</td><td>" + m_reg + "</td>";
						tbody += "</tr>";
					});
					$("#tbody").append(tbody);
				},
				error : function() {
					alert("가져오기 실패");
				}
			});
		});
		
		$("#btn2").on("click", function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController2",
				method : "get",
				dataType : "xml",
				success : function(data) {
					$("#tb").css("background", "snow");
					console.log(data);
					var tbody = "";
					
					$(data).find("member").each(function() {
						var idx = $(this).attr("idx");
						var m_id = $(this).attr("m_id");
						var m_pw = $(this).attr("m_pw");
						var m_addr = $(this).attr("m_addr");
						var m_reg = $(this).attr("m_reg");
						
						tbody += "<tr>";
						tbody += "<td>" + idx + "</td><td>" + m_id + "</td><td>" + m_pw + "</td><td>" + m_addr + "</td><td>" + m_reg + "</td>";
						tbody += "</tr>";						
					});
					$("#tbody").append(tbody);
				},
				error : function() {
					alert("가져오기 실패");
				}
			});
		});
		
		$("#btn3").on("click", function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController3",
				method : "get",
				dataType : "xml",
				success : function(data) {
					$("#tb").css("background", "lightyellow");
					console.log(data);
					var tbody = "";
					
					$(data).find("member").each(function() {
						var idx = $(this).attr("idx");
						var m_id = $(this).attr("m_id");
						var m_pw = $(this).attr("m_pw");
						var m_addr = $(this).text();
						var m_reg = $(this).attr("m_reg");
						
						tbody += "<tr>";
						tbody += "<td>" + idx + "</td><td>" + m_id + "</td><td>" + m_pw + "</td><td>" + m_addr + "</td><td>" + m_reg + "</td>";
						tbody += "</tr>";						
					});
					$("#tbody").append(tbody);
				},
				error : function() {
					alert("가져오기 실패");
				}
			});
		});
		
		$("#btn4").on("click", function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController4",
				method : "get",
				dataType : "json",
				success : function(data) {
					$("#tb").css("background", "lavender");
					console.log(data);
					var tbody = "";
					$.each(data, function() {
						
					tbody += "<tr><td>" +  this["idx"] + "</td><td>" + this["m_id"] + "</td><td>" + 
					this["m_pw"] + "</td><td>" + this["m_addr"] + "</td><td>" + this["m_reg"] + "</td></tr>";
					});
					$("#tbody").append(tbody);
				},
				error : function() {
					alert("가져오기 실패");
				}
			});
		});
		
		$("#btn5").on("click", function() {
			$("#tbody").empty();
			$.ajax({
				url : "/MyController5",
				method : "get",
				dataType : "text",
				success : function(data) {
					$("#tb").css("background", "pink");
					console.log(data);
					var tbody = "";
					var rows = data.split("/");
					
					for ( var k in rows) {
					tbody += "<tr>";
						var cols = rows[k].split(",");
						for ( var k2 in cols) {
							tbody += "<td>" + cols[k2] + " </td>";
						}
					tbody += "</tr>";
					}
					
					$("#tbody").append(tbody);
				},
				error : function() {
					alert("가져오기 실패");
				}
			});
		});
	});
</script>
</head>
<body>
	<div>
		<button id="btn1">xml 태그 가져오기</button>
		<button id="btn2">xml 태그 가져오기</button>
		<button id="btn3">xml 태그 가져오기</button>
		<button id="btn4">json 태그 가져오기</button>
		<button id="btn5">text 태그 가져오기</button>
	</div>
	<br><br><br>
	<hr>
	<br><br><br>
	<table id="tb">
		<thead>
			<tr>
				<th>번호</th><th>아이디</th><th>패스워드</th><th>주소</th><th>날짜</th>
			</tr>
		</thead>
		<tbody id="tbody">
			
		</tbody>
	</table>
</body>
</html>