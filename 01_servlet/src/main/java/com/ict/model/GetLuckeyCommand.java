package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetLuckeyCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
        // 일처리
		int lucky = (int)(Math.random() * 100) + 1;
		
		// 화면에 보여줄 내용을 request.setAttribute를 이용해서 저장
		request.setAttribute("lucky", lucky);
        
		// 결과 보여줄 페이지 지정
		return "view/result02.jsp";
	}
}
