package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.SparringService;
import com.javaex.vo.ProfileVo;

@Controller
@RequestMapping(value="/sparring" , method= {RequestMethod.GET , RequestMethod.POST})
public class SparringController {
	
	@Autowired
	SparringService sparringService;
	
	//스파링 리스트
	@RequestMapping(value="/bbuyList" , method= {RequestMethod.GET , RequestMethod.POST})
	public String sparringList() {
		System.out.println("[Controller] : sparringList()");
		return "matching/sparringList";
	}
	
	//스파링매치신청서
	@RequestMapping(value="/bbuyMatch" , method= {RequestMethod.GET , RequestMethod.POST})
	public String sparringMatch(@RequestParam("bookingNo")int bookingNo) {
		System.out.println("[Controller] : sparringMatch()");
		System.out.println("bookingNo = "+ bookingNo);
		return "matching/sparringMatch";
	}
	
	
	//대관 x 매칭신청만 할경우 입력폼
	@RequestMapping(value="/writeForm" , method= {RequestMethod.GET , RequestMethod.POST})
	public String profileWriteForm() {
		System.out.println("[Controller] : profileWriteForm()");
		
		
		return "matching/matchinfoForm";
	}
	
	
	/*
	 
	  1. 프로필 테이블의 userNo는 세션값으로 받고

	  2. 만들어진 프로필테이블의 profileNo를 select 문으로 받아온뒤에

	  3. 주종목 테이블, 공식기록 테이블에 뿌려준다
	  
     */
	@RequestMapping(value="/write" , method= {RequestMethod.GET , RequestMethod.POST})
	public String profileWrite(@ModelAttribute ProfileVo profileVo) {
		System.out.println("[Controller] : profileWrite");
		System.out.println("profileVo");

		sparringService.profileWrite(profileVo);
		return "";
	}
}
