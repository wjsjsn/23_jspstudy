<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go(f) {
		f.action="/02_jsp/FileUpController?cmd=fileup";
		f.submit();
	}
</script>
</head>
<body> 
	<%-- 
		1. http://www.servlets.com => 라이브러리 다운로드
		   WEB-INF 안 lib 폴더 안에 넣기
		2. 업로드 시 반드시 <form method="post" enctype="multipart/form-data"> 설정
		3. 이클립스로 실행해서 업로드 하면 실제 파일 위치는 가상 톰캣에 저장됨
		    실제 톰캣에 올리면 원하는 위치에 파일을 저장할 수 있음
		    
		    ** 만약 파라미터를 사용하려면 hidden을 사용할 수 없음
	 --%>
	 <form method="post" enctype="multipart/form-data">
	 	<p>올린 사람 : <input type="text" name="name"></p>
	 	<p>첨부 파일 : <input type="file" name="f_name"></p>
	 	<input type="button" value="업로드" onclick="send_go(this.form)">
	 	<!-- <input type="hidden" name="cmd" value="fileup"> -->
	 	</form>
</body>
</html>