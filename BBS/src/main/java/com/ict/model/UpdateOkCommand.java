package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpdateOkCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		try {
			String path = request.getServletContext().getRealPath("upload");
			MultipartRequest mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			BVO bvo = new BVO();
			bvo.setB_idx(mr.getParameter("b_idx"));
			bvo.setSubject(mr.getParameter("subject"));
			bvo.setWriter(mr.getParameter("writer"));
			bvo.setContent(mr.getParameter("content"));

			String old_f_name = mr.getParameter("old_f_name");
			
			// 첨부파일이 없으면 이전 파일로 대체
			if(mr.getFile("f_name") == null) {
				bvo.setF_name(old_f_name);
			}else {
				bvo.setF_name(mr.getFilesystemName("f_name"));
			}
			int result = DAO.getUpdate(bvo);
			return "MyController?cmd=onelist&b_idx=" + bvo.getB_idx();
		} catch (Exception e) {
		}
		return null;
	}
}
