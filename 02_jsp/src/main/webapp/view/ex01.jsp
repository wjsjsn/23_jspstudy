<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 설명</title>
</head>
<body>
	<!-- html 주석 : 소스 보기에서 보임 -->
	<%-- jsp 주석 : 소스 보기에서 보이지 x --%>
	<%-- 
JSP : Java Server Page
      HTML 안에서 자바 코드를 사용할 수 있도록 만든 스크립트 언어(행 단위 번역 실행)
      
JSP 구성
1. 지시어(디렉티브) : <%@ 지시어 %>
                 => <@ page %>, <@ include %>,<@ taglib %>
                 
2. 스크립트 요소 : HTML 안에서 실제 자바 코드를 사용할 수 있도록 만드는 요소
              1) 선언부 : <%! 내용 %>, 변수 선언이나 메서드 선언할 때 사용
              2) 스크립트릿 : <% 자바코드 %>, 자바 코드를 코딩할 때 사용
              3) 표현식 : <%=  %>, 변수값이나 메서드의 결과 등 저장돼 있는 결과값 출력
              ** 현재는 표현식 대신 표현 언어(EL과 JSTL 사용)
               
              ** 주의사항 : 선언부, 스크립트릿, 표현식을 포함해서(겹쳐서) 사용할 수 없음
              
              1. 지시어 : <@ page %>, <@ include %>,<@ taglib %>
                            1) page 지시어 : 보통 해당 문서의 맨 앞에 나옴
                                                    현재 해당 페이지에 대한 정보 제공
                                                    톰캣이 해당 page 지시어를 보고 해당 페이지를 어떻게 해석하고
                                                    실행하는지를 판단(보통은 그대로 사용)
                              * page 지시어 속성 
                                - language : 스크립트 코드에서 사용하는 언어 지정(java)
                                - ** contentType : 해당 문서 타입과 문자셋 지정(캐릭터 인코딩)
                                                        -- 인코딩(부호화, 암호화) : 정보의 형태를 변환
                                                        -- 디코딩(복호화) : 변환된 정보를 원래 형태로 되돌리는 것
                                - pageEncoding : 해당 페이지를 utf-8 형태로 변환해서 처리하겠다는 뜻
                                - session : 세션(저장 공간) 사용 여부(기본 : true) 
                                - buffer(임시 기억) : 출력에 사용되는 임시 저장 공간(기본 : 8kb)
                                - autoFlush : 출력 버퍼가 다 차지 않아도 바로 출력 시켜줌(기본 : true)
                                - errorPage : 해당 페이지가 에러를 발생했을 때 처리하는 오류 페이지를 지정
                                - isErrorPage : 해당 페이지가 오류를 처리할 수 있는 페이지이면 true,
                                                      아니면 false(기본 : false)
                                                      
                           2) taglib 지시어 : 해당 페이지에서 사용할 태그 라이브러리 지정
                                                     JSTL을 사용할 때 필요함
                                                     
                           3) include 지시어 : HTML에 iframe과 비슷
                                                     현재 페이지에서 특정 영역의 다른 페이지를 포함시킬 때 사용     
                                           ** include는 지시어를 사용하는 방법과, include Action Tag를 사용하는 방법 2가지                     
 --%>
</body>
</html>


















