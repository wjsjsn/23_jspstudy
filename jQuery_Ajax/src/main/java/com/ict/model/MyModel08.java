package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class MyModel08 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	// db 가서 members테이블의 전체 정보 가져오기
		List<MVO> list = DAO.membersList();
	//	System.out.println(list.get(0).getM_name());

		//xml, json, text로 만들어서 controller로 넘어가기
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<members>");
		for (MVO k : list) {
			sb.append("<member>");
			sb.append("<m_idx>" + k.getM_idx() +"</m_idx>");
			sb.append("<m_id>" + k.getM_id() +"</m_id>");
			sb.append("<m_pw>" + k.getM_pw() +"</m_pw>");
			sb.append("<m_name>" + k.getM_name() +"</m_name>");
			sb.append("<m_age>" + k.getM_age() +"</m_age>");
			sb.append("<m_reg>" + k.getM_reg().substring(0, 10) +"</m_reg>");
			sb.append("</member>");
		}
		sb.append("</members>");
		return sb.toString();
	}
}
