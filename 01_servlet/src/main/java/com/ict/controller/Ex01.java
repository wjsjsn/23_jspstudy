package com.ict.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 서블릿 : 자바를 가지고 웹 페이지를 표현
//        즉, 자바에서 HTML,CSS,JavaScript 등을 표현해서 웹 페이지를 만듦
//        메인 메서드 x

// URLMapping : 인터넷에서 해당 페이지 접근 주소(/프로젝트/urlmapping)
@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	public Ex01() {
	 System.out.println("생성자");
    }
	
	public void init(ServletConfig config) throws ServletException {
        // 멤버필드 초기화
		// init()이 끝나면 자동으로 service()를 호출
		 System.out.println("init");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // request(요청) : 요청 정보를 가지고 있음
		// response(응답) : 응답 정보를 가지고 있음
		// 클라이언트가 정보를 요청할 때 요청 방식에 따라 알맞는 메서드를 호출
		
		// 요청 방식 
		// 1. get 방식(생략 가능) : http 패킷의 header에 정보를 담아서 보냄
		//                      주소창에 해당 정보가 보임
		//                      속도는 빠르나 전달하는 양이 적음
		//                      정보가 보이기 때문에 보안에 취약
		
		// 2.post 방식 : http 패킷의 body에 정보를 담아서 보냄
		//             주소창에 정보가 보이지 않음
		
		//             속도는 get방식보다 느리나 많은 양 전달 가능
		System.out.println("service");
		
		// doGet(), doPost()를 요청 방식에 맞게 호출
		if(request.getMethod().equalsIgnoreCase("get")) {
			doGet(request, response);
		}else if(request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
		}
	}

	// 실제 웹 페이지에 보이는 부분을 처리하는 것은 doGet() 또는 doPost()
	// doGet() 또는 doPost()에서 자바코드로 HTML, CSS, JavaScript를 작성하면
	// 웹 페이지가 클라이언트에게 보임
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       System.out.println("doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
	
	}
	
	// 해당 프로젝트가 톰캣에서 삭제되기 직전에 실행되는 메서드
	public void destroy() {
		System.out.println("destroy");
	}
}
