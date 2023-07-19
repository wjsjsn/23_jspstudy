package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	// 로그인
	public static MemberVO getLogIn(MemberVO mvo) {
		MemberVO m_vo = getSession().selectOne("shop.login", mvo);
		return m_vo;
	}
	
	// 리스트
	public static List<ShopVO> getList(String category){
		List<ShopVO> list = getSession().selectList("shop.list", category);
		return list;
	}
	
	// 상세정보
	public static ShopVO getOneList(String idx){
		ShopVO vo = getSession().selectOne("shop.onelist", idx);
		return vo;
	}
	
	// 카트 리스트 구하기
	public static CartVO getCartList(String m_id, String p_num) {
		Map<String, String> map = new HashMap<>();
		map.put("m_id", m_id);
		map.put("p_num", p_num);
		CartVO cvo = getSession().selectOne("shop.cartlist", map);
		return cvo;
	}
	
	// 카트에 제품 삽입
	public static int getCartInsert(CartVO c_vo) {
		int result = getSession().insert("shop.cartinsert", c_vo);
		ss.commit();
		return result;
	}
	
	// 카트 제품 업데이트(1 증가)
public static int getCartUpdate(CartVO cvo) {
		int result = getSession().update("shop.cartupdate", cvo);
		ss.commit();
		return result;
	}

	// 카트 리스트
	public static List<CartVO> getAllCartList(String m_id){
		List<CartVO> cartlist = getSession().selectList("shop.cartalllist", m_id);
		return cartlist;
	}
	
	// 카트 업데이트
	public static int getCartCountUpdate(CartVO cvo) {
		int result = getSession().update("shop.cartup", cvo);
		ss.commit();
		return result;
	}
	
	// 카트 삭제
	public static int getCartDel(String idx) {
		int result = getSession().delete("shop.cartdel", idx);
		ss.commit();
		return result;
	}
	
	// 상품 추가
	public static int getProductInsert(ShopVO vo) {
		int result = getSession().insert("shop.productadd", vo);
		ss.commit();
		return result;
	}
}
