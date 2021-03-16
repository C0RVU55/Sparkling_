package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ProductVo;

@Repository
public class ProductDao {

	@Autowired
	private SqlSession sqlSession;
	
	//상품등록
	public int prodInsert(ProductVo prodvo) {
		System.out.println("[Dao]상품등록");
		int count = sqlSession.insert("prod.insert", prodvo);
		return count;
	}
}
