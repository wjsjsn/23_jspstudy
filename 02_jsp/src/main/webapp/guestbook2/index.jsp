<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방 명 록</title>
<script type="text/javascript">
	/* function list_go() {
		location.href="/02_jsp/GuestController?cmd=list";
	} */
</script>
</head>
<body> 

<!-- <button onclick	="list_go()">리스트</button> -->

	<jsp:forward page="/GuestBook2">
		<jsp:param value="list" name="cmd" />
	</jsp:forward>
</body>
</html>