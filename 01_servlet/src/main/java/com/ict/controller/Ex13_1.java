package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex13_1")
public class Ex13_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
	 
		// 일처리를 구별하기 위해 cmd 파라미터를 먼저 받아야함
		String cmd = request.getParameter("cmd");
		switch (cmd) {
		case "1":	
			// 오늘날짜 구하기
			Calendar now = Calendar.getInstance();
			int year = now.get(Calendar.YEAR);
			int month = now.get(Calendar.MONTH) + 1;
			int day = now.get(Calendar.DATE);
			
			out.println("<h2>오늘 날짜 구하기</h2>");
			out.println("<h2>" + year + ". " + month  + ". " + day + "</h2>");
			break;
		case "2":	
			// 오늘 운세 구하기
			int lucky = (int)(Math.random() * 100) + 1;
			
			out.println("<h2>오늘의 운세 구하기</h2>");
			out.println("<h2>오늘의 운세는 "+ lucky +"%입니다</h2>");
			break;
		case "3":	
			// 계산 결과 보기
			// 파라미터값 존재
			int su1 = Integer.parseInt(request.getParameter("s1"));
			int su2 = Integer.parseInt(request.getParameter("s2"));
			String op = request.getParameter("op");
			
			int res = 0;
			
			switch (op) {
			case "+": res = su1 + su2; break;
			case "-": res = su1 - su2; break;
			case "*": res = su1 * su2; break;
			case "/": res = su1 / su2; break;
			}
			
			out.println("<h2>계산 결과 보기</h2>");
			out.println("<h2>" + su1 + op + su2 + " = " + res + "</h2>");
			break;
		}
	}

}
