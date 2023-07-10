package com.guestbook2.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook2.db.DAO;
import com.guestbook2.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpdateOkCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		try {
			String path = request.getServletContext().getRealPath("upload");
			MultipartRequest mr = 
					new MultipartRequest(request, path, 100*1024*1024, "utf-8",
							new DefaultFileRenamePolicy());
			VO vo = new VO();
			vo.setIdx(mr.getParameter("idx"));
			vo.setSubject(mr.getParameter("subject"));
			vo.setEmail(mr.getParameter("email"));
			vo.setName(mr.getParameter("name"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			
			String old_f_name = mr.getParameter("old_f_name");
			
			// 첨부파일이 없으면 이전 파일로 대체함
			if(mr.getFile("f_name") == null) {
				vo.setF_name(old_f_name);
			}else {
				// 파일을 선택했을 때
				vo.setF_name(mr.getFilesystemName("f_name"));
			}
			int res = DAO.getUpdate(vo);
			if(res > 0) {
				return "GuestBook2?cmd=onelist&idx="+vo.getIdx();
			}else {
				return "guestbook2/error.jsp";
			}
		} catch (Exception e) {
			return "guestbook2/error.jsp";
		}
	}
}
