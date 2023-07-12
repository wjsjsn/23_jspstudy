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
	
	// 원글 삽입
	public static int getInsert(BVO bvo) {
		int result = getSession().insert("bbs.insert", bvo);
		ss.commit();
		return result;
	}
	
	// 원글 조회수
	public static int getHit(String b_idx) {
		int result = getSession().update("bbs.hit", b_idx);
		ss.commit();
		return result;
	}
	
	// 원글 상세보기
	public static BVO getOneList(String b_idx) {
		BVO bvo = getSession().selectOne("bbs.onelist", b_idx);
		return bvo;
	}
	
	// 원글 수정
	public static int getUpdate(BVO bvo) {
		int result = getSession().update("bbs.update", bvo);
		ss.commit();
		return result;
	}
	
	// 원글 삭제
	public static int getDelete(String b_idx) {
		int result = getSession().delete("bbs.delete", b_idx);
		ss.commit();
		return result;
	}
}
