package com.guestbook.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook.db.DAO;

public class DeleteOkCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		int res = DAO.getDelete(idx);
		
		return "GuestController?cmd=list";
	}
}
