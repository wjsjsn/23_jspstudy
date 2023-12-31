<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
 스크립트 요소 : HTML 안에서 실제 자바 코드를 사용할 수 있도록 만드는 요소
              1) 선언부 : <%! 내용 %>, 변수 선언이나 메서드 선언할 때 사용
              2) 스크립트릿 : <% 자바코드 %>, 자바 코드를 코딩할 때 사용
              3) 표현식 : <%=  %>, 변수값이나 메서드의 결과(return 값) 등 저장돼 있는 결과값 출력
              ** 현재는 표현식 대신 표현 언어(EL과 JSTL 사용)
              
              ** 주의사항 : 선언부, 스크립트릿, 표현식을 포함해서(겹쳐서) 사용할 수 없음
--%>
	<h2>0~10까지 자바의 for문을 사용해서 출력</h2>
	<h3>
		<%
		for (int i = 0; i < 11; i++) {
		%>
		<%=i%>
		<%
		}
		%>
	</h3>
	<hr>
	<h2>0~10까지 자바의 for문을 사용해서 출력</h2>
	<h3>
		<%
		for (int i = 0; i < 11; i++) {
			// jsp의 화면에 출력하는 내장 객체 out이 있음
			out.println(i);
		}
		%>
	</h3>
	<hr>
	<h2>0~10까지 합을 자바의 for문을 사용해서 출력</h2>
	<%
	int sum = 0;
	for (int i = 0; i < 11; i++) {
		sum = sum + i;
	}
	out.println("<h3>첫번째 방법 : " + sum + "</h3>");
	%>
	<hr>
	<h2>0~10까지 합을 자바의 for문을 사용해서 출력</h2>
	<%
	// 스크립트립에서도 변수 선언할 수 있음
	int sum2 = 0;
	for (int i = 0; i < 11; i++) {
		sum2 = sum2 + i;
	}
	%>
	<h3>
		두 번째 방법 :
		<%=sum2%></h3>
	<%-- 나중에는 사용할 수 있음 --%>
	<h3>세 번째 방법 : ${sum2}</h3>
	<hr>
	<h2>0~10까지 합을 자바의 for문을 사용해서 출력</h2>
	<%-- 선언부에서는 변수 선언과 메서드 선언을 할 수 있음 --%>
	<%!int sum3 = 0;%>
	<%
	for (int i = 0; i < 11; i++) {
		sum3 = sum3 + i;
	}
	out.println("<h3>네번째 방법 : " + sum3 + "</h3>");
	%>
	<h3>
		다섯 번째 방법 :
		<%=sum2%></h3>

	<%-- 나중에는 사용할 수 있음 --%>
	<h3>여섯 번째 방법 : ${sum2}</h3>
	<hr>
	<h2>변수와 메서드를 만들어서 사용하기(선언부 사용하기)</h2>
	<%!public int add(int s1, int s2) {
	return s1 + s2;
}

int result = 0;

public void sub(int s1, int s2) {
	result = s1 - s2;
}%>
	<h3>
		7 + 5 =
		<%=add(7, 5)%></h3>
	<%
	sub(7, 5);
	%>
	<h3>
		7 - 5 =
		<%=result%></h3>
	<h3>
		7 - 5 =
		<%
	out.println(result);
	%>
	</h3>

	<%-- 나중에는 사용할 수 있음 --%>
	<h3>7 - 5 = ${result}</h3>
	<hr>
	<h2>오늘 날짜와 운수를 출력</h2>
	<h3>오늘의 날짜</h3>
	<%
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH) +  1;
	int day = now.get(Calendar.DATE);
	
	int res = (int)(Math.random()*100) + 1;
	out.println("<h4>" + year + "." + month + "." + day + " 운세는 " + res + "%입니다.</h4>");
	%>
	
	<h2>5단 출력</h2>
    <%
    for(int i = 1; i < 10; i++){
    	out.println("<h4>" + "5 * " + i + " = " + (i * 5) + "<br></h4>");
    }
    %>

</body>
</html>


















