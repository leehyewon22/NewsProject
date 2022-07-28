package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
		// 회원가입
			public int insertMember(Member vo) {
				int cnt = 0;

				try {
					// 실행
					// insert("실행할 sql 정의",받아올 data? (->여기서는 vo) )
					cnt = sqlSession.insert("com.smhrd.model.MemberDAO.insertMember", vo);

					if (cnt > 0) {
						sqlSession.commit();
						// insert, delete, update는 무조건 commit 갈겨야 함~
						// select는 commit 안해도 됨! data 자체에 변화가 없기ㄸ ㅐ 문 !
					} else {
						sqlSession.rollback();
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					sqlSession.close();
				}
				return cnt;
			}
			
			
		// 로그인
			public Member selectMember(Member vo) {
				Member loginMember = null;
				
				try {
					loginMember = sqlSession.selectOne("com.smhrd.model.MemberDAO.selectMember",vo);
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					sqlSession.close();
				}
				return loginMember;
			}
			
			
			
			
			
}
