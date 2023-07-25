package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;

public class DeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		
		BVO bvo = DAO.getOneList(b_idx);
		if(bvo != null) {
			request.setAttribute("bvo", bvo);
			request.setAttribute("cPage", cPage);
			return "view/delete.jsp";
		}else {
			return "MyController?cmd=onelist&b_idx="+b_idx+"&cPage="+cPage;
		}
	}
}