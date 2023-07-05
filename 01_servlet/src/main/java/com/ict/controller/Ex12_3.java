package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex12_3")
public class Ex12_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		// 계산 결과 보기
		// 파라미터값 존재
		int su1 = Integer.parseInt(request.getParameter("s1"));
		int su2 = Integer.parseInt(request.getParameter("s2"));
		String op = request.getParameter("op");
		
		int res = 0;
		
		switch (op) {
		case "+": res = su1 + su2;break;
		case "-": res = su1 - su2;break;
		case "*": res = su1 * su2;break;
		case "/": res = su1 / su2;break;
		}
		
		out.println("<h2>Ex12_3 페이지(계산 결과 보기)</h2>");
		out.println("<h2>" + su1 + op + su2 + " = " + res + "</h2>");
	}

}
