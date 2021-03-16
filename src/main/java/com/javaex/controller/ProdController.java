package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.ProductService;
import com.javaex.vo.ProductVo;

@Controller
@RequestMapping(value = "/mypage/prod")
public class ProdController {

	@Autowired
	private ProductService prodservice;

	// 상품관리페이지
	@RequestMapping(value = "", method = { RequestMethod.GET, RequestMethod.POST })
	public String prodList() {
		// 리스트 추후작업하기
		System.out.println("[cnt]상품관리페이지");
		return "mypage/mypage_prod/prod_manage";

	}

	// 상품등록페이지
	@RequestMapping(value = "/form", method = { RequestMethod.GET, RequestMethod.POST })
	public String prodForm() {
		System.out.println("[cnt]상품등록페이지");
		return "mypage/mypage_prod/prod_form";
	}

	// 상품등록
	@RequestMapping(value = "/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String prodWrite(@ModelAttribute ProductVo prodvo) {
		System.out.println("[cnt]상품등록");
		System.out.println(prodvo);

		prodservice.prodWrite(prodvo);
		return "mypage/mypage_prod/prod_manage";
	}
}
