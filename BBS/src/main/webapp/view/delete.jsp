<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bbs table {
	width: 580px;
	margin: 0 auto;
	margin-top: 20px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th {
	text-align: center;
	border: 1px solid black;
	background-color: lavender;
	padding: 4px 10px;
}

#bbs table td {
	text-align: left;
	border: 1px solid black;
	padding: 4px 10px;
}

.no {
	width: 15%
}

.subject {
	width: 30%
}

.writer {
	width: 20%
}

.reg {
	width: 20%
}

.hit {
	width: 15%
}

.title {
	background: lavender
}

.odd {
	background: silver
}
</style>
<script type="text/javascript">
	function delete_ok(f) {
		var pwd = "${bvo.pwd}";
		if (f.pwd.value == pwd) {
			var chk = confirm("정말 삭제할까요?");
			if (chk) {
				f.action = "/MyController?cmd=delete_ok";
				f.submit();
			} else {
				history.go(-1);
			}
		} else {
			alert("비밀번호가 틀립니다.");
			f.pwd.value = "";
			f.pwd.focus();
			return;
		}
	}

	function list_go(f) {
		f.action = "/MyController?cmd=list";
		f.submit();
	}
</script>
</head>
<body>
	<div id="bbs">
		<form method="post" encType="multipart/form-data">
			<table summary="게시판 삭제하기">
				<caption>게시판 삭제</caption>
				<tbody>
					<tr>
						<th style="width: 15%; background-color: lavender" class="title">비밀번호
							확인</th>
						<td><input type="password" name="pwd" size="12" /></td>
					</tr>
					<tr>
				<td colspan="2"><input type="hidden" name="b_idx"
							value="${bvo.b_idx}">
						<input style="background-color: lightyellow"
							type="button" value="삭제" onclick="delete_ok(this.form)">
							<input style="background-color: lightyellow" type="button"
							value="목록" onclick="list_go(this.form)"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>

