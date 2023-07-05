package com.jsp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.model.Command;
import com.jsp.model.Ex07_Model;

@WebServlet("/MyController01")
public class MyController01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("texxt/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Command comm = new Ex07_Model();
		// 일처리 하기 위해서 자바로 이동 후 결과 보여줄 페이지 받기
		String path = comm.exec(request, response);
		
		// 결과를 보기 위해서 포워딩하기
		request.getRequestDispatcher(path).forward(request, response);
		
        
	}
}



















