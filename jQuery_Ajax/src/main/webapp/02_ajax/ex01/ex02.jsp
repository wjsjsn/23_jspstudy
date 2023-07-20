<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		
	<%-- 
	XMLHttpRequest 객체는 브라우저의 버전이 낮으면 가지고 있지 않는다.
	그러나 XMLHttpRequest 객체와 비슷한 기능을 가진 객체가 존재한다.
	(ActiveXObject)
	 --%>
	function createRequest() {
		var req;
		try {
			req = new XMLHttpRequest();
		}
		catch(e) {
			try {
				req = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				req = new ActiveXObject("Msxml3.XMLHTTP");
			}
		}
		return req;
	};
	
		//1. 객체 생성
		var request = createRequest();

		//2. open("전송방식", "경로", "비동기 여부")
		request.open("POST", "data.html", false);

		//3. send() : 실행
		request.send();

		//4. 화면에 출력 : innerHTML, append
// 		document.body.append(request.responseText);
		document.body.innerHTML += request.responseText;
	</script>
</body>
</html>