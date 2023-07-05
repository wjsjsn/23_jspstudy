<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장 객체</title>
</head>
<body>
<%-- 
	JSP 내장 객체 : JSP에서 사용할 수 있도록 지원하는 오브젝트
    * request, response, out, exception, page, pageContext, session, application, config
    
    1. out : 화면(브라우저)에 출력할 때 사용하는 객체
               out.print(내용), out.println(내용)
               ** 태그 사용도 가능
 --%>
 <h2>Hello JSP!!</h2>
 <% out.print("<h2>Hello JSP @@</h2>"); %>
 
 <%! String str = "<h2>Hello JSP &&</h2>"; %>
 <%=str %>
</body>
</html>