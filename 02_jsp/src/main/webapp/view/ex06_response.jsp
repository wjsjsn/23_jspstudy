<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 : response</title>
<script type="text/javascript">
	function send_go1() {
		location.href = "ex02_script.jsp";
	}
	
	function send_go2() {
		location.href = "ex05_result.jsp?name=둘리&age=24&gender=남&hobby=운동&hobby=게임";
	}
</script>
</head>
<body>
<%--
	response(응답) : 응답에 대한 정보를 가지고 있음
		- 헤더 정보 입력
		- 쿠키 정보 입력
		- 리다이렉트 : response.sendRedirect("이동할 주소")
		** 리다이렉트를 실행하면 request, response를 새로 만듦(즉, 파라미터값을 가지고 있지 않음)
		
================================================================================

	웹 페이지 이동
	1. a 태그를 통해서 웹 페이지 이동 
	- <a href="이동할 주소">텍스트</a>
	- 파라미터 값을 가지고 이동 : <a href="이동할 주소?name=value&name=value">텍스트</a>
	   
	2. 자바스크립트를 통해서 웹 페이지 이동
	- location.href = "이동할 주소";
    - location.href = "이동할 주소?name=value&name=value";	                                                           
	- history.go(숫자) : 웹 브라우저의 앞으로, 뒤로와 같은 효과

** 1과 2는 이벤트 처리를 해야만 웹 페이지가 이동(즉, 현재 페이지가 보임)	    

    3. 리다이렉트
    - response.sendRedirect("이동할 주소");
    - 기존의 request와 response는 사라짐
    - 새로운 request와 response가 만들어짐
    - 파라미터 정보도 사라짐
    - 주소창에는 최종 주소가 보임
    
    4. 포워드
    - request.getRequestDispacher("이동할 주소").forward(request, response);
    - 기존의 request와 response 정보를 유지
    - 파라미터 정보 사라지지 않음
    - 주소창에 최초 주소가 보임
    
** 3과 4는 이벤트 처리 없이 자동으로 웹 페이지가 이동(즉, 현재 페이지가 보이지 않음)                                                       
 --%>
 <p><a href="ex02_script.jsp">이동하기(파라미터 x)</a></p>
 <p><a href="ex05_result.jsp?name=둘리&age=24&gender=남&hobby=운동&hobby=게임">이동하기(파라미터 o)</a></p>
 <hr>
 
 <button onclick="send_go1()">이동하기(파라미터 x)</button>
 <button onclick="send_go2()">이동하기(파라미터 o)</button>
 
 <%-- 리다이렉트 --%>
 <%-- response.sendRedirect("ex02_script.jsp"); --%>
 <%-- 한글처리 안 됨? --%>
 <%-- response.sendRedirect("ex05_result.jsp?name=둘리&age=24&gender=남&hobby=운동&hobby=게임"); --%>
 
 <%-- 포워딩 --%>
 <%-- request.getRequestDispatcher("ex02_script.jsp").forward(request, response); --%>
 <% request.getRequestDispatcher("ex05_result.jsp?name=둘리&age=24&gender=남&hobby=운동&hobby=게임").forward(request, response); %>
</body>
</html>




















