package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class MyModel09 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ajax에서 넘어온 파라미터값 받기
		String m_idx = request.getParameter("m_idx");
	//	System.out.println("m_idx : " + m_idx);

		// 삭제
		int result = DAO.getDelete(m_idx);

		return String.valueOf(result);
	}
}
