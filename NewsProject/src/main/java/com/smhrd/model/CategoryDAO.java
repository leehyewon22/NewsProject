package com.smhrd.model;

import java.math.BigDecimal;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CategoryDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public String selectCateName(BigDecimal cat_seq) {
		String cate = null;
		try {
			cate = sqlSession.selectOne("com.smhrd.model.CategoryDAO.selectCateName", cat_seq);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}	
		return cate;
	}
}
