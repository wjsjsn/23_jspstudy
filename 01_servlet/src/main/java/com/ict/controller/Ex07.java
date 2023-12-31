package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex07")
public class Ex07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청에 대한 한글 처리
		request.setCharacterEncoding("utf-8");
		
		// 응답에 대한 한글 처리
		response.setContentType("text/html; charset=utf-8");
		
		// 출력을 위해
		PrintWriter out = response.getWriter();
		
		try {
	    String su1 = request.getParameter("su1");	
	    String su2 = request.getParameter("su2");	
	    String op = request.getParameter("op");
	    
	    int k1 = Integer.parseInt(su1);
	    int k2 = Integer.parseInt(su2);
	    
	    int res = 0;
	    switch (op) {
		case "+": res = k1 + k2; break;
		case "-": res = k1 - k2; break;
		case "*": res = k1 * k2; break;
		case "/": res = k1 / k2; break;
		}
	    out.println("<h2>결과 : "+k1+op+k2+" = "+res+"</h2>");
		} catch(Exception e) {
			out.println("<h2>결과 : 0으로는 나눌 수 없습니다.</h2>");
		}
	}
}

























