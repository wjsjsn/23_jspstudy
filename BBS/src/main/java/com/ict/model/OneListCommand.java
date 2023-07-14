package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;

public class OneListCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		
		// 조회수 업데이트
		int rusult = DAO.getHit(b_idx);
		
		// 상세보기 가져오기
		BVO bvo = DAO.getOneList(b_idx);
		
		// 해당 원글에 대한 댓글 가져오기(나중에 할거임)
		List<CVO> c_list = DAO.getCList(b_idx);
		request.setAttribute("c_list", c_list);
		request.setAttribute("cPage", cPage);
		request.setAttribute("bvo", bvo);
		return "view/onelist.jsp";
	}
}
