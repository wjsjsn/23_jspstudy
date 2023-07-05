package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex11_2")
public class Ex11_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		// 페이지 이동(포워딩, 리다이렉트)
		// : JSP에도 존재하고 사용하는 기능
		//   현재 페이지에서 작업 후 다른 페이지로 이동(현재 페이지 안보임)
		
		// 포워딩 : 포워딩을 만나면 클라이언트에게 응답하지 않고
		//        request와 response를 가지고 다른 페이지로 이동
		//        즉, 파라미터값을 가지고 감
		//        주소창에는 최초 주소가 보임
		// 사용법 : request.getRequestDispatcher("이동할 주소").forward(request, response);
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
	    out.println("<h2>Ex11_2</h2>");
		out.println("<h3><ul>");
		out.println("<li>이름 : " + name + "</li>");
		out.println("<li>나이 : " + age + "</li>");
		out.println("<li>주소 : " + request.getAttribute("addr") + "</li>");
		out.println("</ul></h3>");
	}
}
