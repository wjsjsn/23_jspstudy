package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class DeleteOkCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		
		// foreign키 해결 방법
		// 방법 1) 원글에 속한 댓글 삭제 
		int res = DAO.getCommentDeleteAll(b_idx);
		
		// 방법 2) error 페이지로 이동(숙제)
		
		// 방법 3) 삭제된 게시글입니다. 로 변경시키기(컬럼 추가)
		
		// 원글 삭제
		int result = DAO.getDelete(b_idx);
		return "MyController?cmd=list&cPage=" + cPage;
	}
}
