package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ProductDao;
import com.javaex.vo.ProductVo;

@Service
public class ProductService {

	@Autowired
	private ProductDao proddao;
	
	public int prodWrite(ProductVo prodvo) {
		System.out.println("[service]상품등록");
		return proddao.prodInsert(prodvo);
	}
}
