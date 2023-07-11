package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB 처리하는 메서드들을 가지고 있는 클래스
public class DAO {
// 실제 사용하는 클래스 : SqlSession
	private static SqlSession ss;

	// 싱글턴 패턴(동기화 처리) : 프로그램이 종료될 때까지 한 번 만들어진 객체를 재사용
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}

	// DB 처리하는 메서드들
	// 리스트
	public static List<BVO> getList(){
		List<BVO> list = getSession().selectList("bbs.list");
		return list;
	}
}
