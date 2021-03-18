package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/store")
public class StoreController {
	
	//스토어 상품 리스트
	@RequestMapping(value="/list")
	public String list() {
		System.out.println("[StoreController] list()");
		
		return "store/storeList";
	}
	
	//스토어 상품 상세페이지 (read?키=값)
	@RequestMapping(value="/read")
	public String read() {
		System.out.println("[Controller] read()");
		
		return "store/storeProducts";
	}
	
	//스토어 결제 페이지(jsp수정필요)
	@RequestMapping(value="/stopay")
	public String stopay() {
		System.out.println("[Controller] stopay()");
		
		return "store/storePayment";
	}

}
