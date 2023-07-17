package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CartVO;
import com.ict.db.DAO;
import com.ict.db.MemberVO;
import com.ict.db.ShopVO;

public class AddCartCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		
		// 해당 제품을 산 id 구하기(로그인 성공 시 m_vo를 세션에 담음)
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("m_vo");
		String m_id = mvo.getM_id();
		
		// idx를 이용해서 제품을 가져와서 제품 번호 구하기
		ShopVO vo = DAO.getOneList(idx);
		String p_num = vo.getP_num();
	
		// 해당 id를 가진 사람의 카트 정보 가져오기
		CartVO cvo = DAO.getCartList(m_id, p_num);
		
		// 카트에 제품이 없을 때(카트에 추가)
		if(cvo == null) {
			// 제품 삽입
			CartVO c_vo = new CartVO();
			c_vo.setP_num(vo.getP_num());
			c_vo.setP_price(String.valueOf(vo.getP_price()));
			c_vo.setP_name(vo.getP_name());
			c_vo.setM_id(m_id);
			
			int result = DAO.getCartInsert(c_vo);
		}else {
			// 카트에 제품이 있을 때 제품 개수를 1 증가(업데이트)
			int result = DAO.getCartUpdate(cvo);
		}
		return "MyController?cmd=content&idx=" + idx;
	}
}
