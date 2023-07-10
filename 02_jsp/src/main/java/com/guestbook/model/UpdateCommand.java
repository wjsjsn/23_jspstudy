package com.guestbook.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook.db.DAO;
import com.guestbook.db.VO;

public class UpdateCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
        // idx를 이용해서 DB 정보 가져오기
		String idx = request.getParameter("idx");
		
		// oneList할 때 사용한 메서드
		VO vo = DAO.getOneList(idx);		
		request.setAttribute("vo", vo);
		return "guestbook/update.jsp";
	}
}
