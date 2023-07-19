package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CartVO;
import com.ict.db.DAO;

public class EditCountCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String p_su = request.getParameter("p_su");
		String p_num = request.getParameter("p_num");
		String m_id = request.getParameter("m_id");
		
		CartVO cvo = new CartVO();
		cvo.setP_su(p_su);
		cvo.setP_num(p_num);
		cvo.setM_id(m_id);
		
		// 카트 안의 물건 수 업데이트
		int result = DAO.getCartCountUpdate(cvo);
				
		return "MyController?cmd=showcart";
	}
}
