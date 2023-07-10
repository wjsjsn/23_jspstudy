package com.guestbook2.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook2.db.DAO;

public class DeleteOkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		int res = DAO.getDelete(idx);
		if(res > 0) {
			return "GuestBook2?cmd=list";
		}else {
			return "guestbook2/error.jsp";
		}
	}
}
